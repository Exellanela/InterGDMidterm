using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class OnNPC : MonoBehaviour {

	private NPCSpawner spawnerScript;
	private Instructions instrucScript;

	int matNum;

	public TextMesh minText;
	public TextMesh secText;
	int minutes;
	float seconds = 59.9888f;
	float timeLimit;
	int lockNum;

	void Start() {
		spawnerScript = FindObjectOfType<NPCSpawner> ();
		instrucScript = FindObjectOfType<Instructions> ();

		matNum = spawnerScript.matNum;
		timeLimit = spawnerScript.tlMin * 60;
		minutes = spawnerScript.tlMin;
		lockNum = spawnerScript.locationNum;
	}

	void Update() {
		if (timeLimit > 0.01f) {
			timeLimit -= Time.deltaTime * 50;
			seconds -= Time.deltaTime * 50;
		}
		if (seconds <= 0f) { seconds = 59.98888f; minutes--; }
		if (seconds > 9.9999f) { secText.text = (Mathf.Round (seconds)).ToString(); } else { secText.text = "0" + (Mathf.Round (seconds)).ToString(); }
		if (minutes < 10) { minText.text = "0" + minutes.ToString () + ":"; } else { minText.text = minutes.ToString () + ":"; }


		if (lockNum == 1) { spawnerScript.locOne = true; } 
		else if (lockNum == 2) { spawnerScript.locTwo = true; } 
		else if (lockNum == 3) { spawnerScript.locThree = true; }



		if (timeLimit <= 0.1f) {
			if (instrucScript.strikeB1 == false) { instrucScript.strikeB1 = true; }
			else if (instrucScript.strikeB1 == true && instrucScript.strikeB2 == false) { instrucScript.strikeB2 = true; }
			else if (instrucScript.strikeB2 == true && instrucScript.strikeB3 == false) { instrucScript.strikeB3 = true; }
			if (lockNum == 1) { spawnerScript.locOne = false; } 
			else if (lockNum == 2) { spawnerScript.locTwo = false; } 
			else if (lockNum == 3) { spawnerScript.locThree = false; } 
			//Destroy (gameObject);
			Destroy(transform.parent.gameObject);
		}
	}

	void OnMouseOver() {
		if (Input.GetMouseButtonUp (0)) {
			if (matNum == 1 && instrucScript.orange == true) {
				//Destroy (gameObject);
				Destroy(transform.parent.gameObject);
				instrucScript.orange = false;
				instrucScript.holdingItem = false;
			}
			if (matNum == 2 && instrucScript.green == true) {
				//Destroy (gameObject);
				Destroy(transform.parent.gameObject);
				instrucScript.green = false;
				instrucScript.holdingItem = false;
			}
			/*
			if (matNum == 3 && instrucScript.grey == true) {
				Destroy (gameObject);
				instrucScript.grey = false;
				instrucScript.holdingItem = false;
			}
			*/
			if (matNum == 3 && instrucScript.yellow == true) {
				//Destroy (gameObject);
				Destroy(transform.parent.gameObject);
				instrucScript.yellow = false;
				instrucScript.holdingItem = false;
			}
		}
	}
}
