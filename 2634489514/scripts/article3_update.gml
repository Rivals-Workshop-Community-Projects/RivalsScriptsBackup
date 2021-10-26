//article3 - Action Manager
//Update enums article3_update, draw_hud, and user_event0
enum EVT {
	START,
	DO
}
enum ACT {
    // CAMERA, //Sets the camera to a specific point
    // //action_time, x, y, focus_type, smooth 
    WINDOW, //Makes a hud window
    //window_num, x, y, [contentoverride]
    CONTROL, //Controls players
    //player_id, life_time, state_override
    WAIT, //waits
    //frames
    PLAY_SOUND,
    //sound
    SET, //Set data
    //article_id, variable, value, ease_type, ease_length
    ON_INPUT, //Do a thing when a player presses a button
    //follow_player?, input_type
    SW_ROOM, //Switch the room
    //to_room, to_coords
    QUEST_PROG, //Quest-related actions
    //quest_id, action_type[0:set forward, 1:set override, 2:add/sub], amount
    ON_QUEST_PROG,
    //quest_id, progress_prog, type
    SUS, //Suspend Action by ID
    //suspend_bool, action_id
    KILL, //Remove the first of the action type given
    //action_id
    SPAWN_ART, //Spawn articles with the
    //[room_format]
    CHECK, //End action upon the condition being true
    //article_group, variable, condition
    ART_COUNT, //When the article count for the following article drops a threshold, continue
    //article_group, threshold, [lower than or equal:0 greater than or equal:1]
    SCENE, //Switches the scene
    //0:set,1:add, scene id
    RANDOM, //Pick a random exit action to do
    //seed
    SET_RELATIVE, //Set data relative to whatever caused this action (by default, passed by trigger zones)?
    //variable, value, ease_type, ease_length
    EVENT, //Trigger an item event?
    //event_id
    HITBOX, //Spawn a hitbox at an intersect location upon entering
    //attack_id, hitbox_id
    KILLBOX, //Spawn a killbox at an intersect location upon entering, killing whatever has intersected
    //killbox background
    TRANS_MUSIC, //transition music with a crossfade time (time of zero is a cut)
    //to_music_index, fade_time
    DESPAWN, //Article group to despawn/remove 
    //article_id
    EMIT_PARTICLE, //Emit a particle, generally at a relative location
    //x,y, sprite, vfx_time, disable_movement, alpha
    END_GAME, //Calls end_match
}
enum P {
    LOAD,
    ROOM_ID,
    SCENE_ID,
    ACTION_ID,
    ALIVE_TIME,
    ACTION_INDEX,
    DIE,
    REL_ID
}

enum L {
    ACTION_TYPE,
    PARAM,
    ON_EXIT
}

enum B {
    ATTACK,
    SPECIAL,
    JUMP,
    PARRY,
    TAUNT,
}

if !_init {
	with obj_stage_article if num == 5 other.room_manager = id;
	debug = false; //Test (prevent loading to flood)
    reload_scenes();
    change_scene(1);
    visible = true;
    _init = true;
    quest_init = true;
    debug = room_manager.debug;
    exit;
}

// with oPlayer if state == PS_RESPAWN print("[article3:update] started check");

if array_length_1d(end_action_queue) > 0 process_end_queue();
if array_length_1d(end_action_index) > 0 process_end_index();
if array_length_1d(action_queue) > 0 process_action_queue();


if get_gameplay_time() % tick_rate != 0 exit;

action_tick();
scene_time++;

// with oPlayer if state == PS_RESPAWN print("[article3:update] completed check");

