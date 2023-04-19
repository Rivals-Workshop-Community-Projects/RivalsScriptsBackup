if has_item {
	draw_sprite_ext( sprite_get("hud_items"), has_item - 1, temp_x + 16, temp_y - 16, 1, 1, 0, c_white, 1);
}

if (item_disp != -4) {
	draw_debug_text(temp_x, temp_y - 40, "Hold Taunt + Tap Right/Left to change item pool")
	draw_debug_text(temp_x + 20, temp_y - 20, "Press Down + Taunt to show item rates")
	draw_debug_text(temp_x, temp_y - 60, "Forcing: " + string(item_names[clamp(item_force, 0, items_max)]))
}

if (item_disp) {
	//draw_debug_text(temp_x + 40, temp_y - 20, "Mistake Pull Rate: " + string(item_mistake_rate) +"%")
	
	var _offset = 0;
	for (var i = 0; i < array_length(item_pools); i++) {
		draw_debug_text(20, 140 + (_offset * 20), string(item_pools[i , 2]) + " (" + string(item_pools[i , 0]) + "%) :")
		_offset += 1;
		for (var j = 0; j < array_length(item_pools); j++) {			
			draw_debug_text(40, 140 + (_offset * 20), string(item_pools[i , 1][j, 2]) + " (" + string(item_pools[i , 1][j, 0]) + "%) : [Total: " + string(item_pools[i , 0] * item_pools[i , 1][j, 0] / 100) +"%]" )
			_offset += 1;
		}	
		_offset += 1;
	}
}

