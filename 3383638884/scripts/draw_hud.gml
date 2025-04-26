if("combo_timer" not in self)
{
	combo_timer = 0;
	combo = 0;
}

_combo_timer = ceil(combo_timer);

if("ptv_in_panic" in self)
{
	//if(_combo_timer > 148)
	if(_combo_timer > 207)
		ptv_sprites_array[0] = {spr:sprite_get("hud_combo_ghost_zoom"), id:0, x:174, y:16, xscale:2, yscale:2, rotation:0, color:c_white, alpha:1, uses_shader:false }
	else
		ptv_sprites_array[0] = {spr:sprite_get("hud_combo_ghost"), id:0, x:160 + max(min(round((_combo_timer - 20)/8.1), 18), 0), y:16 - 2*round(_combo_timer/180) + 2*sin(_combo_timer)*(max(round((_combo_timer - 20)/8), 0) == 0), xscale:2, yscale:2, rotation:0, color:c_white, alpha:1, uses_shader:false }
	//	ptv_sprites_array[0] = {spr:sprite_get("hud_combo_ghost"), id:0, x:160 + max(min(round((_combo_timer - 20)/7), 18), 0), y:16 - round(_combo_timer/75) + 2*sin(_combo_timer)*(max(round((_combo_timer - 20)/7), 0) == 0), xscale:2, yscale:2, rotation:0, color:c_white, alpha:1, uses_shader:false }
	
	ptv_sprites_array[1] = {spr:sprite_get("hud_combo_frame"), id:0, x:158, y:-14, xscale:2, yscale:2, rotation:0, color:c_white, alpha:1, uses_shader:false }
	
	if(combo < 10)
	{
		ptv_sprites_array[3] = {spr:sprite_get("hud_combo_num_small"), id:0, x:0, y:0, xscale:1, yscale:1, rotation:0, color:c_white, alpha:0, uses_shader:false }
		ptv_sprites_array[2] = {spr:sprite_get("hud_combo_num"), id:combo%10, x:170, y:-6, xscale:2, yscale:2, rotation:0, color:c_white, alpha:1, uses_shader:false }
	}
	else
	{
		ptv_sprites_array[3] = {spr:sprite_get("hud_combo_num_small"), id:min(8, (combo - combo%10)/10 - 1), x:166, y:0, xscale:2, yscale:2, rotation:0, color:c_white, alpha:1, uses_shader:false }
		ptv_sprites_array[2] = {spr:sprite_get("hud_combo_num"), id:combo%10, x:174, y:-6, xscale:2, yscale:2, rotation:0, color:c_white, alpha:1, uses_shader:false }
	}
}
else
{
	//if(_combo_timer > 148)
	if(_combo_timer > 207)
		draw_sprite_ext(sprite_get("hud_combo_ghost_zoom"), 0, temp_x + 188, temp_y + 4, 2, 2, 0, c_white, 1);
	else
		draw_sprite_ext(sprite_get("hud_combo_ghost"), 0, temp_x + 174 + max(min(round((_combo_timer - 20)/8.1), 18), 0), temp_y + 4 - 2*round(_combo_timer/180) + 2*sin(_combo_timer)*(max(round((_combo_timer - 20)/8), 0) == 0), 2, 2, 0, c_white, 1);
	//	draw_sprite_ext(sprite_get("hud_combo_ghost"), 0, temp_x + 174 + max(min(round((_combo_timer - 20)/7), 18), 0), temp_y + 4 - round(_combo_timer/75) + 2*sin(_combo_timer)*(max(round((_combo_timer - 20)/7), 0) == 0), 2, 2, 0, c_white, 1); //mewo right
	
	draw_sprite_ext(sprite_get("hud_combo_frame"), 0, temp_x + 172, temp_y - 26, 2, 2, 0, c_white, 1);
	
	if(combo < 10)
		draw_sprite_ext(sprite_get("hud_combo_num"), combo%10, temp_x + 184, temp_y - 18, 2, 2, 0, c_white, 1);
	else
	{
		draw_sprite_ext(sprite_get("hud_combo_num_small"), min(8, (combo - combo%10)/10 - 1), temp_x + 180, temp_y - 12, 2, 2, 0, c_white, 1);
		draw_sprite_ext(sprite_get("hud_combo_num"), combo%10, temp_x + 188, temp_y - 18, 2, 2, 0, c_white, 1);
	}
}

//MunoPhone Touch
muno_event_type = 5;
user_event(14);
