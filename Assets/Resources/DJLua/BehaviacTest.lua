
local mClass = {}

function main ()
	return mClass
end

function mClass:nodeClick(_agent)

	Debug.Log("123")
	if not _agent then
		print ("����û���ҵ�")
	end
	print(_agent.Length)
	print(_agent.Table[1].name)

end