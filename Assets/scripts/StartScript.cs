using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

// I NEEDED THE PLAYER IN A CERTAIN PLACE AND A BOOL TO BE TURNED ON AT THE START
//most likely could have been done a better way
//but im stupid so i take it one step at a time
public class StartScript : MonoBehaviour {

	private PlayerMove playerScript;
	private MouseMove mouseScript;

	public Canvas StartupCanvas;

	public Text startupText;

	bool mapActive;
	public Canvas mapCanvas;


	void Awake() {
		playerScript = FindObjectOfType<PlayerMove> ();
		mouseScript = FindObjectOfType<MouseMove> ();

		playerScript.enabled = false;
		mouseScript.enabled = false;

		playerScript.heldItemText.text = " ";
		playerScript.wrongItemText.text = " ";

		Time.timeScale = 0f;
	}

	void Start() {
		StartupCanvas.enabled = true;
		startupText.text = "Get TV time to 90 before 12:00 to win. \nYou also need to help people find the thing (color) they're looking for and bring it to them. \nDon't leave them waiting for too long or you'll get a red strike on the right side of your screen. \nThree strikes and you're out. \nRight click to leave the couch. \nLeft click the couch to sit again. \nPress Q to open the map if you need it.";
	}

	void Update() {
		if (Input.GetMouseButtonDown(0) || Input.GetMouseButtonDown(1)) {
			StartupCanvas.enabled = false;
			Time.timeScale = 1f;
		}

		//MAP----------------------------------------------------------------------------------------------
		if (Input.GetKeyUp(KeyCode.Q)) {
			mapActive = !mapActive;
		}

		if (mapActive) {
			mapCanvas.enabled = true;
			playerScript.moveSpeed = 0f;
			Cursor.visible = true;
			Cursor.lockState = CursorLockMode.None;
			mouseScript.enabled = false;
		} else {
			mapCanvas.enabled = false;
			playerScript.moveSpeed = 5f;
			mouseScript.enabled = true;
		}
	}
}
