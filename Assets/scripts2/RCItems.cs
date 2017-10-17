using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RCItems : MonoBehaviour {

	void Update() {
		Ray myRay = Camera.main.ScreenPointToRay (Input.mousePosition);
		float maxRayDist = 50f;
	}
}
