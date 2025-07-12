
with (player_id) shader_end();

for (var i = 0; i < array_length(poison_array); i++){
	
	if(poison_array[i].poison_active == true and poison_array[i].state_timer < (poison_array[i].lifetime+poison_array[i].introtime)){
		if get_match_setting(SET_HITBOX_VIS) {
		draw_circle_color( poison_array[i].x, poison_array[i].y-30, poison_array[i].radiuscircle,c_white, c_white, true);
		}
	}
    
}