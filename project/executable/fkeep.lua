package.path = package.path .. ";" .. os.getcwd() .. "/../../?.lua"
local fkeep = require "fkeep_config"

fkeep.defaultSetup()
	defines { "MAIN_ONLY" }
	base "%{prj.location}/../../.."
