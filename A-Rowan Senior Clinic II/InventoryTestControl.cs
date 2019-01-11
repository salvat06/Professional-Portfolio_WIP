using UnityEngine;
using System.Collections;

public class InventoryTestControl : MonoBehaviour {
	//Turns the inventory on and off.  Used for testing purposes.

	//Variables:
	public InventoryMain inven;	//Assigned in inspector.
	public GameObject maincam;	//Main camera.

	void Start(){
		//Add items to the inventory.
		inven.AddItem (new Item (1));
		inven.AddItem (new Item (2));
		inven.AddItem (new Item (3));
		inven.AddItem (new Item (4));
		inven.AddItem (new Item (5));
		inven.AddItem (new Item (6));
		inven.AddItem (new Item (1));
		inven.AddItem (new Item (2));
		inven.AddItem (new Item (3));
	}

	void OnGUI(){
		//Create buttons to toggle the inventory on and off.
		if(inven.show){
			if(GUI.Button(new Rect(5f, Screen.height - 55f, 100f, 50f), "Close")){
				inven.show = false;
				maincam.SetActive(true);
			}
		}
		else{
			if(GUI.Button(new Rect(5f, Screen.height - 55f, 100f, 50f), "Open")){
				inven.show = true;
				maincam.SetActive(false);
			}
		}
	}
}
