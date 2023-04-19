var is_it_pancake_time = false;
with (player_id){
	if (state==PS_LANDING_LAG){
		is_it_pancake_time = true;
	}
}
if (is_it_pancake_time){
	draw_sprite_ext( player_id.sprite_index, player_id.image_index, player_id.x, player_id.y, player_id.spr_dir, 1, 0, -1, 0.5) 
}


//oh all the things i do for small useless visual details