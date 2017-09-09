using UnityEngine;
using UnityEditor;
using System.Collections;
using Leap;

public class MagneticScript_Left : MonoBehaviour {

	public const float TRIGGER_DISTANCE_RATIO = 0.5f;//0.7f;
	
	public float forceSpringConstant = 100.0f;
	public float magnetDistance = 2.0f;
	
	protected bool pinching_;
	protected Collider grabbed_;
	
	void Start() {
		pinching_ = false;
		grabbed_ = null;
	}

	void OnPinch(Vector3 pinch_position) {
		pinching_ = true;
		
		// Check if we pinched a movable object and grab the closest one that's not part of the hand.
		Collider[] close_things = Physics.OverlapSphere(pinch_position, magnetDistance);
		Vector3 distance = new Vector3(magnetDistance, 0.0f, 0.0f);
		
		for (int j = 0; j < close_things.Length; ++j) {
			Vector3 new_distance = pinch_position - close_things[j].transform.position;
			if (close_things[j].GetComponent<Rigidbody>() != null && new_distance.magnitude < distance.magnitude &&
			    !close_things[j].transform.IsChildOf(transform)) {
				grabbed_ = close_things[j];
				distance = new_distance;
			}
		}
	}
	
	void OnRelease() {
		grabbed_ = null;
		pinching_ = false;
	}
	
	void Update() {
		bool trigger_pinch = false;
		HandModel hand_model = GetComponent<HandModel>();
		Hand leap_hand = hand_model.GetLeapHand();
		
		if (leap_hand == null)
			return;
		
		// Scale trigger distance by thumb proximal bone length.
		Vector leap_thumb_tip = leap_hand.Fingers[0].TipPosition;
		float proximal_length = leap_hand.Fingers[0].Bone(Bone.BoneType.TYPE_PROXIMAL).Length;
		float trigger_distance = proximal_length * TRIGGER_DISTANCE_RATIO;
		
		// Check thumb tip distance to joints on all other fingers.
		// If it's close enough, start pinching.
		for (int i = 1; i < HandModel.NUM_FINGERS && !trigger_pinch; ++i) {
			Finger finger = leap_hand.Fingers[i];
			
			for (int j = 0; j < FingerModel.NUM_BONES && !trigger_pinch; ++j) {
				Vector leap_joint_position = finger.Bone((Bone.BoneType)j).NextJoint;
				if (leap_joint_position.DistanceTo(leap_thumb_tip) < trigger_distance)
					trigger_pinch = true;
			}
		}
		
		Vector3 pinch_position = hand_model.fingers[0].GetTipPosition();
		
		// Only change state if it's different.
		if (trigger_pinch && !pinching_)
			OnPinch(pinch_position);
		else if (!trigger_pinch && pinching_)
			OnRelease();
		
		// Accelerate what we are grabbing toward the pinch.
		if (grabbed_ != null) {
			//Vector3 temp_item = grabbed_.transform.position;
			//temp_item = new Vector3(temp_item.x,temp_item.z,temp_item.y);
			//print ("x" + temp_item.x+ "y" + temp_item.y+ "z" + temp_item.z);
			//print ("Pinch Position");
			//print ("x" + pinch_position.x + "y" + pinch_position.y + "z"+ pinch_position.z);
			//AssetDatabase.Refresh();
			//AssetDatabase
			Destroy(grabbed_);
			//Vector3 distance = pinch_position - grabbed_.transform.position;
			//grabbed_.GetComponent<Rigidbody>().AddForce(forceSpringConstant * distance);
		}
	}
}
