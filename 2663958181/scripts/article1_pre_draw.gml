//
var play_col = get_player_hud_color(player_id.player)
var height = get_stage_data(SD_Y_POS) - stage_y;
var range = 144;



if state > 0 and state < 3{
	if(get_local_setting(SET_FX_QUALITY) > 1){
		for(var i = 0; i < rain_particle_count; i++){
			var cur_raindrop = rain_particles[i];
			draw_sprite_ext(cur_raindrop.sprite_index, 0, cur_raindrop.x, cur_raindrop.y, 1, 1, 0, c_white, cur_raindrop.visible);
			draw_sprite_ext(cur_raindrop.sprite_index, 0, cur_raindrop.x, cur_raindrop.y-cur_raindrop.fall_speed*2, 1, 1, 0, c_white, cur_raindrop.visible/2);
			draw_sprite_ext(cur_raindrop.sprite_index, 0, cur_raindrop.x, cur_raindrop.y-cur_raindrop.fall_speed*4, 1, 1, 0, c_white, cur_raindrop.visible/4);
		}
	}
	draw_sprite_stretched_ext(sprite_get("cloudrange"), 0, x - (range/2), y, range, height, play_col, .25);
} else if (state == 0){
	draw_sprite_stretched_ext(sprite_get("cloudrange"), 0, x - (range/2)*state_timer/55, y, range*state_timer/55, height, play_col, .25*state_timer/55);
	if(get_local_setting(SET_FX_QUALITY) > 1){
		for(var i = 0; i < rain_particle_count; i++){
			var cur_raindrop = rain_particles[i];
			draw_sprite_ext(cur_raindrop.sprite_index, 0, cur_raindrop.x, cur_raindrop.y, 1, 1, 0, c_white, cur_raindrop.visible*state_timer/55);
			draw_sprite_ext(cur_raindrop.sprite_index, 0, cur_raindrop.x, cur_raindrop.y-cur_raindrop.fall_speed*2, 1, 1, 0, c_white, cur_raindrop.visible/2*state_timer/55);
			draw_sprite_ext(cur_raindrop.sprite_index, 0, cur_raindrop.x, cur_raindrop.y-cur_raindrop.fall_speed*4, 1, 1, 0, c_white, cur_raindrop.visible/4*state_timer/55);
		}
	}
}