#define process_action_queue()
// if debug print_debug("[AM] PROGESSING ACTION QUEUE..."+string(action_queue));
for (var i = 0; i < array_length_1d(action_queue);i++) {
	if array_length_1d(action_queue[i]) > 3 start_action(action_queue[i][0], action_queue[i][1], action_queue[i][2],action_queue[i][3]);
	else start_action(action_queue[i][0], action_queue[i][1], action_queue[i][2], id);
	
}
action_queue = []; //clear queue;
return true;
#define process_end_queue()
for (var i = 0; i < array_length_1d(end_action_queue);i++) {
	if array_length_1d(end_action_queue[i]) > 3 start_action(end_action_queue[i][0], end_action_queue[i][1], end_action_queue[i][2],end_action_queue[i][3]);
	else start_action(end_action_queue[i][0], end_action_queue[i][1], end_action_queue[i][2], id);
}
end_action_queue = []; //clear queue;
return true;
#define process_end_index()
for (var i = 0; i < array_length_1d(end_action_index); i++) {
	for (var j = 0; j < array_length_1d(cur_actions); j++) {
		if cur_actions[j][P.ACTION_INDEX] == end_action_index[i] 
			end_action(cur_actions[j][P.ACTION_INDEX], cur_actions[j][P.REL_ID]);
	}
}
end_action_index = []; //clear queue;
return true;
#define do_action(_action) //Action Per Frame - these are VERY HEAVY!
if _action[P.ROOM_ID] != 0 && _action[P.ROOM_ID] != room_id return false; //Only process actions effecting the current room, or All Rooms
if _action[P.SCENE_ID] != 0 && _action[P.SCENE_ID] != scene_id return false; //Only process actions effecting the current scene, or All Scenes
var _param = _action[P.LOAD][L.PARAM];
switch _action[P.LOAD][L.ACTION_TYPE] {
    // case ACT.CAMERA: //action_time, x, y, focus_type, smooth 
    // 	//obj_stage_main.cam_state = 1;
    // 	switch _param[3] {
    // 		case 0:
		  //  	cam_pos = [_param[1],_param[2]];
		  //  	cam_smooth = _param[4];
		  //  	break;
		  //  default:
		  //  	var _follow = noone;
    // 			with oPlayer if _param[3] == player _follow = id;
    // 			cam_pos = [_follow.x+_param[1],_follow.y+_param[2]];
    // 			cam_smooth = _param[4];
    // 			break;
    // 	}
    // 	if _param[0] > 0 && _action[P.ALIVE_TIME] > _param[0] {
    // 		obj_stage_main.cam_state = 0; //Set the cam back to normal
    // 		_action[@P.DIE] = true;
    // 	}
    // 	break;
    case ACT.CHECK:
    	var _param = new_action[P.LOAD][L.PARAM];
		with obj_stage_article if "action_article_index" in self && action_article_index == _param[0] if variable_instance_get(id,_param[1]) == _param[2] _action[@P.DIE] = true;
    	break;
    case ACT.CONTROL:
    	with oPlayer {
    		if _param[1] == all || _param[1] == id {
		    	if _param[2] >= 0 && state != _param[2] { 
		    		set_state(_param[2]);
		    	}
    		}
    	}
    	if _param[0] > -1 && _action[P.ALIVE_TIME] > _param[0] {
    		_action[@P.DIE] = true;
    	}
    	break;
    case ACT.EMIT_PARTICLE:
    	for (var _i = 0; _i < array_length_1d(active_particles);_i++) { //All active particles
	        var _ap_i = active_particles[_i];
	        switch _ap_i.type {
	            case 0: //Vertical Random Fade
	                _ap_i.vsp *= .98;
	                _ap_i.hsp *= .98;
	                break;
	            default: //Still
	                break;
	        }
	        _ap_i.y += _ap_i.vsp;
	        _ap_i.x += _ap_i.hsp;
	        _ap_i.image_index = _ap_i.image_number*(_ap_i.alive_time/_ap_i.vfx_time);
	        _ap_i.alive_time++;
	        if _ap_i.alive_time > _ap_i.vfx_time {
	            active_particles = array_cut(active_particles,_i);
	            _i--;
	            if array_length_1d(active_particles) == 0 {
	            	_action[@P.DIE] = true;
	            }
	        }
	    }
    	break;
    case ACT.SET:
	    switch _param[3] { //ease_type?
	    	case 1:
	    		variable_instance_set(id,_param[1],_param[2]);
	    		break;
	    	default:
		    	with obj_stage_article if "action_article_index" in self && action_article_index == _param[0] {
		    		if _action[P.ALIVE_TIME] == 1 variable_instance_set(id,"action_old_"+_param[1],variable_instance_get(id,_param[1]));
					if is_real(variable_instance_get(id,"action_old_"+_param[1])) {
						variable_instance_set(id,_param[1],ease_linear(floor(variable_instance_get(id,"action_old_"+_param[1])),_param[2],_action[P.ALIVE_TIME],_param[4]));
						// if other.debug print_debug("[AM] EASING "+string(_param[0])+"."+string(_param[1])+" = "+string(_param[2]));
					} else {
						variable_instance_set(id,_param[1],_param[2]);
					}
				}
				if _action[P.ALIVE_TIME] > _param[4] {
		    		_action[@P.DIE] = true;
		    	}
	    	
	    	break;
	     }
    	break;
    case ACT.SET_RELATIVE:
	    switch _param[2] { //ease_type
	    	case 1:
	    		variable_instance_set(id,_param[1],_param[2]);
	    		break;
	    	default:
	    		
		    	with _action[P.REL_ID] {
		    		if _action[P.ALIVE_TIME] == 1 variable_instance_set(id,"action_old_"+_param[0],variable_instance_get(id,_param[0]));
		    		if is_real(variable_instance_get(id,"action_old_"+_param[0])) {
						variable_instance_set(id,_param[0],ease_linear(floor(variable_instance_get(id,"action_old_"+_param[0])),_param[1],_action[P.ALIVE_TIME],_param[3]));
						// if other.debug print_debug("[AM] EASING "+string(_param[0])+"."+string(_param[1])+" = "+string(_param[2]));
		    		} else {
		    			variable_instance_set(id,_param[0],_param[1]);
		    		}
		    			
		    	}
				if _action[P.ALIVE_TIME] > _param[3] {
		    		_action[@P.DIE] = true;
		    	}
	    	
	    	break;
	     }
    	break;
    case ACT.ON_INPUT:
    	var _input_done = 0;
    	with oPlayer {
    		if !_param[0] || _param[0] = id { //|| other.follow_player == id { //Removing local player reference for multiplayer stability
    			switch _param[1] {
    				case PC_TAUNT_PRESSED:
    					if taunt_down _input_done = 1;
    					break;
    				case PC_ATTACK_PRESSED:
    					if attack_down _input_done = 1;
    					break;
    				case PC_SHIELD_PRESSED:
    					if shield_down _input_done = 1;
    					break;
    				case PC_JUMP_PRESSED:
    					if jump_down _input_done = 1;
    					break;
    				case PC_DOWN_STICK_PRESSED:
    					if down_down _input_done = 1;
    					break;
    				case PC_UP_STICK_PRESSED:
    					if up_down _input_done = 1;
    					break;
    				case PC_LEFT_STICK_PRESSED:
    					if left_down _input_done = 1;
    					break;
    				case PC_RIGHT_STICK_PRESSED:
    					if right_down _input_done = 1;
    					break;
    			}
    		}
    	}
    	if _input_done _action[@P.DIE] = true;
    	break;
    case ACT.ON_QUEST_PROG:
    	if _param[2] == 0 && quest_array[_param[0]][0] == _param[1] {
    		_action[@P.DIE] = true;
    	}
    	if _param[2] == 1 && quest_array[_param[0]][0] >= _param[1] {
    		_action[@P.DIE] = true;
    	}
    	if _param[2] == 2 && quest_array[_param[0]][0] < _param[1] {
    		_action[@P.DIE] = true;
    	}
    	break;
    case ACT.ART_COUNT:
    	var _found_group = 0;
    	with obj_stage_article {
    		if _param[0] == action_article_index {
    			_found_group += 1;
    		}
    	}
    	if !_found_group with obj_stage_article_platform {
    		if _param[0] == action_article_index {
    			_found_group += 1;
    		}
    	}
    	if !_found_group with obj_stage_article_solid {
    		if _param[0] == action_article_index {
    			_found_group += 1;
    		}
    	}
    	if _param[2] != 1 && _found_group <= _param[1] { //If there was none of the group
    		_action[@P.DIE] = true;
    		break;
    	}
    	if _param[2] == 1 && _found_group >= _param[1] { //If there was none of the group
    		_action[@P.DIE] = true;
    		break;
    	}
    	break;
    case ACT.WAIT:
	    if _action[P.ALIVE_TIME] > _param[0] {
    		_action[@P.DIE] = true;
    	}
    	break;
    case ACT.TRANS_MUSIC:
    	if get_gameplay_time() > 125 { //Haha yea man what if music functions just didn't do anything for 125 frames that would be an epic prank haha
    		if debug print("[AM] ... ON FRAME 126!");
    		if cur_music_id != _param[0] {
    			music_play_file(_param[0]);
    			cur_music_id = _param[0];
    		}
    		_action[@P.DIE] = true;
    	}
    	break;
    default: //custom type, unexplained type
    	if _action[P.LOAD][L.ACTION_TYPE] > ACT.END_GAME {
	    	event_flag = EVT.DO;
	    	custom_action = _action;
	    	user_event(3);
    	}
        break;
}


