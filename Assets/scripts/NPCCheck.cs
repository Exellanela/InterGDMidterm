using System.Collections;
using System.Collections.Generic;
using UnityEngine;

//THIS IS ACTUALLY SPAGGETTI CODE RIP
public class NPCCheck : MonoBehaviour {

	private NPCSpawner spawnerScript;
	private PlayerMove playerScript;

	bool timerGo;

	public bool orange;
	public bool green;
	public bool grey;


	void Start() {
		spawnerScript = FindObjectOfType<NPCSpawner> ();
		playerScript = FindObjectOfType<PlayerMove> ();
	}

	void OnMouseOver() {
		if (Input.GetMouseButtonUp(0)) {
			if (spawnerScript.matNum == 1 && playerScript.orange) {
				Debug.Log ("orange");
			}
			if (spawnerScript.matNum == 2 && playerScript.green) {
				Debug.Log ("green");
			}
			if (spawnerScript.matNum == 3 && playerScript.grey) {
				Debug.Log ("grey");
			}
		}
	}















	/*
	void OnMouseOver() {
		if (Input.GetMouseButtonUp (0)) {
			if (transform.position.z >= 14.6f) {
				spawnerScript.locThree = false;
			} else if (transform.position.z < 10f && transform.position.z > 8f) {
				spawnerScript.locTwo = false;
			} else if (transform.position.z <= 3.6f) {
				spawnerScript.locOne = false;
			}
		}
	}
		
	void Update() {
		//CHECK MATERIAL---------------------------------------------------------------------------------------------
		if (Input.GetMouseButtonUp (0)) {
			if (spawnerScript.NPCRend.material == spawnerScript.orangeMat && playerScript.orange) {
				Destroy (gameObject);
			} else if (spawnerScript.NPCRend.material == spawnerScript.greenMat && playerScript.green) {
				Destroy (gameObject);
			} else if (spawnerScript.NPCRend.material == spawnerScript.greyMat && playerScript.grey) {
				Destroy (gameObject);
			} else {
				playerScript.wrongItemText.text = "You don't have the right item.";
				timerGo = true;
			}
		}

		if (timerGo) {
			playerScript.wrongTextTimer -= Time.deltaTime;
		}
		if (playerScript.wrongTextTimer <= 0.1f) {
			timerGo = false;
			playerScript.wrongTextTimer = 5f;
			playerScript.wrongItemText.text = " ";
		}
	}
	*/
}
