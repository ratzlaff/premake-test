local fkeep = {}

function fkeep.defaultWorkspace(inName)
	inName = inName or "main"
	workspace(inName)
		configurations {"Debug", "Release"}
		location "tmp"
		fkeep.defaultProject(inName)
end

function fkeep.defaultProject(inName)
	inName = inName or "main"
	project(inName)
		location "log"
		kind "ConsoleApp"
		files "main.cpp"
end

return fkeep
