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

	//AUDIO
	int strikeAudNum;
	public AudioClip excuseRude;
	public AudioClip wahwah;

	int correctAudNum;
	public AudioClip wahhoo;
	public AudioClip yippee;
	public AudioClip iwuvyou;

	AudioClip curAud;
	Renderer rend;
	Collider col;


	void Start() {
		spawnerScript = FindObjectOfType<NPCSpawner> ();
		instrucScript = FindObjectOfType<Instructions> ();

		matNum = spawnerScript.matNum;
		timeLimit = spawnerScript.tlMin * 60;
		minutes = spawnerScript.tlMin;
		lockNum = spawnerScript.locationNum;

		rend = GetComponent<Renderer> ();
		col = GetComponent < Collider> ();
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
			//Destroy(transform.parent.gameObject);
			rend.enabled = false;
			col.enabled = false;
			DecideFailAudio ();
			Destroy (transform.parent.gameObject, curAud.length);
		}
	}

	void OnMouseOver() {
		if (Input.GetMouseButtonUp (0)) {
			if (matNum == 1 && instrucScript.orange == true) {
				//Destroy(transform.parent.gameObject);
				instrucScript.orange = false;
				instrucScript.holdingItem = false;

				rend.enabled = false;
				col.enabled = false;
				DecideRightAudio ();
				Destroy (transform.parent.gameObject, curAud.length);
			}
			if (matNum == 2 && instrucScript.green == true) {
				//Destroy(transform.parent.gameObject);
				instrucScript.green = false;
				instrucScript.holdingItem = false;

				rend.enabled = false;
				col.enabled = false;
				DecideRightAudio ();
				Destroy (transform.parent.gameObject, curAud.length);
			}
			/*
			if (matNum == 3 && instrucScript.grey == true) {
				Destroy (gameObject);
				instrucScript.grey = false;
				instrucScript.holdingItem = false;
			}
			*/
			if (matNum == 3 && instrucScript.yellow == true) {
				//Destroy(transform.parent.gameObject);
				instrucScript.yellow = false;
				instrucScript.holdingItem = false;

				rend.enabled = false;
				col.enabled = false;
				DecideRightAudio ();
				Destroy (transform.parent.gameObject, curAud.length);
			}
		}
	}

	void DecideFailAudio() {
		strikeAudNum = Random.Range (1, 4);
		if (strikeAudNum == 1) {
			Sound.me.PlaySound (wahwah, 5);
			curAud = wahwah;
		}
		if (strikeAudNum == 2) {
			Sound.me.PlaySound (excuseRude, 5);
			curAud = excuseRude;
		}
		/*
		if (strikeAudNum == 3) {
			Sound.me.PlaySound (????, 5);
		}
		*/
	}

	void DecideRightAudio() {
		correctAudNum = Random.Range (1, 4);
		if (correctAudNum == 1) {
			Sound.me.PlaySound (wahhoo, 5);
			curAud = wahhoo;
		}
		if (correctAudNum == 2) {
			Sound.me.PlaySound (yippee, 5);
			curAud = yippee;
		}
		if (correctAudNum == 3) {
			Sound.me.PlaySound (iwuvyou, 5);
			curAud = iwuvyou;
		}
	}
}
