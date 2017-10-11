using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class YellowItem : MonoBehaviour {

	private Instructions instrucScript;


	void Start() {
		instrucScript = FindObjectOfType<Instructions> ();
	}

	void OnMouseOver() {
		Debug.Log ("over-y");
		if (Input.GetMouseButtonUp(0)) {
			if (instrucScript.holdingItem == false) {
				instrucScript.yellow = true;
			}
		}
	}
}
