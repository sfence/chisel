
chisel = {
  translator = minetest.get_translator("chisel")
}

local modname = minetest.get_current_modname()
local modpath = minetest.get_modpath(modname)


dofile(modpath.."/functions.lua")
--dofile(modpath.."/chisel_carpenter.lua")
dofile(modpath.."/chisel_stonemason.lua")

dofile(modpath.."/facade.lua")

