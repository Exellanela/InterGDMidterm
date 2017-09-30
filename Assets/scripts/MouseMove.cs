using System.Collections;
using System.Collections.Generic;
using UnityEngine;

//actually mouselook but w.e
public class MouseMove : MonoBehaviour {

	float mouseSensitivity = 100f;
	float verticalLook = 0f;


	void Update() {
		float mouseX = Input.GetAxis ("Mouse X"); //horizontal mouse velocity
		float mouseY = Input.GetAxis ("Mouse Y"); //vertical mouse velocity

		verticalLook -= mouseY * Time.deltaTime * mouseSensitivity;
		verticalLook = Mathf.Clamp (verticalLook, -50, 75);

		transform.parent.Rotate(0f, mouseX, 0f); 
		transform.localEulerAngles = new Vector3 (
			verticalLook, //override
			transform.localEulerAngles.y, //put y back into itself
			0f //overriding z
		);

		//if user clicks in this game window, then lock the mouse
		if (Input.GetMouseButtonDown(0)) {
			Cursor.visible = false; //hides the cursor
			Cursor.lockState = CursorLockMode.Locked; //locks cursor to the center of the window
		}
	}
}
