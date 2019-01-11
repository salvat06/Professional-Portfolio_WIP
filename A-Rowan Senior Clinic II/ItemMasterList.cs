using UnityEngine;
using System.Collections;
using System.Collections.Generic;

/* This class is used as a central database of immutable item properties for an inventory system.
 * It is designed so that each instance of an item can be relatively small in size, containing only a few integers.
 * Any time more detailed info about the item is required, it can be fetched from the master list.
 * The master list is not designed to dynamically change during runtime.
 * Any dynamically changing item properties should be handled on an instance-by-instance basis.
 * The master list uses the ItemType class, which contains a large amount of information about an item.
 */

public class ItemMasterList : MonoBehaviour
{
	
		private List<ItemType> Master = new List<ItemType> ();
	
		// Use this for initialization
		void Start ()
		{
				//Populate the item list:

				//Test Items:
				//Test item 001:
				Master.Add (new ItemType (1, "Test001", "1", "Test", "Test Item #001", 1f,
		                        Resources.Load ("InventoryTestResources/Red32") as Texture2D,
		                        Resources.Load ("InventoryTestResources/[Test]Item001") as GameObject));
				//Test item 002:
				Master.Add (new ItemType (2, "Test002", "2", "Test", "Test Item #002", 1f,
		                        Resources.Load ("InventoryTestResources/Green32") as Texture2D,
		                        Resources.Load ("InventoryTestResources/[Test]Item002") as GameObject));
				//Test item 003:
				Master.Add (new ItemType (3, "Test003", "3", "Test", "Test Item #003", 1f,
		                        Resources.Load ("InventoryTestResources/Blue32") as Texture2D,
		                        Resources.Load ("InventoryTestResources/[Test]Item003") as GameObject));
				//Test item 004:
				Master.Add (new ItemType (4, "Test004", "4", "Test", "Test Item #004", 1f,
		                          Resources.Load ("InventoryTestResources/Red32") as Texture2D,
		                          Resources.Load ("InventoryTestResources/[Test]Item004") as GameObject));
				//Test item 005:
				Master.Add (new ItemType (5, "Test005", "5", "Test", "Test Item #005", 1f,
		                          Resources.Load ("InventoryTestResources/Green32") as Texture2D,
		                          Resources.Load ("InventoryTestResources/[Test]Item005") as GameObject));
				//Test item 006:
				Master.Add (new ItemType (6, "Test006", "6", "Test", "Test Item #006", 1f,
		                          Resources.Load ("InventoryTestResources/Blue32") as Texture2D,
		                          Resources.Load ("InventoryTestResources/[Test]Item006") as GameObject));

		}
	
		public ItemType GetByID (int identifier)
		{
				//This returns an item from the master list with the specified ID.
				foreach (ItemType item in Master) {
						if (item.ID () == identifier) {
								return item;
						}
				}
				return null;
		}
	
}

public class ItemType
{
		/* Class designed to contain an individual item listing in the master list.
	 * It contains a bunch of values and getters for each of them.
	 * Item qualities cannot be chanced after they are initialized in the constructor.
	 */
	
		//Variables:
		private int id;	//Integer identifier.  Unique to the object.  Links the ItemType to any instances of it.
		private string name;	//Full name of the item.
		private string sname;	//Short reference name of the item.
		private string type;	//Type of item.
		private string descrip;	//Description of item.
		private float weight;	//Weight of the item.
		private Texture2D pic;	//2D picture of the item.
		private GameObject model;	//3D model of the item.
		private List<string> prop;	//Additional properties of the item.

		//Constructors:
		//No default constructor exists.  All properties must be initialized in the constructor.
		//Normal:
		public ItemType (int ID, string Name, string ShortName, string Type, string Description, float Weight, Texture2D Picture, GameObject Model)
		{
				id = ID;
				name = Name;
				sname = ShortName;
				type = Type;
				descrip = Description;
				weight = Weight;
				pic = Picture;
				model = Model;
				prop = null;
		}

		//With additional properties:
		public ItemType (int ID, string Name, string ShortName, string Type, string Description, float Weight, Texture2D Picture, GameObject Model, List<string> Properties)
		{
				id = ID;
				name = Name;
				sname = ShortName;
				type = Type;
				descrip = Description;
				weight = Weight;
				pic = Picture;
				model = Model;
				prop = Properties;
		}

		//Getters:
	
		public int ID ()
		{
				return id;
		}
	
		public string Name ()
		{
				return name;
		}
	
		public string Sname ()
		{
				return sname;
		}
	
		public string Type ()
		{
				return type;
		}
	
		public string Descrip ()
		{
				return descrip;
		}
	
		public float Weight ()
		{
				return weight;
		}
	
		public Texture2D Pic ()
		{
				return pic;
		}
	
		public GameObject Model ()
		{
				return model;
		}
	
		public List<string> Properties ()
		{
				return prop;
		}
	
}