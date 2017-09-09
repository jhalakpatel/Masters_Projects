using UnityEngine;
using System.Collections;

public class PlaneScript : MonoBehaviour {
	// Use this for initialization
	void Start () {
		Renderer hello = gameObject.GetComponent<Renderer> ();
		hello.material.color = Color.gray;
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
