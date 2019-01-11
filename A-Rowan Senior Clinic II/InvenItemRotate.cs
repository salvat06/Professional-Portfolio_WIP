using UnityEngine;
using System.Collections;

public class InvenItemRotate : MonoBehaviour {
	//Allows an item to rotate when the mouse is clicked on it and moved.
	//Designed for use with InventoryMain.cs.
	public bool enable;	//Enables the rotation from the inspector.
	private float last, next;
	private bool act;	//Tracks whether the script is active.

	void Start() {
		last = -1;	//Set last to unclicked.
	}

	void FixedUpdate() {
		if(act){
			next = Input.mousePosition.x/Screen.width;
			if(Debug.isDebugBuild){
				Debug.Log(next-last);
			}
			rigidbody.AddTorque(Vector3.up * -50f*(next-last));
			last = next;
		}
	}

	void OnMouseDown() {
		if(Debug.isDebugBuild){
			Debug.Log ("Click!");
		}
		act = true;
		last = Input.mousePosition.x/Screen.width;
	}

	void OnMouseUp() {
		act = false;
	}

}
