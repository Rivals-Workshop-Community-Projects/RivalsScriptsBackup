timer++;
depth = -1000

var level_current = obj_stage_main.am_mario_level_info[obj_stage_main.am_mario_level];

if (screen == 0) {
	if (obj_stage_main.am_mario_syobon_trick) {
		cheeky = true;
	}
		
	if (timer > timer_max) {
		with oPlayer {
			old_hsp = 0;
			old_vsp = 0;
			hsp = 0;
			vsp = 0;
			set_state(PS_IDLE);
			visible = true;
		}
		//Why do I have to do this daniel fronaniel
		with obj_stage_main music_play_file("no");
		
		if get_gameplay_time() > 125
			with obj_stage_main music_play_file(obj_stage_main.action_manager.cur_music_id);
		
		
		with obj_stage_article {
		    if (num == 6) {
		        hitpause = 0;
		    }
		}
		obj_stage_main.am_mario_timer_tick = true;
	    instance_destroy(id);
	    exit;
	}
	else {
		if get_gameplay_time() == 126
			music_stop();
			
		if (timer == 1)
			music_stop();
			
		with oPlayer {
			set_state(PS_SPAWN);
			visible = false;
		}
		with obj_stage_article_solid {
		    if (num == 6) {
		        hitpause = 2;
		    }
		    hitstop = 2;
		}
		with obj_stage_article {
		    if (num == 6) {
		        hitpause = 2;
		    }
		    hitstop = 2;
		}
		obj_stage_main.am_mario_timer_tick = false
		obj_stage_main.am_mario_timer = level_current.timer;
	}
}
else if (screen == 1) {
	if (timer > timer_max) {
		var endit = false
		with oPlayer {
			set_state(PS_SPAWN);
			visible = false;
			if ("am_mario_health" not in self) continue;
			
			if (attack_pressed) {
				endit = true;
			}
		}
		if (endit) {
			if (get_match_setting(SET_PRACTICE)) {
				reset_game();
			}
			else {
				end_match(player_scores[0][0], player_scores[1][0], player_scores[2][0], player_scores[3][0]);
			}
			screen = 3;
		}
	}
	else {
		if get_gameplay_time() == 126
			music_stop();
		if (timer == 1) {
			with obj_stage_main music_play_file("music_gameover");
			player_scores = calcualte_scores(true);
		}
		with oPlayer {
			set_state(PS_SPAWN);
			visible = false;
		}
		with obj_stage_article_solid {
		    if (num == 6) {
		        hitpause = 2;
		    }
		    hitstop = 2;
		}
		with obj_stage_article {
		    if (num == 6) {
		        hitpause = 2;
		    }
		    hitstop = 2;
		}
		obj_stage_main.am_mario_timer_tick = false;
		obj_stage_main.room_manager.in_speedrun = false;
		obj_stage_main.am_mario_timer = level_current.timer;
	}
}
else if (screen == 2) {
	if (timer > timer_max) {
		var endit = false
		with oPlayer {
			set_state(PS_SPAWN);
			visible = false;
			if ("am_mario_health" not in self) continue;
			
			if (attack_pressed) {
				endit = true;
			}
		}
		if (endit) {
			if (get_match_setting(SET_PRACTICE)) {
				reset_game();
			}
			else {
				end_match(player_scores[0][0], player_scores[1][0], player_scores[2][0], player_scores[3][0]);
			}
			screen = 3;
		}
	}
	else {
		if get_gameplay_time() == 126
			music_stop();
		if (timer == 1) {
			with obj_stage_main music_play_file("music_victory3");
			player_scores = calcualte_scores(false);
		}
		with oPlayer {
			set_state(PS_SPAWN);
			visible = false;
		}
		with obj_stage_article_solid {
		    if (num == 6) {
		        hitpause = 2;
		    }
		    hitstop = 2;
		}
		with obj_stage_article {
		    if (num == 6) {
		        hitpause = 2;
		    }
		    hitstop = 2;
		}
		obj_stage_main.am_mario_timer_tick = false;
		obj_stage_main.room_manager.in_speedrun = false;
		obj_stage_main.am_mario_timer = level_current.timer;
	}
}

