
local S = chisel.translator;

minetest.register_tool("chisel:chisel_stonemason_wood",
  {
    description = "Hard Wood Stonemason Chisel",
    inventory_image = "chisel_chisel_stonemason_wood.png",
    wield_image = "chisel_chisel_stonemason_wood.png^[transformFY",
    groups = {chisel = 1},
    tool_capabilities = {
      full_punch_interval = 1.2,
      max_drop_level = 0,
      groupcaps = {
      },
      damage_groups = {fleshy = 1},
    },
    _technical_drawings_tool = {
      category_name = "chisel_stonemason",
      interval = 3,
      power = 2,
      wear = 1000,
    },
    on_use = technical_drawings.tool_on_use,
  })

minetest.register_tool("chisel:chisel_stonemason_stone",
  {
    description = "Flint Stonemason Chisel",
    inventory_image = "chisel_chisel_stonemason_stone.png",
    wield_image = "chisel_chisel_stonemason_stone.png^[transformFY",
    groups = {chisel = 1},
    tool_capabilities = {
      full_punch_interval = 1.2,
      max_drop_level = 0,
      groupcaps = {
      },
      damage_groups = {fleshy = 1},
    },
    _technical_drawings_tool = {
      category_name = "chisel_stonemason",
      interval = 3,
      power = 3,
      wear = 750,
    },
    on_use = technical_drawings.tool_on_use
  })

