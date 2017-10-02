using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Timer : MonoBehaviour {

	private NPCSpawner spawnerScript;

	float timer = 0f;
	float timeLeftTimer = 0f;
	public Text timerText;
	public Text timeLeftText;
	public Image alertImage;

	public bool timerGo = true;
	bool timeReqAchieved;

	public Canvas VictoryCanvas;


	void Start() {
		alertImage.enabled = false;
		timeLeftText.text = "4:00 PM";
		spawnerScript = FindObjectOfType<NPCSpawner> ();
		VictoryCanvas.enabled = false;
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
			//activate gameover canvas
		}

		//ALERT
		if (spawnerScript.NPCActive) {
			StartCoroutine ("Alert");
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

	}

	IEnumerator Alert() {
		alertImage.enabled = true;
		yield return new WaitForSeconds (1f);
		alertImage.enabled = false;
		yield return new WaitForSeconds (1.3f);
	}
}
