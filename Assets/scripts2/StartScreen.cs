using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class StartScreen : MonoBehaviour {

	private Instructions instrucScript;

	public GameObject dBox;
	public Text dText;
	public bool dialogActive;
	public string[] dialogLines;
	public int curLine;


	void Start() {
		instrucScript = FindObjectOfType<Instructions> ();
		dialogActive = true;
	}

	void Update() {
		if (dialogActive && (Input.GetMouseButtonDown (0) || Input.GetMouseButtonUp (1))) {
			curLine++;
		}

		if (curLine >= dialogLines.Length) {
			dBox.SetActive (false);
			dialogActive = false;
			curLine = 0;

			instrucScript.startupCanvas.enabled = false; //TURN OFF START CANVAS
			Time.timeScale = 1f;
			instrucScript.rightViewCanvas.enabled = true;
			instrucScript.mapButtonCanvas.enabled = true;
		}
		dText.text = dialogLines [curLine];
	}

	public void DisplayDialogue() {
		dialogActive = true;
		dBox.SetActive (true);
	}
}
