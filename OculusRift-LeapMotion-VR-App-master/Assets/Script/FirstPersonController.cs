﻿using UnityEngine;
using System.Collections;

public class FirstPersonController : MonoBehaviour {
	public float movementSpeed = 10.0f;
	public float mouseSensitivity =5.0f;
	public float upDownRange =60.0f;

	float verticalRotation = 0;

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	//if(Input.GetButtonUp
		//Rotate 

		float rotLeftRight = Input.GetAxis ("Mouse X") * mouseSensitivity;
		transform.Rotate (0, rotLeftRight, 0);

		verticalRotation = Input.GetAxis ("Mouse Y")* mouseSensitivity;
		verticalRotation = Mathf.Clamp (verticalRotation, -upDownRange, upDownRange);
		Camera.main.transform.localRotation = Quaternion.Euler (verticalRotation,0,0);
		//float currentUpDown = Camera.main.transform.rotation.eulerAngles.x;
		//float desiredUpDown = currentUpDown - rotUpDown;

		//Debug.Log (desiredUpDown);


		//Camera.main.transform.Rotate (-rotUpDown, 0, 0);
		//Camera.main.transform.rotation.Set(desiredUpDown,


		//Movements
		float forwardSpeed = Input.GetAxis ("Vertical") * movementSpeed;
		float sideSpeed = Input.GetAxis ("Horizontal")* movementSpeed;

		Vector3 speed = new Vector3 (sideSpeed, 0, forwardSpeed);// /(x, y, z) l/r  u/d  fwd/bwd

		speed = transform.rotation * speed;
		CharacterController cc = GetComponent<CharacterController>();

		cc.SimpleMove (speed);
	}
}
