-- ***********************************************************
-- ͨ�ð�
-- ***********************************************************
import "UnityEngine"
import "FairyGUI"
-- ***********************************************************

-- ***********************************************************
-- �Զ����
-- ***********************************************************
import "DJLuaTools"
-- ***********************************************************


-- ***********************************************************
-- ������
-- ***********************************************************
require("DJLua/Library/dump")
require("DJLua/Library/Object")
-- ***********************************************************

-- ***********************************************************
-- ��Ϊ������Ҫ�Ļ�����
-- ***********************************************************
require("DJLua.Behavior3Js.mod.behavior.util")
require("DJLua/Behavior3Js/mod/behavior/core/YJBehavior")

require("DJLua/Behavior3Js/mod.behavior.core.BaseNode")
require("DJLua/Behavior3Js/mod.behavior.core.Tick")
require("DJLua/Behavior3Js/mod.behavior.core.Action")
require("DJLua/Behavior3Js/mod.behavior.core.Composite")
require("DJLua/Behavior3Js/mod.behavior.core.Condition")
require("DJLua/Behavior3Js/mod.behavior.core.Decorator")
require("DJLua/Behavior3Js/mod.behavior.core.Blackboard")
require("DJLua/Behavior3Js/mod.behavior.composites.Priority")
require("DJLua/Behavior3Js/mod.behavior.composites.Sequence")
require("DJLua/Behavior3Js/mod.behavior.composites.MemSequence")
require("DJLua/Behavior3Js/mod.behavior.composites.AllSequence")
require("DJLua/Behavior3Js/mod.behavior.actions.Wait")
require("DJLua/Behavior3Js/mod.behavior.conditions.EqualCondition")
-- ***********************************************************

-- ***********************************************************
-- ��Ϸ�߼�����Ҫ�İ�
-- ***********************************************************

-- ������
require("DJLua/Behavior3Js/mod.behavior.conditions.Condition_IsDead")

-- �¼���
require("DJLua/Behavior3Js/mod.behavior.actions.Action_ChangeHp")
require("DJLua/Behavior3Js/mod.behavior.actions.Action_Reborn")

-- ***********************************************************

local mClass = { }

function main()
    return mClass
end