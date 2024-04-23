local WP = nil
core.register_on_punchnode(function(pos, node)
	local ctrl = core.localplayer:get_control()
	if ctrl.aux1 and ctrl.sneak then
		if not WP then
			WP = core.localplayer:hud_add({
				hud_elem_type = "waypoint",
				name = core.pos_to_string(pos),
				number = 0xFF0000,
				world_pos = pos})
			if not WP then return end
		else
			core.localplayer:hud_remove(WP)
			WP = nil
		end
	end
end)
