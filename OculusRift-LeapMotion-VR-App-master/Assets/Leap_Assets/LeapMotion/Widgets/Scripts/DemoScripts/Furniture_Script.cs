using UnityEngine;
using System.Collections;

public class Furniture_Script : MonoBehaviour {

	// Use this for initialization
	void Start () {
		this.GetComponent<Rigidbody> ().constraints = RigidbodyConstraints.FreezeAll;
		this.GetComponent<Rigidbody> ().mass = 2;
		this.GetComponent<Rigidbody> ().drag = 3;
		this.GetComponent<Rigidbody> ().angularDrag = 1;
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}
	
	void OnCollisionEnter(Collision collison) {
		//print (collison.gameObject.name);
		
		if(collison.gameObject.name=="palm" | collison.gameObject.name=="bone2"|collison.gameObject.name=="bone3"|collison.gameObject.name=="bone1"){
			this.GetComponent<Rigidbody> ().constraints = RigidbodyConstraints.FreezeRotationX | RigidbodyConstraints.FreezeRotationY;
		} else {
			this.GetComponent<Rigidbody> ().constraints = RigidbodyConstraints.FreezeAll;
		}
	}
	
}