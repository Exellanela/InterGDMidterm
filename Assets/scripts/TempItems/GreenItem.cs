using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class GreenItem : MonoBehaviour {

	private Instructions instrucScript;


	void Start() {
		instrucScript = FindObjectOfType<Instructions> ();
	}

	void OnMouseOver() {
		if (Input.GetMouseButtonUp(0)) {
			if (instrucScript.holdingItem == false) {
				instrucScript.green = true;
			}
		}
	}
}
