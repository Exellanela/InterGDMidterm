using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NPCCheck : MonoBehaviour {

	//FOR NOW CHECK FOR CLICK AND DESTROY-------------------------------------------------------
	private NPCSpawner spawnerScript;


	void Start() {
		spawnerScript = FindObjectOfType<NPCSpawner> ();
	}

	void OnMouseOver() {
		if (Input.GetMouseButtonUp(0)) {
			if (transform.position.z >= 14.6f) {
				spawnerScript.locThree = false;
				Destroy (gameObject);
			}
			else if (transform.position.z < 10f && transform.position.z > 8f) {
				spawnerScript.locTwo = false;
				Destroy (gameObject);
			}
			else if (transform.position.z <= 3.6f) {
				spawnerScript.locOne = false;
				Destroy (gameObject);
			}
		}
	}
}
