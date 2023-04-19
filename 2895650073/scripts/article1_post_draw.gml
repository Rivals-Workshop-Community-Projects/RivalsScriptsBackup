if ((state == 1 || state == 3) && doorhealth == 1){
	draw_sprite_ext( sprite_get("door_crack"), 0, x, y, spr_dir*2, 2, 0, -1, 1 ) 
}
if ((state == 1 || state == 3) && doorhealth <= 0){
	draw_sprite_ext( sprite_get("door_crack"), 1, x, y, spr_dir*2, 2, 0, -1, 1 ) 
}




if (knock_image_index != -1){
	draw_sprite_ext( sprite_get("door_knock"), knock_image_index, x, y, spr_dir*2, 2, 0, -1, 1 ) 
}




if (player_id.has_mirror){
	var tmp_col = get_player_hud_color(player);
	draw_sprite_ext( sprite_get("arrow"), 0, x-6, y-86, 1, 1, -1, tmp_col, 1 );
}
