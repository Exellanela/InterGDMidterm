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


	void Awake() {
		playerScript = FindObjectOfType<PlayerMove> ();
		mouseScript = FindObjectOfType<MouseMove> ();

		playerScript.enabled = false;
		mouseScript.enabled = false;

		playerScript.heldItemText.text = " ";
		playerScript.wrongItemText.text = " ";
	}
}
