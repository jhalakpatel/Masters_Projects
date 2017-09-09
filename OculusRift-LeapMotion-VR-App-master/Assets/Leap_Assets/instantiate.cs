using UnityEngine;
using System.Collections;

public class instantiate : MonoBehaviour {
	private float x;
	private float y;
	
	void start(){
		x = 0;
		y = 0;
	}
	
	public void displayObject() {
		
		GameObject cube = GameObject.CreatePrimitive(PrimitiveType.Cube);
		
		Vector3 size;
		
		size = cube.transform.localScale;
		
		cube.AddComponent<Rigidbody>();
		cube.transform.position = new Vector3(x, y, 0);
		
		
		x = x + size.x + 1;
		y = y + size.y + 1;
		
	}
}
