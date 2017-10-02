using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CouchClick : MonoBehaviour {

	private MouseMove mouseMoveScript;
	private PlayerMove playerMoveScript;
	private Timer timerScript;

	public GameObject moveablePlayer;
	public GameObject sittingPlayer;
	public Canvas LeftTVviewCanvas;
	public Canvas RightTVviewCanvas;
	public Canvas mapButtonCanvas;

	Collider couchTrigger;


	void Start() {
		mouseMoveScript = FindObjectOfType<MouseMove> ();
		playerMoveScript = FindObjectOfType<PlayerMove> ();
		timerScript = FindObjectOfType<Timer> ();

		couchTrigger = GetComponent<Collider> ();
		moveablePlayer.SetActive (false);
	}

	void OnMouseOver() {
		//Debug.Log ("over");
		if (Input.GetMouseButtonUp(0)) {
			//Debug.Log ("clicked");
			Cursor.visible = true;
			Cursor.lockState = CursorLockMode.None;

			sittingPlayer.SetActive (true);
			moveablePlayer.SetActive (false);

			LeftTVviewCanvas.enabled = true;
			RightTVviewCanvas.enabled = true;
			mapButtonCanvas.enabled = true;
			playerMoveScript.enabled = false;
			mouseMoveScript.enabled = false;
			timerScript.timerGo = true;
		}
	}

	void Update() {
		if (LeftTVviewCanvas.enabled || RightTVviewCanvas.enabled) {
			couchTrigger.enabled = false;
		} else {
			couchTrigger.enabled = true;
		}

		if (Input.GetMouseButtonUp(1)) {
			sittingPlayer.SetActive (false);
			moveablePlayer.SetActive (true);

			LeftTVviewCanvas.enabled = false;
			RightTVviewCanvas.enabled = false;
			mapButtonCanvas.enabled = false;
			playerMoveScript.enabled = true;
			mouseMoveScript.enabled = true;
			timerScript.timerGo = false;
		}
	}
}
