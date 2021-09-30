
local S = chisel.translator

local modname = minetest.get_current_modname()
local modpath = minetest.get_modpath(modname)

-- technical drawing for facade

local drawings = {
  ["bannerstone"] = "Bannerstone",
  ["bannerstone_corner"] = "Bannerstone Corner",
  ["carved_stone_a"] = "Carved Stone A",
  ["carved_stone_a_corner"] = "Carved Stone A Corner",
  ["centerstone"] = "Centerstone",
  ["column"] = "Column",
  ["column_corner"] = "Column Corner",
  ["corbel"] = "Corbel",
  ["corbel_corner"] = "Corbel Corner",
  ["corbel_inner_corner"] = "Corbel Inner Corner",
  ["rgspro"] = "RGSpro",
}

for drawing,desc in pairs(drawings) do
  technical_drawings.register_drawing("facade_"..drawing, {
      description = S("Facade").." "..desc,
      inventory_image = "chisel_techdraw_facade_"..drawing..".png",
      drawing = dofile(modpath.."/data/facade_"..drawing..".lua"),
    })
end

--[[
technical_drawings.register_drawing("facade_rgspro_inner_corner", {
    description = S("Facade RGSpro Inner Corner"),
    inventory_image = "chisel_techdraw_facade_inner_corner.png",
    drawing = dofile(modpath.."/data/facade_rgspro_inner_corner.lua"),
  })
technical_drawings.register_drawing("facade_rgspro_outer_corner", {
    description = S("Facade RGSpro Outer Corner"),
    inventory_image = "chisel_techdraw_facade_outer_corner.png",
    drawing = dofile(modpath.."/data/facade_rgspro_outer_corner.lua"),
  })
--]]

local stone_materials = {
  ["default:sandstone"] = "facade:sandstone_",
  ["default:desert_sandstone"] = "facade:desert_sandstone_",
  ["default:silver_sandstone"] = "facade:silver_sandstone_",
  ["default:stone"] = "facade:stone_",
  ["default:desert_stone"] = "facade:desert_stone_",
}

for drawing,_ in pairs(drawings) do
  for material,prefix in pairs(stone_materials) do
    technical_drawings.register_recipe("facade_"..drawing, "chisel_stonemason", material, {
        output = prefix..drawing,
        work_points = 5, -- 50
        resistance = 2,
      })
  end
end

