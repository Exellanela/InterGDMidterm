using System.Collections;
using System.Collections.Generic;
using UnityEngine;

//put on trigger
public class Couch : MonoBehaviour {

	private Instructions instrucScript;

	public GameObject sittingPlayer;
	public GameObject moveablePlayer;

	void Start() {
		instrucScript = FindObjectOfType<Instructions> ();
	}

	void OnMouseOver() {
		if (Input.GetMouseButtonDown(0)) {
			//Debug.Log ("HI");
			moveablePlayer.SetActive (false);
			sittingPlayer.SetActive (true);

			if (instrucScript.left == true) {
				sittingPlayer.transform.Rotate (0f, 80f, 0f);
			}

			instrucScript.mouseVisLock = false;
			instrucScript.timerGo = true;

			instrucScript.tvView = true;
			instrucScript.mapButtonCanvas.enabled = true;
			//if (instrucScript.right) { instrucScript.rightViewCanvas.enabled = true; }
			//else if (instrucScript.left) { instrucScript.leftViewCanvas.enabled = true; }
			instrucScript.right = true;
			instrucScript.left = false;
		}
	}
}
