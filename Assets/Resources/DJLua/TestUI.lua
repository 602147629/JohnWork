if not UnityEngine.GameObject or not  UnityEngine.UI then
	error ("Click Make/All to generate lua wrap file")
end

local mClass = {}

function main ()
	mClass._mainView = GameObject.Find ("UIPanel");
	if not mClass._mainView  then
		error ("�Ҳ�������:UIPanel")
		return
	end
	mClass._panel = mClass._mainView:GetComponent ("UIPanel")
	if not mClass._panel  then
		error ("�Ҳ������")
		return
	end
	print("1")
	mClass.ui = mClass._panel.ui
	n1 = mClass.ui:GetChild ("n1")
	n2 = mClass.ui:GetChild ("n2")
	mClass.asLoader = n2.asLoader
	child = n1.onClick
	child:Clear ()
	print ("2")
	child:Add (function ()
		print("4")
		if not mClass.asLoader then
			error ("װ�����Ҳ���")
		end
		if not mClass.asLoader.url then
			error ("�Ҳ���װ������url")
		end
		item = UIPackage.GetItemURL ("DJFairyUI_Test", "Button_Grey")
		if not item then
			error ("û�ҵ�ͼ����Դ")
		end
	end)
	print("3")
	return mClass
end

-- �ڵ㱻����
function nodeClick (_agent)

-- ʵ����Ҫȥ���ñ�ʵ�ֵ��ӽڵ㣬����Ҫ��¶��Lua�ӿ�
	Debug.Log ("123")
	Debug.Log (_agent.Name)

end

