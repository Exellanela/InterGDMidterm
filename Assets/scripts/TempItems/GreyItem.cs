using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GreyItem : MonoBehaviour {

	private PlayerMove playerScript;

	void Start() {
		playerScript = FindObjectOfType<PlayerMove> ();
	}

	void OnMouseOver() {
		if (Input.GetMouseButtonUp(0)) {
			if (playerScript.holdingItem == false) {
				playerScript.grey = true;
			}
		}
	}
}
