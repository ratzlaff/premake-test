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
	fkeep.mainName = inName
	project(inName)
		objdir "tmp/obj/%{cfg.name}"
		targetdir "tmp/bin/%{cfg.name}"
		location "log"
		kind "ConsoleApp"
		files { "%{prj.base}/src/main.cpp" }
		includedirs { "%{prj.base}/src" }
end

function fkeep.defaultShared(inName)
	inName = inName or "shared"
	fkeep.sharedName = inName
	project(inName)
		objdir "tmp/obj/%{cfg.name}"
		targetdir "tmp/lib/%{cfg.name}"
		location "log"
		kind "SharedLib"
		files { "%{prj.base}/src/shared.cpp" }
		includedirs { "%{prj.base}/src" }
end

function fkeep.defaultPlugin(inName)
	inName = inName or "plugin"
	fkeep.pluginName = inName
	project(inName)
		objdir "tmp/obj/%{cfg.name}"
		targetdir "tmp/plugins/%{cfg.name}"
		location "log"
		kind "SharedLib"
		files { "%{prj.base}/src/plugin.cpp" }
		includedirs { "%{prj.base}/src" }
		links { fkeep.sharedName }
end

function fkeep.defaultSetup()
	fkeep.defaultWorkspace()
	fkeep.defaultProject()
end

premake.api.register {
	name = "base",
	scope = "project",
	kind = "directory",
}

return fkeep
