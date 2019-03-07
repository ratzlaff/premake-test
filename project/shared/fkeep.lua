package.path = package.path .. ";" .. os.getcwd() .. "/../../?.lua"
local fkeep = require "fkeep_config"

fkeep.defaultSetup()
	base "%{prj.location}/../../.."
fkeep.defaultShared()
	base "%{prj.location}/../../.."
project(fkeep.mainName)
	links { fkeep.sharedName }