if _action[P.DIE] == true {
	end_action(_action[P.ACTION_INDEX],_action[P.REL_ID]);
	action_ended = true; //Action ended in the do sequence
}

#define change_scene(_scene_id)
if debug print_debug("[AM] SCENE "+string(_scene_id)+" INITIALIZED");
while array_length_1d(scene_array) <= room_id array_push(scene_array, []); 
while array_length_1d(scene_array[room_id]) <= _scene_id array_push(scene_array[room_id], []);
// for (var i = 0; i < array_length_1d(cur_actions); i++) end_action(cur_actions[i][P.ACTION_INDEX]);
if array_length(scene_array[room_id][_scene_id]) == 0 array_push(scene_array[room_id][_scene_id],_scene_id);
cur_scene = scene_array[room_id][_scene_id];
scene_id = _scene_id;
scene_time = 0;
//for (var i = 0; i < array_length_1d(cur_scene); i++) start_action(room_id, scene_id, cur_scene[i]);

return true;

#define action_tick()
for (var i = 0; i < array_length_1d(cur_actions); i++) {
	cur_actions[@i][@P.ALIVE_TIME]++;
    do_action(cur_actions[i]);
	i -= action_ended;
	action_ended = false;
}
return true;

#define start_action(_room_id, _scene_id, _action_id, _starting_id)
if _room_id >= array_length_1d(action_array) || _scene_id >= array_length_1d(action_array[_room_id]) || _action_id >= array_length_1d(action_array[_room_id][_scene_id]) || _action_id == 0 {
	if debug print_debug("[AM] ACTION "+string(_room_id)+":"+string(_scene_id,)+":"+string(_action_id)+" OUTSIDE INITIALIZED RANGE...");
	return false;
}

