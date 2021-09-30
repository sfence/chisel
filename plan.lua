
local S = chisel.translator


minetest.register_tool("chisel:shape_plan",
  {
    description = "Shaping Plan",
    inventory_image = "chisel_shape_plan.png",
    groups = {chisel = 1},
    tool_capabilities = {
      full_punch_interval = 1.2,
      max_drop_level = 0,
      groupcaps = {
      },
      damage_groups = {},
    },
    on_use = chisel.chisel_on_use
  })

