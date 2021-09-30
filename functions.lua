
chisel.worked_nodes = {}

chisel.register_worked_node = function(node_name, node_worked, def)
  if (chisel.worked_nodes[node_name]==nil) then
    chisel.worked_nodes[node_name] = {};
  end
  chisel.worked_nodes[node_name][node_worked] = def;
end

local function player_message(player, message)
  if player then
    local player_name = player.get_player_name()
    if player_name and (player_name~="") then
      minetest.chat_send_player(player_name, message)
    end
  end
end

chisel.chisel_on_use = function(itemstack, user, pointed_thing)
  if (pointed_thing.type=="node") then
    local node = minetest.get_node(pointed_thing.under)
    
    local worked_nodes = chisel.worked_nodes[node.name];
    
    if (worked_nodes~=nil) then
      if user then
        local list = user:get_wield_list()
        local index = user:get_wield_index()
        local inv = user:get_inventory()
        local plan = inv:get_stack(list, index+8)
        local worked_node = nil
        
        if (plan:get_name()=="chisel:shape_plan") then
          local meta = plan:get_meta()
          local plan_node = meta:get_string("node_worked")
          if plan_node then
            worked_node = worked_nodes[plan_node]
          end
        end
        
        if worked_node then
          
        else
          player_message(user, S("I have no plan under chisel, which I can use to shape this."))
        end
      end
    else
      player_message(user, S("I have no idea how to shape this."))
    end
  end
end
