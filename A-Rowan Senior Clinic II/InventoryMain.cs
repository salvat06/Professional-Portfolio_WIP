using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/* This is the main inventory management script.  It keeps track of items in the inventory.
 * It contains the following:
 * - Items: A dynamic list of the objects in the inventory.
 * - show:	A boolean that controls whether the inventory is displayed or not.
 * - space:	An integer that controls how many items the inventory can hold.
 * - master:	Master list of item qualities.
 * - GetItem (int): Returns the item at the specified index.
 * - AddItem (int):	Adds an item of the specified identifier, as retrieved from the master list.
 * - RemoveItem (int): Removes an item of the specified identifier.
 * - NumItems ():	Returns the number of items in the inventory.
 * - OnGUI ():	Displays the GUI.  Build-in Unity function.
 */

public class InventoryMain : MonoBehaviour
{
	
		//Variables:
		private List<Item> Items = new List<Item> ();	/* List of all items currently in the inventory.
											 		 * The Item class is defined in this script.
											 		 */
		private Item actitem;	//Currently actitem item in the inventory.
		public int space;	//Controls how much space the inventory has.  Can be assigned in the inspector or modified externally.
		public bool show;	//Controls whether the inventory GUI is displayed.
		public ItemMasterList master;	//Master list of items.  Should be assigned in the inspector manually.
		//Used for GUI:
		public Vector2 listslider = new Vector2 (0f, 0f);	//Scroll controller.
		public Texture bag;	//Image of a bag.  Assigned in inspector.
		public GUIStyle style;	//GUIStyle used by GUI.  Assigned in inspector.
		public GameObject invencam;	//Camera used for inventory.  Assigned manually.
		public GameObject itemspawn, newobj;	//Controls where items spawn when seen in the 3D preview.  Assigned in inspector.
	
		// Use this for initialization
		void Start ()
		{
				space = 10;	//Default value for space.
				show = false;	//Defaults to the inventory not showing.
		
		}
	
		// Update is called once per frame
		void Update ()
		{
				//Keeps the inventory camera updated.  The player camera must be controlled from the script that turns the inventory on and off.
				invencam.SetActive (show);
		}
	
		//Used to display GUI.
		void OnGUI ()
		{
				//Inventory display:
				if (show) {
			
						//Item List on the side:
						listslider = GUI.BeginScrollView (new Rect (Screen.width * 0.7f, Screen.height * 0.1f + 50f, Screen.width * 0.2f, Screen.height * 0.8f), listslider, new Rect (5f, 5f, Screen.width * 0.2f - 16f, (float)Items.Count * 200f));
						//Individual item listings:
						for (int i = 0; i < Items.Count; i++) {
								//Main Button
								if (GUI.Button (new Rect (5f, i * 200f + 5f, Screen.width * 0.2f - 20f, 200f), "")) {
										actitem = Items [i];
										ItemRefresh ();
								}
								//Item preview image:
								GUI.Label (new Rect (10f, i * 200f + 10f, 90f, 90f), master.GetByID (Items [i].ID ()).Pic ());
								//Item name:
								GUI.Label (new Rect (100f, i * 200f + 25f, Screen.width * 0.1f, 50f), master.GetByID (Items [i].ID ()).Name ());
								//Short item description:
								int n;
								if (master.GetByID (Items [i].ID ()).Descrip ().Length > 100)
										n = 100;
								else
										n = master.GetByID (Items [i].ID ()).Descrip ().Length;
								GUI.Label (new Rect (10f, i * 200f + 110f, Screen.width * 0.2f - 10f, 90f), master.GetByID (Items [i].ID ()).Descrip ().Substring (0, n) + "...");
						}
						GUI.EndScrollView ();
			
						GUI.Box (new Rect (Screen.width * 0.68f, Screen.height * 0.1f, Screen.width * 0.25f - 100f, 50f), "My Bag", style);
						GUI.Box (new Rect (Screen.width * 0.93f - 100f, Screen.height * 0.05f, 100f, 100f), bag);
			
						if (actitem != null) {
								GUI.Box (new Rect (Screen.width * 0.1f, Screen.height * 0.1f, 500f, 50f), master.GetByID (actitem.ID ()).Name (), style);
								GUI.BeginScrollView (new Rect (Screen.width * 0.1f, Screen.height * 0.7f, Screen.width * 0.5f, Screen.height * 0.2f), new Vector2 (0f, 0f), new Rect (0, 0, Screen.width * 0.5f - 16, 500f));
								GUI.Box (new Rect (0f, 0f, Screen.width * 0.5f - 16, 500f), "Type: " + master.GetByID (actitem.ID ()).Type () + "\n" + "Weight: " + master.GetByID (actitem.ID ()).Weight ().ToString () + "\n" + master.GetByID (actitem.ID ()).Descrip (), style);
								GUI.EndScrollView ();
						} else {
								GUI.Box (new Rect (Screen.width * 0.1f, Screen.height * 0.1f, 500f, 50f), "", style);
								GUI.Box (new Rect (0f, 0f, Screen.width * 0.5f, Screen.height * 0.2f), "", style);
						}
			
				}
		
		}
	
