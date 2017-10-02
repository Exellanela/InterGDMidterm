using System.Collections;
using System.Collections.Generic;
using UnityEngine;

//THIS IS ACTUALLY SPAGGETTI CODE RIP
public class NPCCheck : MonoBehaviour {

	private NPCSpawner spawnerScript;
	private PlayerMove playerScript;
	private Timer timerScript;

	bool timerGo;

	public bool orange;
	public bool green;
	public bool grey;

	TextMesh timeLimitText;
	float timeLimit;


	void Start() {
		spawnerScript = FindObjectOfType<NPCSpawner> ();
		playerScript = FindObjectOfType<PlayerMove> ();
		timerScript = FindObjectOfType<Timer> ();

		timeLimit = spawnerScript.tlCountdown;
		timeLimitText = GetComponentInChildren<TextMesh> ();

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

	void Update() {
		timeLimitText.text = timeLimit.ToString ();

		if (timeLimit > 0.01f) {
			timeLimit -= Time.deltaTime;
		}

		if (timeLimit <= 0.1f) {
			if (timerScript.strikeB1 == false) { timerScript.strikeB1 = true; }
			else if (timerScript.strikeB1 == true && timerScript.strikeB2 == false) { timerScript.strikeB2 = true; }
			else if (timerScript.strikeB2 == true && timerScript.strikeB3 == false) { timerScript.strikeB3 = true; }
			Destroy (gameObject);
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
}
