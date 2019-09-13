package.path = package.path .. ";" .. os.getcwd() .. "/../../?.lua"
local fkeep = require "fkeep_config"

fkeep.defaultWorkspace()
	fkeep.defaultSetup()
		base "%{prj.location}/../../.."
		files {"%{prj.base}/src/same/Main.cpp"}
