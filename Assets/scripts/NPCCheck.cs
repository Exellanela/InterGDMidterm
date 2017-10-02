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

		//TRY1
		//Debug.Log ("orange" + orange);
		//Debug.Log ("green" + green);
		//Debug.Log ("grey" + grey);
		//I THINK IT WORKED
		if (spawnerScript.matNum == 1) {
			orange = true;
			green = false;
			grey = false;
		}
		else if (spawnerScript.matNum == 2) {
			green = true;
			orange = false;
			grey = false;
		}
		else if (spawnerScript.matNum == 3) {
			grey = true;
			orange = false;
			green = false;
		}
	}

	void OnMouseOver() {
		if (Input.GetMouseButtonUp(0)) {
			if (orange && playerScript.orange == true) {
				Destroy (gameObject);
				playerScript.orange = false;
				playerScript.holdingItem = false;
			}
			if (green && playerScript.green == true) {
				Destroy (gameObject);
				playerScript.holdingItem = false;
				playerScript.green = false;
			}
			if (grey && playerScript.grey == true) {
				Destroy (gameObject);
				playerScript.holdingItem = false;
				playerScript.grey = false;
			}
			/*
			if ((playerScript.grey == true && !grey) || (playerScript.green == true && !green) || (playerScript.orange == true && !orange)) {
				playerScript.wrongItemText.text = "You don't have the right item.";
				playerScript.wrongTextTimer -= Time.deltaTime;
			}
			*/
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
