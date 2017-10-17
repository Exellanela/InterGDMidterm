using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class NPCSpawner : MonoBehaviour {

	public Transform NPC;
	public Renderer NPCRend;
	public Image alertImage;


	float startSpawnTimer = 7f;

	public int locationNum; //location of spawn based on number generated
	Vector3 location;

	//check if location of spawn is already filled
	public bool locOne;
	public bool locTwo;
	public bool locThree;

	public bool NPCActive;

	//change material but really its just the color
	public Material orangeMat;
	public Material greenMat;
	public Material greyMat;
	public Material yellowMat;
	public int matNum;

	//decide time limit
	public int tlMin;
	public float tlCountdown;


	void Start() {
		//NPCRend = NPC.GetComponent<Renderer> ();
		NPCRend.enabled = true;
		alertImage.enabled = false;
	}

	void Update() {
		//Debug.Log (startSpawnTimer);
		if (startSpawnTimer > 0f) {
			startSpawnTimer -= Time.deltaTime;
		}
		if (startSpawnTimer <= 0.001f) {
			DecideLocation (); //might be decided based on current location of original...so just keep it out of view
			//Debug.Log (matNum);

			//TESTING--------------------------------------------------------------------------------------------------------------
			if (locationNum == 1 && !locOne) {
				DecideItem ();
				tlMin = Random.Range (12, 25);
				Instantiate (NPC, location, Quaternion.Euler (0f, 180f, 0f));
				NPCActive = true;
			}
			if (locationNum == 2 && !locTwo) {
				DecideItem ();
				tlMin = Random.Range (12, 25);
				Instantiate (NPC, location, Quaternion.Euler (0f, -70f, 0f));
				NPCActive = true;
			}
			if (locationNum == 3 && !locThree) {
				DecideItem ();
				tlMin = Random.Range (12, 25);
				Instantiate (NPC, location, Quaternion.Euler (0f, -10f, 0f));
				NPCActive = true;
			}
				
			startSpawnTimer = Random.Range(14f, 30f);
		}

		if (NPCActive) {
			alertImage.enabled = true;
		} else {
			alertImage.enabled = false;
		}

		if (locOne || locTwo || locThree) {
			NPCActive = true;
		} else {
			NPCActive = false;
		}
	}

	void DecideLocation() {
		//INCLUDES MIN BUT NOT MAX
		locationNum = Random.Range (1, 4);
		if (locationNum == 1) {
			location = new Vector3 (-7.2f, -0.1f, 3.6f);
		}
		if (locationNum == 2) {
			location = new Vector3 (-13.8f, -0.1f, 8.5f);
		}
		if (locationNum == 3) {
			location = new Vector3 (-8.9f, -0.1f, 14.6f);
		}
	}

	void DecideItem() {
		matNum = Random.Range (1, 4);
		if (matNum == 1) {
			NPCRend.material = orangeMat;
		}
		if (matNum == 2) {
			NPCRend.material = greenMat;
		}
		/*
		if (matNum == 3) {
			NPCRend.material = greyMat;
		}
		*/
		if (matNum == 3) {
			NPCRend.material = yellowMat;
		}
	}
}
