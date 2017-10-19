using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DoorScript : MonoBehaviour {

	public AudioClip doorJiggle;
	float distance;
	public GameObject player;


	void Update() {
		distance = Vector3.Distance (transform.position, player.transform.position);
	}

	void OnMouseOver() {
		if (distance < 5f) {
			if (Input.GetMouseButtonUp(0)) {
				Sound.me.PlaySound (doorJiggle, 3);
			}
		}
	}
}
