using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Timer : MonoBehaviour {

	private NPCSpawner spawnerScript;
	private MouseMove mouseScript;

	float timer = 0f;
	float timeLeftTimer = 0f;
	public Text timerText;
	public Text timeLeftText;
	public Image alertImage;

	public bool timerGo = true;
	bool timeReqAchieved;

	public Canvas VictoryCanvas;
	public Canvas GameOverCanvas;

	public Image strike1;
	public Image strike2;
	public Image strike3;
	public bool strikeB1;
	public bool strikeB2;
	public bool strikeB3;


	void Start() {
		alertImage.enabled = false;
		timeLeftText.text = "4:00 PM";
		spawnerScript = FindObjectOfType<NPCSpawner> ();
		mouseScript = FindObjectOfType<MouseMove> ();
		VictoryCanvas.enabled = false;
		GameOverCanvas.enabled = false;
		strike1.enabled = false;
		strike2.enabled = false;
		strike3.enabled = false;
	}

	void Update() {
		//-------------------------------------------------------------- Time Limit
		timeLeftTimer += Time.deltaTime;
		if (timeLeftTimer >= 30f) {
			timeLeftText.text = "5:00 PM";
		}
		if (timeLeftTimer >= 60f) {
			timeLeftText.text = "6:00 PM";
		}
		if (timeLeftTimer >= 90f) {
			timeLeftText.text = "7:00 PM";
		}
		if (timeLeftTimer >= 120f && !timeReqAchieved) {
			timeLeftText.text = "8:00 PM";
		}
		if (timeLeftTimer >= 150f && !timeReqAchieved) {
			timeLeftText.text = "9:00 PM";
		}
		if (timeLeftTimer >= 180f && !timeReqAchieved) {
			timeLeftText.text = "10:00 PM";
		}
		if (timeLeftTimer >= 210f && !timeReqAchieved) {
			timeLeftText.text = "11:00 PM";
		}

		//GAME OVER
		if (timeLeftTimer >= 240f && !timeReqAchieved) {
			timeLeftText.text = "12:00 AM";
			GameOverCanvas.enabled = true;
			Time.timeScale = 0f;
		}

		if (GameOverCanvas.enabled == true) {
			mouseScript.enabled = false;
			Cursor.visible = true;
			Cursor.lockState = CursorLockMode.None;
		}

		//ALERT
		if (spawnerScript.NPCActive) {
			//StartCoroutine ("Alert");
			alertImage.enabled = true;
		} else {
			alertImage.enabled = false;
		}


		//------------------------------------------------------------- Time Requirement
		timerText.text = "TV time accumulated:\n" + timer.ToString ();

		if (timerGo) {
			timer += Time.deltaTime;
		}

		//VICTORy
		if (timer >= 90f) {
			timeReqAchieved = true;
		}

		if (timeReqAchieved) {
			VictoryCanvas.enabled = true;
			Time.timeScale = 0f;
		}

		//STRIKES
		if (strikeB1) { strike1.enabled = true; }
		if (strikeB2) { strike2.enabled = true; }
		if (strikeB3) { strike3.enabled = true; }

		if (strikeB1 && strikeB2 && strikeB3) {
			GameOverCanvas.enabled = true;
			Time.timeScale = 0f;
		}
	}

	IEnumerator Alert() {
		alertImage.enabled = true;
		yield return new WaitForSeconds (1f);
		alertImage.enabled = false;
		yield return new WaitForSeconds (1.3f);
	}
}
