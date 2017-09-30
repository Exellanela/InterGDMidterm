using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

//PUT ONTO CAMERA
public class TVviewButtons : MonoBehaviour {

	public Canvas RightTVviewCanvas;
	public Canvas LeftTVviewCanvas;
	//public Canvas MapCanvas;

	bool mapActive;
	bool left;
	bool right;


	void Awake() {
		LeftTVviewCanvas.enabled = false;
		//MapCanvas.enabled = false;
	}

	/*
	//NEEDS TO BE PUBLIC FOR BUTTON TO FIND
	public void RightButton() {
		if (Input.GetMouseButtonDown(0)) {
			Debug.Log ("right");
			transform.Rotate (0f, 0f, 0f);
			LeftTVviewCanvas.enabled = true;
			RightTVviewCanvas.enabled = false;
		}
	}

	public void LeftButton() {
		if (Input.GetMouseButtonDown(0)) {
			Debug.Log ("left");
			transform.Rotate (0f, -80f, 0f);
			LeftTVviewCanvas.enabled = true;
			RightTVviewCanvas.enabled = false;
		}
	}
	*/

	/*
	void Update() {
		if (mapActive) {
			MapCanvas.enabled = true;
			LeftTVviewCanvas.enabled = false;
			RightTVviewCanvas.enabled = false;
		} 
		if (!mapActive && right) {
			RightTVviewCanvas.enabled = true;
		}
	}
	*/

	public void RightButton() {
		//Debug.Log ("right");
		transform.Rotate (0f, 80f, 0f);
		LeftTVviewCanvas.enabled = false;
		RightTVviewCanvas.enabled = true;
		right = true;
		left = false;
	}

	public void LeftButton() {
		//Debug.Log ("left");
		transform.Rotate (0f, -80f, 0f);
		LeftTVviewCanvas.enabled = true;
		RightTVviewCanvas.enabled = false;
		left = true;
		right = false;
	}

	/*
	public void MapButton() {
		mapActive = !mapActive;
	}
	*/
}
