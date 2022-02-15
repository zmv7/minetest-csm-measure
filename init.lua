local HUD = nil
minetest.register_on_punchnode(function(pos, node)
if core.localplayer:get_control().aux1 and tostring(core.localplayer:get_velocity()) == '(0, 0, 0)'  then
 if not HUD then
    HUD = core.localplayer:hud_add({
      hud_elem_type = "waypoint",
      name = "Distance:",
      number = 0xFF0000,
      world_pos = pos})
    if not HUD then return end
 else
core.localplayer:hud_remove(HUD)
HUD = nil
 end
end
end)
