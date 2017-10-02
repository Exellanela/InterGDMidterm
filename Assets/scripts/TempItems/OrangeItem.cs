using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class OrangeItem : MonoBehaviour {

	//THIS IS GONNA SUCK -> MAKE ONE OF THESE FOR EACH ITEM

	private PlayerMove playerScript;


	void Start() {
		playerScript = FindObjectOfType<PlayerMove> ();
	}

	void OnMouseOver() {
		if (Input.GetMouseButtonUp(0)) {
			if (playerScript.holdingItem == false) {
				playerScript.orange = true;
			}
		}
	}
}
