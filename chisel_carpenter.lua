
local S = chisel.translator

minetest.register_tool("chisel:chisel_carpenter_flint",
  {
    description = "Flint Carpenter Chisel",
    inventory_image = "chisel_chisel_carpenter_flint.png",
    groups = {chisel = 1},
    tool_capabilities = {
      full_punch_interval = 1.2,
      max_drop_level = 0,
      groupcaps = {
      },
      damage_groups = {fleshy = 1},
    },
    _technical_drawings_tool = {
      category_name = "chisel_carpenter",
    },
    on_use = chisel.chisel_on_use
  })

minetest.register_tool("chisel:chisel_sculpting_bronze",
  {
    description = "Bronze Sculpting Chisel",
    inventory_image = "chisel_chisel_sculpting_brozne.png",
    groups = {chisel = 1},
    tool_capabilities = {
      full_punch_interval = 1.2,
      max_drop_level = 0,
      groupcaps = {
      },
      damage_groups = {fleshy = 1},
    },
    on_use = chisel.chisel_on_use
  })

