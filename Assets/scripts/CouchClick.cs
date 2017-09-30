using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CouchClick : MonoBehaviour {

	private MouseMove mouseMoveScript;
	private PlayerMove playerMoveScript;
	private Timer timerScript;

	public GameObject player;
	Vector3 playerPos;


	void Start() {
		mouseMoveScript = FindObjectOfType<MouseMove> ();
		playerMoveScript = FindObjectOfType<PlayerMove> ();
		timerScript = FindObjectOfType<Timer> ();
	}

	void OnMouseOver() {
		//Debug.Log ("over");
		playerPos = player.transform.position;
		Debug.Log(playerPos);
		if (Input.GetMouseButtonUp(0)) {
			Debug.Log ("clicked");
			//mouseMoveScript.enabled = false;
			playerMoveScript.enabled = false;

			playerPos = new Vector3 (0f, 1.9f, 7.6f);
		}
	}

	void Update() {
		
	}
}
