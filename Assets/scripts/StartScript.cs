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
		startupText.text = "Get the number up in the left corner to 90 before 12:00 to win. \nThe flashing red light means someone needs your help. \nDon't leave them waiting for too long or you'll get a red strike on the right side of your screen. \nThree strikes and you're out.";
	}

	void Update() {
		if (Input.GetMouseButtonDown(0) || Input.GetMouseButtonDown(1)) {
			StartupCanvas.enabled = false;
			Time.timeScale = 1f;
		}
	}
}
