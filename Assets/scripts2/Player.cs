using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Player : MonoBehaviour {

	Vector3 inputVector;
	Rigidbody RB;

	public float moveSpeed;
	float gravityStrength = 0.1f;


	void Start() {
		RB = GetComponent<Rigidbody> ();
	}

	void Update() {
		//MOVEMENT--------------------------------------------------------------------------------------
		float horizontal = Input.GetAxis ("Horizontal");
		float vertical = Input.GetAxis ("Vertical");

		inputVector = transform.right * horizontal + transform.forward * vertical;

		if (inputVector.magnitude > 1) {
			inputVector = Vector3.Normalize(inputVector);
		}
	}

	void FixedUpdate() {
		if (inputVector.magnitude > 0.01f) {
			RB.velocity = inputVector * moveSpeed + Physics.gravity * gravityStrength; 
		}
	}
}
