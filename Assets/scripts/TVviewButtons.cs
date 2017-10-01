using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

//PUT ONTO CAMERA
public class TVviewButtons : MonoBehaviour {

	private Timer timerScript;

	public Canvas RightTVviewCanvas;
	public Canvas LeftTVviewCanvas;
	public Canvas MapButtonCanvas; //i hate my life
	public Canvas MapCanvas;

	bool mapActive;
	bool left;
	bool right;


	void Awake() {
		LeftTVviewCanvas.enabled = false;
		MapCanvas.enabled = false;
		//MapButtonCanvas.enabled = true;
	}

	void Start() {
		timerScript = FindObjectOfType<Timer> ();
	}

	void Update() {
		if (mapActive) {
			MapCanvas.enabled = true;
			LeftTVviewCanvas.enabled = false;
			RightTVviewCanvas.enabled = false;
			timerScript.timerGo = false;
		} 
		if (!mapActive && right) {
			MapCanvas.enabled = false;
			RightTVviewCanvas.enabled = true;
			LeftTVviewCanvas.enabled = false;
			timerScript.timerGo = true;
		}
		if (!mapActive && left) {
			MapCanvas.enabled = false;
			LeftTVviewCanvas.enabled = true;
			RightTVviewCanvas.enabled = false;
			timerScript.timerGo = false;
		}
	}


	public void RightButton() {
		//Debug.Log ("right");
		transform.Rotate (0f, 80f, 0f);
		//LeftTVviewCanvas.enabled = false;
		//RightTVviewCanvas.enabled = true;
		right = true;
		left = false;
		timerScript.timerGo = true;
	}

	public void LeftButton() {
		//Debug.Log ("left");
		transform.Rotate (0f, -80f, 0f);
		//LeftTVviewCanvas.enabled = true;
		//RightTVviewCanvas.enabled = false;
		left = true;
		right = false;
		timerScript.timerGo = false;
	}
		
	public void MapButton() {
		//Debug.Log (mapActive);
		//Debug.Log (left);
		//Debug.Log (right);
		mapActive = !mapActive;
	}
}
