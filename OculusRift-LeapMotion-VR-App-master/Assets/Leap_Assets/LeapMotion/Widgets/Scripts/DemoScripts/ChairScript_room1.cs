using UnityEngine;
using System.Collections;
using LMWidgets;
using UnityEditor;

public class ChairScript_room1 : ButtonToggleBase {
	public ButtonDemoGraphics onGraphics;
	public ButtonDemoGraphics offGraphics;
	public ButtonDemoGraphics midGraphics;
	public ButtonDemoGraphics botGraphics;
	
	public ButtonCreateObject myObj;
	
	private float x;
	private float z;
	
	private static int myflag;
	private static int refreshflag;
	
	public Color MidGraphicsOnColor = new Color(0.0f, 0.5f, 0.5f, 1.0f);
	public Color BotGraphicsOnColor = new Color(0.0f, 1.0f, 1.0f, 1.0f);
	public Color MidGraphicsOffColor = new Color(0.0f, 0.5f, 0.5f, 0.1f);
	public Color BotGraphicsOffColor = new Color(0.0f, 0.25f, 0.25f, 1.0f);
	
	
	public override void ButtonTurnsOn()
	{
		TurnsOnGraphics();
	}
	
	
	public override void displayObject() {
		
		
		if (myflag == 0) {
			GameObject newObj = new GameObject ();
			newObj.AddComponent<FetchCloud_chair> ();
			AssetDatabase.Refresh();
			while(EditorApplication.isCompiling);
			AssetDatabase.ImportAsset("Assets/Resources/chair1");
			for(int i=0;i<1000;i++)
			{
			}
			myflag = 1;
		}	
		else {

			if(refreshflag == 0)
			{
				AssetDatabase.Refresh();
				refreshflag = 1;
			}

			GameObject myobj = Instantiate (Resources.Load ("chair1")) as GameObject;
			myobj.AddComponent<Furniture_Script> ();
			
			Vector3 size;
			
			myobj.transform.localScale += new Vector3 (5, 5, 5);
			size = myobj.transform.localScale;
			
			myobj.AddComponent<Rigidbody> ();
			myobj.GetComponent<Rigidbody> ().useGravity = true;
			
			myobj.AddComponent<BoxCollider> ();
			myobj.transform.position = new Vector3 (x, 2, z);
			
			x = x + size.x + 1;
			z = z + size.z + 1;
		}
		
	}
	
	public override void ButtonTurnsOff()
	{
		TurnsOffGraphics();
	}
	
	private void TurnsOnGraphics()
	{
		onGraphics.SetActive(true);
		offGraphics.SetActive(false);
		midGraphics.SetColor(MidGraphicsOnColor);
		botGraphics.SetColor(BotGraphicsOnColor);
	}
	
	private void TurnsOffGraphics()
	{
		onGraphics.SetActive(false);
		offGraphics.SetActive(true);
		midGraphics.SetColor(MidGraphicsOffColor);
		botGraphics.SetColor(BotGraphicsOffColor);
	}
	
	private void UpdateGraphics()
	{
		Vector3 position = transform.localPosition;
		position.z = Mathf.Min(position.z, m_localTriggerDistance);
		onGraphics.transform.localPosition = position;
		offGraphics.transform.localPosition = position;
		Vector3 bot_position = position;
		bot_position.z = Mathf.Max(bot_position.z, m_localTriggerDistance - m_localCushionThickness);
		botGraphics.transform.localPosition = bot_position;
		Vector3 mid_position = position;
		mid_position.z = (position.z + bot_position.z) / 2.0f;
		midGraphics.transform.localPosition = mid_position;
		
	}
	
	protected override void Start()
	{
		refreshflag = 0;
		myflag = 0;
		x = 50;
		z = 55;
		base.Start();
	}
	
	protected override void FixedUpdate()
	{
		base.FixedUpdate();
		UpdateGraphics();
	}
}
