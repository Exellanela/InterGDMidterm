using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CouchClick : MonoBehaviour {

	private MouseMove mouseMoveScript;
	private PlayerMove playerMoveScript;
	private Timer timerScript;

	public GameObject player;
	public Vector3 playerPos;
	public Canvas LeftTVviewCanvas;
	public Canvas RightTVviewCanvas;

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
			//mouseMoveScript.enabled = false;
			playerMoveScript.enabled = false;

			playerPos = new Vector3 (0f, 1.9f, 7.6f);
		}
	}

	void Update() {
		if (LeftTVviewCanvas.enabled || RightTVviewCanvas.enabled) {
			couchTrigger.enabled = false;
		} else {
			couchTrigger.enabled = true;
		}
	}
}
