using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Timer : MonoBehaviour {

	float timer = 0f;
	float timeLeftTimer = 0f;
	public Text timerText;
	public Text timeLeftText;

	public bool timerGo = true;
	bool timeReqAchieved;


	void Start() {
		timeLeftText.text = "4:00 PM";
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


		//------------------------------------------------------------- Time Requirement
		timerText.text = "TV time accumulated:\n" + timer.ToString ();

		if (timerGo) {
			timer += Time.deltaTime;
		}

		//IF REQ IS MET
		if (timeReqAchieved) {
			//activate victory canvas
			//maybe disable other text
		}
	}
}
