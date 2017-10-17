using System.Collections;
using System.Collections.Generic;
using UnityEngine;


//NOT WORKING
public class ColorLerp : MonoBehaviour {

	//public Color orange;
	//public Color green;
	//public Color yellow;
	public Color white;
	public Material matColor;
	Color orgColor;
	Renderer rend;

	public GameObject player;
	float distance;

	void Start() {
		rend = GetComponent<Renderer> ();
		orgColor = matColor.color;
		rend.material.color = white;
	}

	void Update() {
		Debug.Log (distance);
		distance = Vector3.Distance (player.transform.position, transform.position);

		if (distance < 7f) {
			rend.material.color = Color.Lerp (white, orgColor, distance);
		} else {
			rend.material.color = orgColor;
		}
	}
}
