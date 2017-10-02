using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerMove : MonoBehaviour {

	Vector3 inputVector;
	Rigidbody RB;

	public float moveSpeed;
	public float gravityStrength;

	public bool holdingItem;

	//FIX THIS LATER MAYBE HOPEFULLY SO THAT ITS NOT ONE FOR EVERY ITEM CUZ THAT SUCKS
	public bool orange;
	public bool green;
	public bool grey;


	void Start() {
		RB = GetComponent<Rigidbody> ();
	}

	void Update() {
		float horizontal = Input.GetAxis ("Horizontal");
		float vertical = Input.GetAxis ("Vertical");

		inputVector = transform.right * horizontal + transform.forward * vertical;

		if (inputVector.magnitude > 1) {
			inputVector = Vector3.Normalize(inputVector);
		}

		//ITEMS-----------------------------------------------------------------------------------------------
		if (orange || green || grey) {
			holdingItem = true;
		} else {
			holdingItem = false;
		}

		if (Input.GetMouseButtonUp(1)) {
			orange = false;
			green = false;
			grey = false;
		}
	}

	void FixedUpdate() {
		if (inputVector.magnitude > 0.01f) {
			RB.velocity = inputVector * moveSpeed + Physics.gravity * gravityStrength; 
		}
	}
}
