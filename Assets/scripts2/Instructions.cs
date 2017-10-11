using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

//put on constants
//CONTROLS BASICALLY EVERYTHING
//HOPEFULLY THIS WILL BE THE ONLY SCRIPT THAT OTHERS WILL GET FROM/CALL FROM
public class Instructions : MonoBehaviour {

	public bool mouseVisLock;

	public GameObject sittingPlayer;
	public GameObject moveablePlayer;
	bool moveable4vislock;

	public Text startupText;
	public Canvas startupCanvas;

	//TIME STUFF------------------------
	float timer = 0f;
	float hoursTimer = 0f;
	public Text timerText;
	public Text hoursText;
	int minutes = 0;
	int hours = 0;
	public Text textSec;
	public Text textMin;
	public Text textHrs;

	public bool timerGo = true;
	bool timeReqAchieved;

	public Canvas timerCanvas;
	public Canvas VictoryCanvas;
	public Canvas GameOverCanvas;
	public Canvas mapCanvas;
	bool mapActive;

	//TV VIEW STUFF--------------------------------
	public Image strike1;
	public Image strike2;
	public Image strike3;
	public bool strikeB1;
	public bool strikeB2;
	public bool strikeB3;

	public bool tvView = true;
	public Canvas leftViewCanvas;
	public Canvas rightViewCanvas;
	public Canvas mapButtonCanvas;
	public bool left;
	public bool right = true;

	//oh boy items
	//for player stuff
	public Text heldItemText;
	public bool holdingItem;
	public bool orange;
	public bool green;
	public bool grey;
	public bool yellow;
	public Image centerMouseImage;


	void Start() {
		moveablePlayer.SetActive (false);
		startupCanvas.enabled = true;
		VictoryCanvas.enabled = false;
		GameOverCanvas.enabled = false;
		leftViewCanvas.enabled = false;
		mapCanvas.enabled = false;
		strike1.enabled = false;
		strike2.enabled = false;
		strike3.enabled = false;
		hoursText.text = "4:00 PM";
		heldItemText.text = " ";
		centerMouseImage.enabled = false;
	}

