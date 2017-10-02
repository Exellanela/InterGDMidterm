using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NPCSpawner : MonoBehaviour {

	public Transform NPC;
	public Renderer NPCRend;
	float startSpawnTimer = 5f;

	int locationNum; //location of spawn based on number generated
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
	public int matNum;


	void Start() {
		NPCRend = NPC.GetComponent<Renderer> ();
		NPCRend.enabled = true;
	}

	void Update() {
		//Debug.Log (startSpawnTimer);
		if (startSpawnTimer > 0f) {
			startSpawnTimer -= Time.deltaTime;
		}
		if (startSpawnTimer <= 0.001f) {
			DecideLocation(); //might be decided based on current location of original...so just keep it out of view
			//Debug.Log (matNum);

			//TESTING--------------------------------------------------------------------------------------------------------------
			if (locationNum == 1 && !locOne) {
				DecideItem();
				Instantiate (NPC, location, Quaternion.identity);
				locOne = true;
				NPCActive = true;
			}
			if (locationNum == 2 && !locTwo) {
				DecideItem();
				Instantiate (NPC, location, Quaternion.identity);
				locTwo = true;
				NPCActive = true;
			}
			if (locationNum == 3 && !locThree) {
				DecideItem();
				Instantiate (NPC, location, Quaternion.identity);
				locThree = true;
				NPCActive = true;
			}


			startSpawnTimer = 5f;
		}

		if (locOne || locTwo || locThree) {
			NPCActive = true;
		} else { NPCActive = false; }
	}

	void DecideLocation() {
		//INCLUDES MIN BUT NOT MAX
		locationNum = Random.Range (1, 4);
		if (locationNum == 1) {
			location = new Vector3 (-7.2f, 1.3f, 3.6f);
		}
		if (locationNum == 2) {
			location = new Vector3 (-13.8f, 1.3f, 8.5f);
		}
		if (locationNum == 3) {
			location = new Vector3 (-8.9f, 1.3f, 14.6f);
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
		if (matNum == 3) {
			NPCRend.material = greyMat;
		}
	}
}
