using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CouchClick : MonoBehaviour {

	private MouseMove mouseMoveScript;
	private PlayerMove playerMoveScript;
	private Timer timerScript;

	public GameObject player;
	Vector3 playerPos;
	public Canvas LeftTVviewCanvas;
	public Canvas RightTVviewCanvas;
	public Canvas mapButtonCanvas;

	Collider couchTrigger;


	void Start() {
		mouseMoveScript = FindObjectOfType<MouseMove> ();
		playerMoveScript = FindObjectOfType<PlayerMove> ();
		timerScript = FindObjectOfType<Timer> ();

		couchTrigger = GetComponent<Collider> ();
	}

	void OnMouseOver() {
		//Debug.Log ("over");
		playerPos = player.transform.position;
		//Debug.Log(playerPos);
		if (Input.GetMouseButtonUp(0)) {
			//Debug.Log ("clicked");
			LeftTVviewCanvas.enabled = true;
			RightTVviewCanvas.enabled = true;
			mapButtonCanvas.enabled = true;
			playerMoveScript.enabled = false;
			mouseMoveScript.enabled = false;

			playerPos = new Vector3 (0f, 1.9f, 7.6f);

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
			LeftTVviewCanvas.enabled = false;
			RightTVviewCanvas.enabled = false;
			mapButtonCanvas.enabled = false;
			playerMoveScript.enabled = true;
			mouseMoveScript.enabled = true;

			playerPos = new Vector3 (-6.7f, 1f, 8.5f);

			timerScript.timerGo = false;
		}
	}
}