	void Update() {
		//mouse visual and lock bool
		if (mouseVisLock) {
			centerMouseImage.enabled = true;
			Cursor.visible = false;
			Cursor.lockState = CursorLockMode.Locked;
		} else {
			centerMouseImage.enabled = false;
			Cursor.visible = true;
			Cursor.lockState = CursorLockMode.None;
		}

		if (startupCanvas.enabled == true) {
			Time.timeScale = 0f;
			startupText.text = "Get 3hrs of TV time before 12:00 to win. \nPeople will pop by to ask you for something of their color. \nDon't leave them waiting for too long or you'll get a red strike on the right side of your screen. \nThree strikes and you're out. \nRight click to leave the couch and/or drop an item. \nLeft click the couch to sit again. \nPress Q to open the map if you need it.";
			if (Input.GetMouseButton(0)) {
				Time.timeScale = 1f;
				startupCanvas.enabled = false;
			}
		}
			
		//MAP AND TV VIEW STUFF ----------------------------------------------------------
		if (mapActive) {
			mapCanvas.enabled = true;
			rightViewCanvas.enabled = false;
			leftViewCanvas.enabled = false;
			timerGo = false;
		} 

		if (tvView) {
			if (!mapActive && right) {
				mapCanvas.enabled = false;
				rightViewCanvas.enabled = true;
				leftViewCanvas.enabled = false;
				timerGo = true;
			}
			if (!mapActive && left) {
				mapCanvas.enabled = false;
				rightViewCanvas.enabled = false;
				leftViewCanvas.enabled = true;
				timerGo = false;
			}
		}

		//-------------------------------------------------------------- Time Limit
		hoursTimer += Time.deltaTime;
		if (hoursTimer >= 30f) {
			hoursText.text = "5:00 PM";
		}
		if (hoursTimer >= 60f) {
			hoursText.text = "6:00 PM";
		}
		if (hoursTimer >= 90f && !timeReqAchieved) {
			hoursText.text = "7:00 PM";
		}
		if (hoursTimer >= 120f && !timeReqAchieved) {
			hoursText.text = "8:00 PM";
		}
		if (hoursTimer >= 150f && !timeReqAchieved) {
			hoursText.text = "9:00 PM";
		}
		if (hoursTimer >= 180f && !timeReqAchieved) {
			hoursText.text = "10:00 PM";
		}
		if (hoursTimer >= 210f && !timeReqAchieved) {
			hoursText.text = "11:00 PM";
		}

		//TIME accumulated-----------------------------------------------------------------------
		//oh god math
		//Debug.Log(timer);
		if (timer >= 59.5f) { timer = 0; minutes++; }
		if (minutes >= 60) { minutes = 0; hours++; }

		if (timer < 9.5f) {
			textSec.text = "0" + (Mathf.Round (timer)).ToString();
		} else {
			textSec.text = (Mathf.Round (timer)).ToString();
		}
		if (minutes < 10) { textMin.text = "0" + minutes.ToString() + ":"; } else { textMin.text = minutes.ToString() + ":"; }
		textHrs.text = "0" + hours.ToString() + ":";

		if (timerGo) {
			timer += Time.deltaTime * 120;
		}

		//VICTORy---------------------------------------
		if (hours >= 3) {
			timeReqAchieved = true;
		}

		if (timeReqAchieved) {
			VictoryCanvas.enabled = true;
			Time.timeScale = 0f;
			timerCanvas.enabled = false;
			leftViewCanvas.enabled = false;
			rightViewCanvas.enabled = false;
			mapButtonCanvas.enabled = false;
		}

		//GAME OVER--------------------------------------
		if (hoursTimer >= 240f && !timeReqAchieved) {
			hoursText.text = "12:00 AM";
			GameOverCanvas.enabled = true;
			Time.timeScale = 0f;
			timerCanvas.enabled = false;
			leftViewCanvas.enabled = false;
			rightViewCanvas.enabled = false;
			mapButtonCanvas.enabled = false;
		}

		if (GameOverCanvas.enabled == true) {
			mouseVisLock = false;
		}

		//STRIKES--------------------------------------
		if (strikeB1) { strike1.enabled = true; }
		if (strikeB2) { strike2.enabled = true; }
		if (strikeB3) { strike3.enabled = true; }

		//more map stuff
		if (Input.GetKeyUp(KeyCode.Q)) {
			mapActive = !mapActive;
		}

		//ITEMS-----------------------------------------------------------------------------------------------
		if (orange || green || grey || yellow) {
			holdingItem = true;
		} else {
			holdingItem = false;
		}

		if (Input.GetMouseButtonUp(1)) {
			orange = false;
			green = false;
			grey = false;
			yellow = false;
		}

		if (!orange && !green && !grey && !yellow) { heldItemText.text = " "; }
		if (orange) { heldItemText.text = "Orange"; }
		if (green) { heldItemText.text = "Green"; }
		if (grey) { heldItemText.text = "Grey"; }
		if (yellow) { heldItemText.text = "Yellow"; }

		//LEAVE THE COUCH-------------------------------------------------
		if (tvView && Input.GetMouseButtonUp(1)) {
			timerGo = false;
			tvView = false;
			leftViewCanvas.enabled = false;
			rightViewCanvas.enabled = false;
			mapButtonCanvas.enabled = false;
			sittingPlayer.SetActive (false);
			moveablePlayer.SetActive (true);
			mouseVisLock = true;
		}
	}
		

	//BUTTONS--------------------------------------------------------------------------------
	public void MapButtonn() {
		mapActive = !mapActive;
	}

	public void LeftButton() {
		sittingPlayer.transform.Rotate (0f, -80f, 0f);
		right = false;
		left = true;
	}

	public void RightButton() {
		sittingPlayer.transform.Rotate (0f, 80f, 0f);
		right = true;
		left = false;
	}
}