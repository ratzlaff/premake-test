[[ -d tmp ]] && rm -rf tmp
premake5 --file=fkeep.lua --os=windows vs2017
premake5 --file=fkeep.lua --os=linux gmake2
premake5 --file=fkeep.lua --os=macosx xcode4
