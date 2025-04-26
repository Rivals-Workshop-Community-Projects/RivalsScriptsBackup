

if (variable_instance_exists(id, "doomdesire_storage")){
	if (move_cooldown[AT_DSPECIAL]==0){
		var eyestate = 0
	}else{
		if (doomdesire_storage!=-4){
			var eyestate = 1
		}else{
			var eyestate = 2
		}
	}
	shader_start()
	draw_sprite_ext( sprite_get("eye"), eyestate, temp_x+194, temp_y-6, 2, 2, 0, -1, 1 )
	shader_end()
}

//beta display

/*draw_set_halign(fa_left);
draw_set_font(asset_get("fName"));
draw_set_alpha(0.4);
draw_rectangle_colour(temp_x+2, temp_y-17, temp_x+126, temp_y-4, c_black, c_black, c_black, c_black, false);
draw_set_alpha(1);
draw_text_ext_transformed_colour(temp_x+10, temp_y-16, "Jirachi Beta v.h", 30, 400, 1, 1, 0, c_orange, c_orange, c_orange, c_orange, 0.5);/()