var new_action = array_create(P.DIE+1);
new_action[P.LOAD] = array_clone(action_array[_room_id][_scene_id][_action_id]);
new_action[P.ROOM_ID] = _room_id;
new_action[P.SCENE_ID] = _scene_id;
new_action[P.ACTION_ID] = _action_id;
new_action[P.ACTION_INDEX] = action_index;
new_action[P.REL_ID] = _starting_id;
action_index++;
new_action[P.ALIVE_TIME] = 0;

//On action start
// print_debug(string(new_action[P.LOAD]));

if array_length(new_action[P.LOAD]) == 0 { //Action Data not found! Exit action start.
	// print("[AM] WARNING: Action data not found! Aborting Action "+string(_room_id)+":"+string(_scene_id)+":"+string(_action_id));
	return false;
}

if debug print_debug("[AM] ACTION LIVE: "+string(_room_id)+":"+string(_scene_id)+":"+string(_action_id)+":"+string(new_action[P.LOAD][L.ACTION_TYPE]));
if debug && scene_id != _scene_id print_debug("[AM] WARNING - INITALIZING AN ACTION OUTSIDE OF THE CURRENT SCENE");
switch new_action[P.LOAD][L.ACTION_TYPE] {
	// case ACT.CAMERA:
	// 		obj_stage_main.cam_state = 1;
	// 		if debug print_debug("[AM] CAM CONTROL SET TO "+string(_action_id));
	// 	break;
	case ACT.WINDOW:
		var _param = new_action[P.LOAD][L.PARAM];
		var win_over = _param[3];
		with obj_stage_main {
			if array_length_1d(win_data) < _param[0] {
				print_debug("[AM] WINDOW OUTSIDE OF INITIALIZED RANGE...");
				return false;
			}
			if win_over != [] for(var i = 0; i < array_length_1d(win_over); i++) for(var j = 0; j < array_length_1d(win_over[i]); j++) win_data[@_param[0]][@(i+1)][@(j+1)] = win_over[i][j];
			array_push(active_win,[[_param[1],_param[2],new_action[P.ACTION_INDEX], 0, _starting_id],array_clone_seriously_why_isnt_this_how_it_works(win_data[_param[0]])]); //Push window data to active windows in the right format 
								//[[pos_x,pos_y,action_id,alive_time, tracking_id], [meta]]
		}
		break;
	case ACT.CHECK:
    	var _param = new_action[P.LOAD][L.PARAM];
		with obj_stage_article if "action_article_index" in self && action_article_index == _param[0] if variable_instance_get(id,_param[1]) == _param[2] _action[@P.DIE] = true;
    	break;
    case ACT.DESPAWN:
    	var _param = new_action[P.LOAD][L.PARAM];
    	with obj_stage_article if "action_article_index" in self && action_article_index == _param[0] {
    		if num == 6 destroyed = true; //Enemies have their own distruction methods
    		else if "state" in self state = 2; //state 2 is the destruction state
    		else instance_destroy(self);
    	}
		for (var j = 0; j < array_length_1d(new_action[P.LOAD][L.ON_EXIT]); j++) start_action(room_id, new_action[P.SCENE_ID], new_action[P.LOAD][L.ON_EXIT][j],_starting_id); //Add Exit Actions
		return true; //Never enters the queue
    	break;
    case ACT.EMIT_PARTICLE:
    var _param = new_action[P.LOAD][L.PARAM];
    	if _starting_id == id {
			var _p_obj = {
		        x: _param[0],
		        y: _param[1],
		        sprite_index: _param[2],
		        image_index: 0,
		        image_number: sprite_get_number(_param[2]),
		        vfx_time: _param[3],
		        alive_time: 0,
		        type: _param[4],
		        hsp: 0,
		        vsp: 0,
		        alpha: _param[5]
		    };
    	} else { //If relative
    		var _p_obj = {
		        x: _starting_id.x,
		        y: _starting_id.y,
		        sprite_index: _param[2],
		        image_index: 0,
		        image_number: sprite_get_number(_param[2]),
		        vfx_time: _param[3],
		        alive_time: 0,
		        type: _param[4],
		        hsp: 0,
		        vsp: 0,
		        alpha: _param[5]
		    };
		    // print([_p_obj.x,_p_obj.y]);
    	}
		    switch _p_obj.type {
		        case 0: //Vertical Random Fade
		            _p_obj.hsp = random_func_2(array_length_1d(active_particles) % 200,floor(vel[0]*2),false)-vel[0];
		            _p_obj.vsp = random_func_2(array_length_1d(active_particles)+1 % 200,floor(vel[1] + .3*vel[1]),false)-.15*vel[1];
		            break;
		        default: //Still
		            break;
		    }
		    
		    array_push(active_particles,_p_obj);
		    
		    if array_length_1d(active_particles) > 1 { //There's already another EMIT_PARTICLES action
		    	for (var j = 0; j < array_length_1d(new_action[P.LOAD][L.ON_EXIT]); j++) start_action(room_id, new_action[P.SCENE_ID], new_action[P.LOAD][L.ON_EXIT][j],_starting_id); //Add Exit Actions
				return true; //Never enters the queue
		    }
    	break;
    case ACT.END_GAME:
    	room_manager.in_speedrun = false;
    	end_match();
    	for (var j = 0; j < array_length_1d(new_action[P.LOAD][L.ON_EXIT]); j++) start_action(room_id, new_action[P.SCENE_ID], new_action[P.LOAD][L.ON_EXIT][j],_starting_id); //Add Exit Actions
		return true; //Never enters the queue
    	break;
    case ACT.HITBOX:
		var _param = new_action[P.LOAD][L.PARAM];
    	if _starting_id == id {
    		if debug print_debug("[AM] UNSET ID, CANNOT SPAWN HITBOX.");
    	} else {
    		if debug print_debug("[AM] SPAWNING HITBOX...");
    		create_hitbox(_param[0],_param[1],_starting_id.x,_starting_id.y);
    	}
    	for (var j = 0; j < array_length_1d(new_action[P.LOAD][L.ON_EXIT]); j++) start_action(room_id, new_action[P.SCENE_ID], new_action[P.LOAD][L.ON_EXIT][j],_starting_id); //Add Exit Actions
		return true; //Never enters the queue
    	break;
    case ACT.KILLBOX:
		var _param = new_action[P.LOAD][L.PARAM];
    	if _starting_id == id  || (room_manager.room_switch_on  == true) { //Don't kill durring room transitions!
    		if debug print_debug("[AM] CANNOT SPAWN KILLBOX. - UNSET ID OR PLAYER IN A ROOM TRANSITION");
    	} else {
    		if debug print_debug("[AM] SPAWNING KILLBOX...");
    		// create_hitbox(_param[0],_param[1],_starting_id.x,_starting_id.y);
    		// if _starting_id.object_index ==  oPlayer {
    		// if debug print_debug("[AM]... ON PLAYER");
    		create_deathbox(_starting_id.x,_starting_id.y-32,1000,1000,-1,true,0,2,_param[0]);
    		// }
    		// if _starting_id.object_index == obj_stage_article {
    		// 	state = 2; //Set to the universal destroy state
    		// 	// instance_destroy();
    		// }
    	}
    	for (var j = 0; j < array_length_1d(new_action[P.LOAD][L.ON_EXIT]); j++) start_action(room_id, new_action[P.SCENE_ID], new_action[P.LOAD][L.ON_EXIT][j],_starting_id); //Add Exit Actions
		return true; //Never enters the queue
    	break;
	case ACT.SET:
		var _param = new_action[P.LOAD][L.PARAM];
		if array_length_1d(_param) < 4 with obj_stage_article if "action_article_index" in self && action_article_index == _param[0] {
			variable_instance_set(id,_param[1],_param[2]);
		}
		// if debug print_debug("[AM] SETTING "+string(_param[0])+"."+string(_param[1])+" = "+string(_param[2]));
		if debug print_debug("[AM] SETTING "+string(_param[0])+"."+string(_param[1])+" = "+string(_param[2]));
		if array_length_1d(_param) < 4 {
			
			for (var j = 0; j < array_length_1d(new_action[P.LOAD][L.ON_EXIT]); j++) start_action(room_id, new_action[P.SCENE_ID], new_action[P.LOAD][L.ON_EXIT][j],_starting_id); //Add Exit Actions
			return true; //Never enters the queue
		}
		// if debug print_debug("[AM] EASING "+string(_param[0])+"."+string(_param[1])+" = "+string(_param[2]));
		break;
	case ACT.SCENE: //Switch Scene
		var _param = new_action[P.LOAD][L.PARAM];
		if !_param[0] {
			change_scene(_param[1]);
		} else {
			change_scene(scene_id+_param[1]);
		}
		for (var j = 0; j < array_length_1d(new_action[P.LOAD][L.ON_EXIT]); j++) start_action(room_id, new_action[P.SCENE_ID], new_action[P.LOAD][L.ON_EXIT][j],_starting_id); //Add Exit Actions
		return true; //Never enters the queue
		break;
	case ACT.PLAY_SOUND: //Play Sound
		sound_play(new_action[P.LOAD][L.PARAM][0]);
		for (var j = 0; j < array_length_1d(new_action[P.LOAD][L.ON_EXIT]); j++) start_action(room_id, new_action[P.SCENE_ID], new_action[P.LOAD][L.ON_EXIT][j],_starting_id); //Add Exit Actions
		return true; //Never enters the queue
		break;
	case ACT.SUS: //:oO.Oo:
		var _param = new_action[P.LOAD][L.PARAM];
		if _param[0] { // Suspend Action
			while array_length_1d(suspened_actions)-1 < room_id array_push(suspened_actions,[]);
			for (var i = 0; i < array_length_1d(cur_actions); i++) {
		    	if array_length_1d(cur_actions[i]) > 1 && cur_actions[i][P.ACTION_ID] ==  _param[1] {
		    		if debug print_debug("[AM] ACTION "+string(cur_actions[i][P.ACTION_INDEX])+":"+string(cur_actions[i][P.ACTION_ID])+" SUSPENDED");
		    		array_push(suspened_actions[room_id],cur_actions[i]);
		    		cur_actions = array_cut(cur_actions, i);
		    		for (var j = 0; j < array_length_1d(new_action[P.LOAD][L.ON_EXIT]); j++) start_action(room_id, new_action[P.SCENE_ID], new_action[P.LOAD][L.ON_EXIT][j],_starting_id); //Add Exit Actions
					return true; //Never enters the queue
		    	}
			}
			
			for (var i = 0; i < array_length_1d(cur_actions); i++) {
		    	if array_length_1d(cur_actions[i]) > 1 && cur_actions[i][P.ACTION_ID] ==  _param[1] {
		    		if debug print_debug("[AM] ACTION "+string(cur_actions[i][P.ACTION_INDEX])+":"+string(cur_actions[i][P.ACTION_ID])+" SUSPENDED");
		    		array_push(suspened_actions[0],cur_actions[i]);
		    		cur_actions = array_cut(cur_actions, i);
		    		for (var j = 0; j < array_length_1d(new_action[P.LOAD][L.ON_EXIT]); j++) start_action(room_id, new_action[P.SCENE_ID], new_action[P.LOAD][L.ON_EXIT][j],_starting_id); //Add Exit Actions
					return true; //Never enters the queue
		    	}
			}
		} else { //Unsuspend Action
			for (var i = 0; i < array_length_1d(suspened_actions); i++) {
		    	if suspened_actions[room_id][i][P.ACTION_ID] == _param[1] {
		    		if debug print_debug("[AM] ACTION "+string(cur_actions[i][P.ACTION_INDEX])+":"+string(cur_actions[i][P.ACTION_ID])+" UNSUSPENDED");
		    		array_push(cur_actions, suspened_actions[room_id][i]);
		    		suspened_actions[room_id] = array_cut(suspened_actions[room_id], i);
		    		for (var j = 0; j < array_length_1d(new_action[P.LOAD][L.ON_EXIT]); j++) start_action(room_id, new_action[P.SCENE_ID], new_action[P.LOAD][L.ON_EXIT][j],_starting_id); //Add Exit Actions
					return true; //Never enters the queue
		    	}
		    	//Repeat for zeroth room
		    	if suspened_actions[0][i][P.ACTION_ID] == _param[1] {
		    		if debug print_debug("[AM] ACTION "+string(cur_actions[i][P.ACTION_INDEX])+":"+string(cur_actions[i][P.ACTION_ID])+" UNSUSPENDED");
		    		array_push(cur_actions, suspened_actions[0][i]);
		    		suspened_actions[0] = array_cut(suspened_actions[0], i);
		    		for (var j = 0; j < array_length_1d(new_action[P.LOAD][L.ON_EXIT]); j++) start_action(room_id, new_action[P.SCENE_ID], new_action[P.LOAD][L.ON_EXIT][j],_starting_id); //Add Exit Actions
					return true; //Never enters the queue
		    	}
			}
		}
		if debug print_debug("[AM] DID NOT FIND SUSPEND TARGET");
		for (var j = 0; j < array_length_1d(new_action[P.LOAD][L.ON_EXIT]); j++) start_action(room_id, new_action[P.SCENE_ID], new_action[P.LOAD][L.ON_EXIT][j],_starting_id); //Add Exit Actions
		return true; //Never enters the queue
	case ACT.KILL:
		var _param = new_action[P.LOAD][L.PARAM];
		for (var k = 1; k < array_length_1d(_param); k++) {
			for (var i = 0; i < array_length_1d(cur_actions); i++) {
		    	if array_length_1d(cur_actions[i]) > 1 && cur_actions[i][P.ACTION_ID] ==  _param[k] {
		    		if debug print_debug("[AM] ACTION "+string(cur_actions[i][P.ACTION_INDEX])+":"+string(cur_actions[i][P.ACTION_ID])+" KILLED");
		    		cur_actions = array_cut(cur_actions, i);
		    		for (var j = 0; j < array_length_1d(new_action[P.LOAD][L.ON_EXIT]); j++) start_action(room_id, new_action[P.SCENE_ID], new_action[P.LOAD][L.ON_EXIT][j],_starting_id); //Add Exit Actions
					return true; //Never enters the queue
	    		}
			}
		}
		for (var j = 0; j < array_length_1d(new_action[P.LOAD][L.ON_EXIT]); j++) start_action(room_id, new_action[P.SCENE_ID], new_action[P.LOAD][L.ON_EXIT][j],_starting_id); //Add Exit Actions
		return true; //Never enters the queue
	case ACT.SPAWN_ART: //Spawn an article. Not counted in room!
		var _param = new_action[P.LOAD][L.PARAM];
		var _rel_pos = cell_to_real([_param[1][1],_param[1][2]],_param[0]);
		var _art;
		switch _param[1][3] {
            case 2:
                //obj_type = "obj_stage_article_solid";
                _art = instance_create(floor(_rel_pos[0]),floor(_rel_pos[1]),"obj_stage_article_solid",_param[1][0]);
                break;
            case 1:
                //obj_type = "obj_stage_article_platform";
                _art = instance_create(floor(_rel_pos[0]),floor(_rel_pos[1]),"obj_stage_article_platform",_param[1][0]);
                break;
            case 0:
                //obj_type = "obj_stage_article";
                _art = instance_create(floor(_rel_pos[0]),floor(_rel_pos[1]),"obj_stage_article",_param[1][0]);
            break;
        }
        _art.spawn_variables = _param[1][5];
        _art.depth = _param[1][4];
        _art.og_depth = _param[1][4];
        _art.cell_size = room_manager.cell_size;
        _art.init_pos = [_param[1][1],_param[1][2]];
        _art.cell_pos = room_manager._cell_pos;
        _art.action_article_index = _param[1][6][1]; //array_room_data[_room_id][i][1][j][6][1] 6D Array!
        _art.room_manager = room_manager;
        _art.debug = obj_stage_main.debug;
        if debug print("[AM:SPAWN_ART] Spawned Article "+string(_art.num));
		for (var j = 0; j < array_length_1d(new_action[P.LOAD][L.ON_EXIT]); j++) start_action(room_id, new_action[P.SCENE_ID], new_action[P.LOAD][L.ON_EXIT][j],_starting_id); //Add Exit Actions
		return true; //Never enters the queue
	case ACT.SW_ROOM:
		var _param = new_action[P.LOAD][L.PARAM];
    	with room_manager {
    		if array_length_1d(_param) < 2 switch_to_room_pos = [-1,-1];
    		else switch_to_room_pos = _param[2];
    		room_switch_type = _param[1];
    		switch_to_room = _param[0];
    		switch_room = true;
    	}
    	for (var j = 0; j < array_length_1d(new_action[P.LOAD][L.ON_EXIT]); j++) start_action(room_id, new_action[P.SCENE_ID], new_action[P.LOAD][L.ON_EXIT][j],_starting_id); //Add Exit Actions
		return true; //Never enters the queue
	case ACT.QUEST_PROG: //quest_id, action_type[0:set forward, 1:set override, 2:add/sub], amount
		var _param = new_action[P.LOAD][L.PARAM];
		if _param[0] > array_length_1d(quest_array) { //ABORT ABORT
			if debug print("[AM] Quest Array index not found!");
			for (var j = 0; j < array_length_1d(new_action[P.LOAD][L.ON_EXIT]); j++) start_action(room_id, new_action[P.SCENE_ID], new_action[P.LOAD][L.ON_EXIT][j],_starting_id); //Add Exit Actions
			return true; //Never enters the queue
		}
    	
    	switch _param[1] {
    		case 2: //add/subtract
    			// print(quest_array[_param[0]][0]);
    			if quest_array[_param[0]][0] <= 0 { //need to set forward to a valid progress
    				quest_set(_param[0],_param[2]);
    			} else {
    				quest_set(_param[0],quest_array[_param[0]][0]+_param[2]);
    			}
    			sound_play(obj_stage_main.quest_prog_sound);
    			break;
    		case 1: //set, override
    			quest_set(_param[0],_param[2]);
    			sound_play(obj_stage_main.quest_prog_sound);
    			break;
    		default: //set, do not go backwards
    			// print(quest_array[_param[0]][0][0]);
    			if quest_array[_param[0]][0] == noone || quest_array[_param[0]][0] < _param[2] {
    				quest_set(_param[0],_param[2]);
    				sound_play(obj_stage_main.quest_prog_sound);
    			}
    			break;
    	}
    	for (var j = 0; j < array_length_1d(new_action[P.LOAD][L.ON_EXIT]); j++) start_action(room_id, new_action[P.SCENE_ID], new_action[P.LOAD][L.ON_EXIT][j],_starting_id); //Add Exit Actions
		return true; //Never enters the queue
    	break;
    case ACT.RANDOM:
    	var _param = new_action[P.LOAD][L.PARAM];
    	var index = random_func(_param[0] % 200,array_length_1d(new_action[P.LOAD][L.ON_EXIT])-1,true);
    	start_action(room_id, new_action[P.SCENE_ID], new_action[P.LOAD][L.ON_EXIT][index],_starting_id); //Add Random Exit Actions
		return true; //Never enters the queue
    	break;
    case ACT.TRANS_MUSIC:
    	var _param = new_action[P.LOAD][L.PARAM];
    	if debug print("[AM] PLAYING MUSIC...");
    	if get_gameplay_time() > 125 && cur_music_id != _param[0] {
	    	music_play_file(_param[0]);
	    	cur_music_id = _param[0];
	    	if cur_music_id == "music_loop" || cur_music_id == "noone" music_stop();
    	}
    	if debug && cur_music_id == _param[0] print("[AM] MUSIC ALREADY PLAYING");
    	
    	if get_gameplay_time() > 125 { //Yeeeaaa seee it was the start of the game before the music kicks in so I'll need you to come in on frame 126 that would be greeaaat.
	    	for (var j = 0; j < array_length_1d(new_action[P.LOAD][L.ON_EXIT]); j++) start_action(room_id, new_action[P.SCENE_ID], new_action[P.LOAD][L.ON_EXIT][j],_starting_id); //Add Exit Actions
			return true; //Never enters the queue
    	}
    	break;
    default: //custom type, unexplained type
    	if new_action[P.LOAD][L.ACTION_TYPE] > ACT.END_GAME {
	    	event_flag = EVT.START;
	    	custom_action = new_action;
	    	user_event(3);
	    	if !perpetual { //If instantaneous
	    		for (var j = 0; j < array_length_1d(new_action[P.LOAD][L.ON_EXIT]); j++) start_action(room_id, new_action[P.SCENE_ID], new_action[P.LOAD][L.ON_EXIT][j],_starting_id); //Add Exit Actions
				return true; //Never enters the queue
	    	}
    	}
        break;
}