		public Item GetItem (int index)
		{
				//Returns the item at the specified index in the list of items.  Returns null if the index is out of bounds.
				if (index < Items.Count) {
						return Items [index];
				} else {
						return null;
				}
		}
	
		public bool AddItem (Item newItem)
		{
				//Adds an item to the list.  The Item() constructors can be called within the arguments if needed.
				//Returns false if the inventory is full.
				if (Items.Count < space) {
						Items.Add (newItem);
						return true;
				} else {
						return false;
				}
		}
	
		public bool RemoveItem (Item remItem)
		{
				//Removes an item from the list.  Returns false if that item is not in the list.
				int i = Items.IndexOf (remItem);
				if (i >= 0) {
						Items.Remove (Items [i]);
						return true;
				} else {
						return false;
				}
		}
	
		public int NumItems ()
		{
				//Returns the number of item instances in the list, not the total quantity of all the items in the list.
				return Items.Count;
		}

		private void ItemRefresh ()
		{
				//Refreshes the actitem 3D object in the inventory to match the new item.
				//This keeps track of which item is the current preview with the tag inven_pre.
				Destroy (GameObject.FindGameObjectWithTag ("inven_pre"));	//Removes the old object.
				newobj = Instantiate (master.GetByID (actitem.ID ()).Model (), itemspawn.transform.position, itemspawn.transform.rotation) as GameObject;
				newobj.tag = "inven_pre";	//Tags the new object to be able to identify it later.
				newobj.rigidbody.AddTorque (Vector3.up * -0.5f, ForceMode.VelocityChange);
		}
}

public class Item
{
		/* This class describes a single instance of an item currently in the inventory.
	 * The actual item data is stored in the master list.
	 * This class is designed to minimize the amount of redundancy between master data and instance data.
	 * As such, this class only contains a reference identifier, a quantity, and a list of instance-specific properties.
	 * The class must be constructed by ID.  It can also be constructed with quantiy and properties.
	 * The class contains the following functions:
	 * - GetID():	Returns the reference ID of the item.
	 * - GetQuant():	Returns the quantity.
	 * - ChangeQuant(int):	Changes the quantity of the item.  Also covers removing an item with zero or less quantity.
	 * 		Returns false if the resulting qunatity is less than 1, in which case the item is removed from the list.
	 * - GetProp(int):	Returns the properties of the instance by index.
	 * - AddProp(string):	Adds a property to the item.
	 * - RemProp(int) or RemProp(string):	Removes a property from the item; returns false if the item doesn't have that property.
	 */
	
		//Variables:
		private int id;	//Identifier.  Cannot be chanced after construction.
		private int quant;	//Quantity.
		private List<string> prop;	//List of instance-specific properties.
	
		//Constructors:
		//No default constructor exists.  An ID must be specified.
	
		//By ID:
		public Item (int identifier)
		{
				id = identifier;
				quant = 1;
				prop = new List<string> ();
		}
	
		//By ID and quantity:
		public Item (int identifier, int quantity)
		{
				id = identifier;
				quant = quantity;
				prop = new List<string> ();
		}
	
		//By ID, quantity, and properties:
		public Item (int identifier, int quantity, List<string> properties)
		{
				id = identifier;
				quant = quantity;
				prop = properties;
		}
	
		//Getters:
		public int ID ()
		{
				//Returns the ID of the item.
				return id;
		}
	
		public int Quant ()
		{
				//Returns the quantity.
				return quant;
		}
	
		public int CntProp ()
		{
				//Returns the number of properties on the object.
				return prop.Count;
		}
	
		public string GetProp (int index)
		{
				//Returns the properties on the object.  Returns null if the index is out of bounds.
				if (index < prop.Count) {
						return prop [index];
				} else {
						return null;
				}
		}
	
		//Mutators:
		public bool ChangeQuant (int modifier)
		{
				//Modifies the quantity of the item.
				quant += modifier;
				//If the resulting quantity is less than 1, destroy the item, removing it from the inventory.
				if (quant <= 0) {
						/* Item destruction not yet implemented.
			~Item () {
			}
			*/
						return false;
				}
				return true;
		}
	
		public void AddProp (string property)
		{
				//Adds a property to an item.
				prop.Add (property);
		}
	
		public bool RemProp (int index)
		{
				//Removes a property from the object by index.  Returns false if the index is out of bounds.
				if (index < prop.Count) {
						prop.Remove (prop [index]);
						return true;
				} else {
						return false;
				}
		}
	
		public bool RemProp (string property)
		{
				//Removes a property from the object by name.
				int i = prop.IndexOf (property);
				if (i >= 0) {
						prop.Remove (prop [i]);
						return true;
				} else {
						return false;
				}
		}
			
	
}
