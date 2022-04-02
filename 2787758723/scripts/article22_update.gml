//article22 - Castle

var players_in = 0;
var players_invalid = 0;
var player_on = obj_stage_main.follow_player;

for (var i = 0; i < array_length(obj_stage_main.player_array); i++) {
    if instance_exists(obj_stage_main.player_array[i])
    with (obj_stage_main.player_array[i]) {
    	player_on = id;
        if (am_mario_state == 7 || am_mario_state == 6) {
            players_in ++;
        }
        if (state == PS_DEAD) {
            players_invalid ++;
        }
    }
}

if (players_in + players_invalid >= array_length(obj_stage_main.players_on)) {
	visible = true;
	depth = 31;
    
    if (obj_stage_main.am_mario_timer <= 0 && obj_stage_main.room_manager.show_gui) {
	    if (timer >= 0) {
		    if (flag_y > -32)
		        flag_y -= 4;
	    }
	    
	    timer++;
        if (timer >= 30) {
        	obj_stage_main.room_checkpoints = true;
            obj_stage_main.am_mario_level = player_on.am_mario_flagpole.next_level;
            var next_level = obj_stage_main.am_mario_level_info[player_on.am_mario_flagpole.next_level]
	        with obj_stage_main.room_manager {
	            if !switch_room { //If not already transitioning rooms
	                switch_to_room_pos = [next_level.spawn_point[0], next_level.spawn_point[1]];
	                room_switch_type = 2;
	                switch_to_room = next_level.spawn_point[2];
	                // room_switch_event = other.action_id;
	                switch_room = true;
	                show_gui = false;
	            }
	        }
        }
    }
}