array_push(cur_actions, new_action);
return true;

#define end_action_id(_room_id, _scene_id, _action_id,_starting_id) //On action End
for (var i = 0; i < array_length_1d(cur_actions); i++) {
	
    if cur_actions[i][P.ACTION_ID] == _action_id {
    	if debug print_debug("[AM] ACTION "+string(cur_actions[i][P.ACTION_INDEX])+":"+string(cur_actions[i][P.ACTION_ID])+" ENDED");
    	for (var j = 0; j < array_length_1d(cur_actions[i][P.LOAD][L.ON_EXIT]); j++) start_action(room_id, cur_actions[i][P.SCENE_ID], cur_actions[i][P.LOAD][L.ON_EXIT][j],_starting_id); //Add Exit Actions
        cur_actions = array_cut(cur_actions, i);
        break;
    }
}
return true;

#define end_action(_action_index,_starting_id) //On action End
for (var i = 0; i < array_length_1d(cur_actions); i++) {
    if cur_actions[i][P.ACTION_INDEX] == _action_index {
    	if debug print_debug("[AM] ACTION "+string(cur_actions[i][P.ACTION_INDEX])+":"+string(cur_actions[i][P.ACTION_ID])+" ENDED");
    	for (var j = 0; j < array_length_1d(cur_actions[i][P.LOAD][L.ON_EXIT]); j++) start_action(room_id, cur_actions[i][P.SCENE_ID], cur_actions[i][P.LOAD][L.ON_EXIT][j],_starting_id); //Add Exit Actions
        cur_actions = array_cut(cur_actions, i);
        
        break;
    }
}
return true;

