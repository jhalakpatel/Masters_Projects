using UnityEngine;
using System.Collections;

public class FetchCloud : MonoBehaviour {

	
	// Use this for initialization
	IEnumerator Start () {
		//https://www.dropbox.com/home/Embedded%20Systems%20Project/Resources/
		// Get the latest webcam shot from outside "Friday's" in Times Square
		//var url = "http://images.earthcam.com/ec_metros/ourcams/fridays.jpg";
		var url = "http://purduemechatronics.com/sarkar/table1.prefab";
		// Start a download of the given URL
		WWW www = new WWW (url);
		
		// Wait for download to complete
		yield return www;
		
		// Print the error to the console
		if (!string.IsNullOrEmpty(www.error))
			print(www.error);
		
		print("www progress = " + www.progress);
		print("www download done");
		
		// assign texture
		//renderer.material.mainTexture = www.texture;
		byte[] data = www.bytes;
		
		#if !UNITY_WEBPLAYER
		//System.IO.File.WriteAllBytes("/Users/jhalakpatel/Desktop/568_OculusLeapMotion_PinchPerfect/Assets/Resources/table1.prefab", data);
		System.IO.File.WriteAllBytes("/Users/jhalakpatel/Desktop/568_OculusLeapMotion_PinchPerfect/Assets/Resources/table1.prefab", data);
		#endif
		print("File written");
		
	}
	
	// Update is called once per frame
	void Update () {
		
	}
}