#define calcualte_scores(_losing)
var _players = array_create(0); //player num, time survived
for (var i = 0; i < array_length(obj_stage_main.players_on); i++) {
	var player_id = obj_stage_main.player_array[obj_stage_main.players_on[i]];
	array_push(_players, [player_id.player,  player_id.speedrun_timer] );
}

if (_losing) {
	with (oPlayer) {
		if (!("temp_level" in self) || temp_level != 0) {
			array_push(_players, [player,  9999999] );
		}
	}
}
array_sort_sub(_players, 1, false);

for (var i = array_length(_players); i < 5; i++) {
	array_push(_players, [-1,  0] );
}
return _players;


#define reset_game()
with (obj_stage_main) {
	am_mario_level = 0;
	am_mario_warp_timer = 0;
	am_mario_timer = am_mario_level_info[am_mario_level].timer;
	am_mario_time_inc = 0;
	am_mario_coins = 0;
	room_checkpoints = true;
}

var cur_level = obj_stage_main.am_mario_level_info[obj_stage_main.am_mario_level];

for (var i = 0; i < array_length(obj_stage_main.players_on); i++) {
	var player_id = obj_stage_main.player_array[obj_stage_main.players_on[i]];
	with (player_id) {
		am_mario_health = 1;
		am_mario_state = 0; //0 = normal; 1 = death; 2 = grow; 3 = shrink; 4 = fire; 5 = warp
		am_mario_state_timer = 0;
		am_mario_invincible = 0;
		am_mario_lives = 3;
		respawn_point = cur_level.spawn_point;
	}
}

with obj_stage_main.room_manager {
    if !switch_room { //If not already transitioning rooms
        switch_to_room_pos = [cur_level.spawn_point[0], cur_level.spawn_point[1]];
        room_switch_type = 0;
        switch_to_room =  cur_level.spawn_point[2];
        // room_switch_event = other.action_id;
        switch_room = true;
        show_gui = false;
    }
}

#define change_scene(_scene_id)
with (obj_stage_main.action_manager) {
	if debug print_debug("[AM] SCENE "+string(_scene_id)+" INITIALIZED");
	while array_length_1d(scene_array) <= room_id array_push(scene_array, []); 
	while array_length_1d(scene_array[room_id]) <= _scene_id array_push(scene_array[room_id], []);
	// for (var i = 0; i < array_length_1d(cur_actions); i++) end_action(cur_actions[i][P.ACTION_INDEX]);
	if array_length(scene_array[room_id][_scene_id]) == 0 array_push(scene_array[room_id][_scene_id],_scene_id);
	cur_scene = scene_array[room_id][_scene_id];
	scene_id = _scene_id;
	scene_time = 0;
}
//for (var i = 0; i < array_length_1d(cur_scene); i++) start_action(room_id, scene_id, cur_scene[i]);

return true;

#define string_parse(_str,_delim) // BECAUSE THIS ISN'T DEFAULT FOR SOME REASON
_str = string_lower(_str); //Not case-sensitive
var _consol_parse = array_create(0);
var j = 1;
var k = 0;
for (var i = 0; i < string_length(_str);i++) {
    if string_char_at(_str,i) == _delim {
        _consol_parse[k] = string_copy(_str,j,i-j);
        j = i+1;
        k++;
    }
}
_consol_parse[k] = string_copy(_str,j,i-j+1);

return _consol_parse;

#define find_room_type() 
for (var i = 0; i < array_length(obj_stage_main.am_mario_ug_rooms); i++) {
	if (obj_stage_main.room_manager.cur_room == obj_stage_main.am_mario_ug_rooms[i])
		return 1;
}
for (var i = 0; i < array_length(obj_stage_main.am_mario_ca_rooms); i++) {
	if (obj_stage_main.room_manager.cur_room == obj_stage_main.am_mario_ca_rooms[i])
		return 2;
}
return 0;