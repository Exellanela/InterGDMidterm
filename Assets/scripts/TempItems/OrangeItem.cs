using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class OrangeItem : MonoBehaviour {

	private Instructions instrucScript;
	public GameObject player;
	float distance;


	void Start() {
		instrucScript = FindObjectOfType<Instructions> ();
	}

	void OnMouseOver() {
		//Debug.Log ("over-y");
		distance = Vector3.Distance (player.transform.position, transform.position);

		if (distance < 7f) {
			if (Input.GetMouseButtonUp (0)) {
				if (instrucScript.holdingItem == false) {
					instrucScript.orange = true;
				}
			}
		}
	}
}
