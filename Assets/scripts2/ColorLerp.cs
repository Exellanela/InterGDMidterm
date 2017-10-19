using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ColorLerp : MonoBehaviour {

	public GameObject player;
	float distance;

	public Color orgColor;
	public Color white;
	Renderer rend;

	float floor;
	float ceiling;
	float emission;
	Color emitColor;


	void Start() {
		rend = GetComponent<Renderer>();
		floor = 0.1f;
		ceiling = 0.9f;
	}

	void Update() {
		distance = Vector3.Distance (transform.position, player.transform.position);

		emission = floor + Mathf.PingPong (Time.time, ceiling - floor);
		emitColor = white * Mathf.LinearToGammaSpace (emission);
		if (distance < 7f) {
			rend.material.color = orgColor;
			rend.material.SetColor ("_EmissionColor", Color.black);
		} else {
			rend.material.color = white;
			rend.material.SetColor ("_EmissionColor", emitColor);
		}
	}
}
