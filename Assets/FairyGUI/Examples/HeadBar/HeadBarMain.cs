﻿using UnityEngine;
using FairyGUI;

public class HeadBarMain : MonoBehaviour
{
	GComponent _mainView;

	void Start()
	{
		Application.targetFrameRate = 60;

		Stage.inst.onKeyDown.Add(OnKeyDown);
		
		Transform npc = GameObject.Find("npc1").transform;
		UIPanel panel = npc.FindChild("HeadBar").GetComponent<UIPanel>();
		panel.ui.GetChild("name").text = "Long [color=#FFFFFF]Long[/color][img]" + UIPackage.GetItemURL("HeadBar", "cool") + "[/img] Name";
		panel.ui.GetChild("blood").asProgress.value = 75;
		panel.ui.GetChild("sign").asLoader.url = UIPackage.GetItemURL("HeadBar", "task");

		npc = GameObject.Find("npc2").transform;
		panel = npc.FindChild("HeadBar").GetComponent<UIPanel>();
		panel.ui.GetChild("name").text = "Man2";
		panel.ui.GetChild("blood").asProgress.value = 25;
		panel.ui.GetChild("sign").asLoader.url = UIPackage.GetItemURL("HeadBar", "fighting");
	}

	void OnKeyDown(EventContext context)
	{
		if (context.inputEvent.keyCode == KeyCode.Escape)
		{
			Application.Quit();
		}
	}
}