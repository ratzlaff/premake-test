package.path = package.path .. ";" .. os.getcwd() .. "/../../?.lua"
local fkeep = require "fkeep_config"

fkeep.defaultWorkspace()
	fkeep.defaultProject()
		language "C++"
		base "../.."
		files {"../../src/*.c"}
		filter {"files:../../src/file_cpp.c"}
			compileas "C++"
