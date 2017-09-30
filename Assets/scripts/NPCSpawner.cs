using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NPCSpawner : MonoBehaviour {

	public Transform NPC;

	float startSpawnTimer = 5f;

	int locationNum; //location of spawn based on number generated
	Vector3 location;

	//check if location of spawn is already filled
	public bool locOne;
	public bool locTwo;
	public bool locThree;


	void Update() {
		//Debug.Log (startSpawnTimer);
		if (startSpawnTimer > 0f) {
			startSpawnTimer -= Time.deltaTime;
		}
		if (startSpawnTimer <= 0.001f) {
			DecideLocation (); //might be decided based on current location of original...so just keep it out of view
			//Debug.Log (locationNum);
			Instantiate (NPC, location, Quaternion.identity);

			startSpawnTimer = 5f;
		}
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
}