#define reload_scenes()
user_event(0); //Run scene load scripts
return true;

#define quest_set(_id,_progress)
if quest_array[_id][0]  == noone array_push(quest_active,quest_array[_id]);
quest_array[@_id][@0] = _progress;//Save current quest progress
if _progress < 0 {
	if debug print_debug("[AM] Quest Reset: "+string(_id));
	quest_active = array_cut(quest_active,array_find_index(quest_active,quest_array[_id][0]));
	return noone;
}
if debug print_debug("[AM] Quest Progress: "+string(_id)+" : "+string(_progress));
if _progress >= array_length(quest_array[_id]) return self;

return quest_array[_id][_progress];

#define array_cut(_array, _index)
var _array_cut = array_create(array_length_1d(_array)-1);
var j = 0;
for (var i = 0; i < array_length_1d(_array); i++) {
	if i != _index {
		_array_cut[@j] = _array[i];
		j++;
	}
}
return _array_cut;

#define array_clone_seriously_why_isnt_this_how_it_works(_shit)
var _fuck = [];
for(var _i = 0;_i < array_length_1d(_shit);_i++) {
	if array_length_1d(_shit[_i]) > 0 array_push(_fuck,array_clone_seriously_why_isnt_this_how_it_works(_shit[_i]));
	else array_push(_fuck,_shit[_i]);
}
return _fuck;
#define cell_to_real(_pos,_cell_pos) //Translate cell coordinates to real
//_pos = [_pos[0] - render_offset[0],_pos[1] - render_offset[1]];
with room_manager {
	return [(_pos[0]-grid_offset)*cell_size + (cell_dim[0]*_cell_pos[0]-grid_offset*(_cell_pos[0]))*cell_size + render_offset[0], 
			(_pos[1]-grid_offset)*cell_size + (cell_dim[1]*_cell_pos[1]-grid_offset*(_cell_pos[1]))*cell_size + render_offset[1]];
}