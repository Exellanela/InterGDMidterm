using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

// I NEEDED THE PLAYER IN A CERTAIN PLACE AND A BOOL TO BE TURNED ON AT THE START
// THIS SCRIPT WILL BE TURNED OFF AS SOON AS THE PLAYER STARTS THE GAME (NOT ON STARTUP)
public class StartScript : MonoBehaviour {

	private CouchClick couchScript;
	private PlayerMove playerScript;
	private Timer timerScript;
	private MouseMove mouseScript;


	void Start() {
		playerScript = FindObjectOfType<PlayerMove> ();
		timerScript = FindObjectOfType<Timer> ();
		couchScript = FindObjectOfType<CouchClick> ();
		mouseScript = FindObjectOfType<MouseMove> ();

		couchScript.playerPos = new Vector3 (0f, 0f, 7.6f);
		playerScript.enabled = false;
		mouseScript.enabled = false;
	}
}
