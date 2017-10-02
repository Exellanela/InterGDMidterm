using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PlayerMove : MonoBehaviour {

	private MouseMove mouseScript;

	Vector3 inputVector;
	Rigidbody RB;

	public Canvas mapCanvas;
	bool mapActive;

	float moveSpeed;
	float gravityStrength = 0.1f;

	public bool holdingItem;
	public Text heldItemText;

	//FIX THIS LATER MAYBE HOPEFULLY SO THAT ITS NOT ONE FOR EVERY ITEM CUZ THAT SUCKS
	public bool orange;
	public bool green;
	public bool grey;


	void Start() {
		RB = GetComponent<Rigidbody> ();
		mouseScript = FindObjectOfType<MouseMove> ();
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

		if (!orange && !green && !grey) { heldItemText.text = " "; }
		if (orange) { heldItemText.text = "Orange"; }
		if (green) { heldItemText.text = "Green"; }
		if (grey) { heldItemText.text = "Grey"; }

		//MAP----------------------------------------------------------------------------------------------
		if (Input.GetKeyUp(KeyCode.Q)) {
			mapActive = !mapActive;
		}

		if (mapActive) {
			mapCanvas.enabled = true;
			moveSpeed = 0f;
			Cursor.visible = true;
			Cursor.lockState = CursorLockMode.None;
			mouseScript.enabled = false;
		} else {
			mapCanvas.enabled = false;
			moveSpeed = 5f;
			Cursor.visible = false;
			Cursor.lockState = CursorLockMode.Locked;
			mouseScript.enabled = true;
		}
	}

	void FixedUpdate() {
		if (inputVector.magnitude > 0.01f) {
			RB.velocity = inputVector * moveSpeed + Physics.gravity * gravityStrength; 
		}
	}
}
