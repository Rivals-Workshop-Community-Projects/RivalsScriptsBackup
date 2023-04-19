

//beta display
/*draw_set_halign(fa_left);
draw_set_font(asset_get("fName"));
draw_set_alpha(0.4);
draw_rectangle_colour(temp_x+2, temp_y-17, temp_x+150, temp_y-4, c_black, c_black, c_black, c_black, false);
draw_set_alpha(1);
draw_text_ext_transformed_colour(temp_x+10, temp_y-16, "Madotsuki Beta v.C", 30, 400, 1, 1, 0, c_red, c_red, c_red, c_red, 0.5);*/

var dsp_usable = (move_cooldown[AT_DSPECIAL]==0)?true:false
draw_sprite_ext( sprite_get("door_hud"), (dsp_usable)?0:1, temp_x+184, temp_y-20, 2, 2, 0, (dsp_usable)?-1:$666666, 1 )

if (state==PS_SPAWN){
	draw_sprite_ext( sprite_get("msgbox"), 0, temp_x-16, temp_y-42, 1, 1, 0, -1, 0.5 )
}
if (variable_instance_exists(id, "no_equip_indicate_timer")){
	if (no_equip_indicate_timer>0){
	draw_sprite_ext( sprite_get("msgbox"), 1, temp_x-16, temp_y-42, 1, 1, 0, -1, 1 )
	}
}

/*
if (variable_instance_exists(id, "no_equip_indicate_timer")){
	if (no_equip_indicate_timer>0){
		draw_set_halign(fa_left);
		draw_set_font(asset_get("fName"));
		draw_set_alpha(0.7);
		draw_rectangle_colour(temp_x+2, temp_y-17, temp_x+294, temp_y-4, c_black, c_black, c_black, c_black, false);
		draw_set_alpha(1);
		draw_text_ext_transformed_colour(temp_x+10, temp_y-16, "'Effect Equip/Unequip' SFX/VFX disabled", 30, 400, 1, 1, 0, c_white, c_white, c_white, c_white, 0.9);
	}
}*/