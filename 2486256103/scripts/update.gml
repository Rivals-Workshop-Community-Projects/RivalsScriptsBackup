if get_gameplay_time() == 2{
	room_manager = instance_create(0,0,"obj_stage_article",5);
	user_event(0);
} 
follow_player = noone;
with oPlayer if get_player_hud_color(player) == 6612290 other.follow_player = id;
if !instance_exists(follow_player) with oPlayer {
	other.follow_player = id;
}
	
	
with follow_player {
	room_manager = other.room_manager;
}

with oPlayer { //Fixes for various things due to article solids
	
	rel_pos = [x-view_get_xview(),y-view_get_yview()];
	prev_free = free;
	// if state != PS_AIR_DODGE old_pos = [x,y];
}
