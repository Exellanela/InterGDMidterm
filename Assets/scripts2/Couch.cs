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

			instrucScript.mouseVisLock = false;
			instrucScript.timerGo = true;

			instrucScript.tvView = true;
			instrucScript.mapButtonCanvas.enabled = true;
			if (instrucScript.right) { instrucScript.rightViewCanvas.enabled = true; }
			else if (instrucScript.left) { instrucScript.leftViewCanvas.enabled = true; }
		}
	}
}
