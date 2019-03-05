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
		objdir "tmp/obj/%{cfg.name}"
		targetdir "tmp/bin/%{cfg.name}"
		location "log"
		kind "ConsoleApp"
		files "main.cpp"
		links {inName .. "_shared"}

	project(inName .. "_shared")
		objdir "tmp/obj/%{cfg.name}"
		targetdir "tmp/lib/%{cfg.name}"
		location "log"
		kind "SharedLib"
		files "plugin.cpp"

end

return fkeep
