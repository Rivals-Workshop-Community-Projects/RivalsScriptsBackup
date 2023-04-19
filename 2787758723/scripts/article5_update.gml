//article5_update, Room Manager

if !_init && get_gameplay_time() >= 2 { //Initialize things on the first gameplay frame
	with obj_stage_main {
		other.follow_player = follow_player;
		cam_pos_left = [view_get_xview(),view_get_yview()];
		cam_pos_right = [view_get_xview()+view_get_wview(),view_get_yview()+view_get_hview()];
		true_pos = [cam_pos_left[0]+view_get_wview()/2,cam_pos_left[1]+view_get_hview()/2];
	}
	
	follow_objects  = [follow_player];
    reload_rooms();
    switch_to_room_pos = [follow_player.respawn_point[0],follow_player.respawn_point[1]];
    room_switch_type = 0;
    room_switch(follow_player.respawn_point[2]);
    last_pos[0] = follow_player.x;
    last_pos[1] = follow_player.y;
    with obj_stage_main g_cam_pos = [other.follow_point.x,other.follow_point.y];
    visible = true;
    _init = 1;
    exit;
}
var players_respawning = 0;
with oPlayer {
	if (!("temp_level" in self) || temp_level == 0) {
		if (state == PS_DEAD && is_player_on(player)) {
			invincible = true;
			invince_time = 60;
			x = view_get_xview() + view_get_wview() / 2;
			y = view_get_yview() + view_get_hview() / 2;
			if (get_player_stocks(player) != 0) {
				players_respawning++;
			}
		}
	}
}
//#region exclusive to mario	
var players_alive = 0
with oPlayer { //Mario death
	if ("am_mario_health" in self) {
		if (!("temp_level" in self) || temp_level == 0)
			if (am_mario_state == 0 || am_mario_state == 2 || am_mario_state == 3)
				players_alive++;
	}
}
//#endregion

if (players_respawning >= obj_stage_main.player_count) {
	
	with oPlayer {
		if (!("temp_level" in self) || temp_level == 0) {
			if state == PS_DEAD && state_timer = 90 {
				with (other) {
					//var true_pos_new = cell_to_grid(other.respawn_point[0],other.respawn_point[1]);
					//true_pos = true_pos_new;
					switch_to_room_pos =  [follow_player.respawn_point[0],follow_player.respawn_point[1]];
					room_switch_type = 2;
					room_switch(follow_player.respawn_point[2]);
				    room_switch_on = true;
				    room_switch_timer = 0;
				    show_gui = false;
				    if (obj_stage_main.player_count <= 1 && !obj_stage_main.am_mario_inf_lives) {
						other.am_mario_lives --;
						if (!obj_stage_main.am_mario_syobon)
							other.am_mario_lives = max(0, other.am_mario_lives);
				    }
			    	if (obj_stage_main.am_mario_syobon) {
			    		obj_stage_main.am_mario_syobon_deaths++;
			    	}
					/*follow_point.x = true_pos[0];
					follow_point.y = true_pos[1];*/
				}
			}
		}
	}
}
else if (players_respawning >= 0 && players_respawning < obj_stage_main.player_count) {
	with oPlayer {
		if (!("temp_level" in self) || temp_level == 0) {
			if state == PS_DEAD && state_timer >= 300 {
				var spawn_x = -1;
				var spawn_y = -1;
				var spawn_dir = 1;
				
				if ("am_mario_health" in self) {
				    am_mario_state = 0;
				    am_mario_state_timer = 0;
				    am_mario_health = 1;
				}
				with oPlayer {
					if (id == other.id) continue;
					if (clone || custom_clone) continue;
					if (!("temp_level" in self) || temp_level == 0) {
						if ((state != PS_DEAD && state_cat != SC_HITSTUN) && am_mario_state == 0) {
							spawn_x = x;
							spawn_y = y;
							spawn_dir = spr_dir;
						}
					}
				}
				if ("am_mario_health" in self) {
					if (am_mario_lives <= 0 && !obj_stage_main.am_mario_syobon) {
						spawn_x = -1;
						spawn_y = -1;
					}
				}
				
				can_respawn = (spawn_x != -1 && spawn_y != -1)
				
				if (can_respawn && attack_pressed)
				{
					clear_button_buffer(PC_ATTACK_PRESSED)
					set_state(PS_IDLE);
					x = spawn_x;
					y = spawn_y;
					spr_dir = spawn_dir;
					visible = true;
					invincible = true;
					invince_time = 120;
					can_respawn = false;
				}
			}
		}
	}
}
// with oPlayer { //Respawn Code
// 	if state == PS_DEAD || state == PS_RESPAWN {
// 		x = respawn_point[0];
// 		y = respawn_point[1];
// 	}
// 	if state == PS_SPAWN {
// 		respawn_point = [x,y-32,other.cur_room]; //Spawn state sets checkpoint?
// 	}
// }
	
if (combined_terrain >= 1) {
	combined_terrain++
	if (combined_terrain >= 2) {
		combined_terrain = 0;
	}
}

if get_gameplay_time() > 2 { 
	if switch_room room_switch(switch_to_room);
	if room_switch_on room_switch_update();
	var player_valid = true;
    
	if (players_respawning >= obj_stage_main.player_count) {
			player_valid = false;
	}
    
//#region exclusive to mario
	var players_alive = array_create(0);
	var players_hitstun = 0;
		with oPlayer { //Mario death
			if ("am_mario_health" in self) {
				if (!("temp_level" in self) || temp_level == 0)
					if ((am_mario_health > 0 && am_mario_state != 1 && am_mario_state != 7)) {
						if (state != PS_DEAD && state != PS_RESPAWN) {
							array_push(players_alive, id);
						}
						if (state == PS_HITSTUN || state == PS_RESPAWN) {
							players_hitstun ++;
						}
						continue;
					}
			}
		}
	follow_objects  = players_alive;
//#endregion			
	if (player_valid && players_hitstun <= 0)			
    	set_follow_point(follow_objects);

	if (instance_exists(obj_stage_main.cam_override_obj)) {
		switch obj_stage_main.cam_override_obj.lock_type {
	        case 0: //Lock xy
	        	follow_point.x = obj_stage_main.cam_override_obj.cam_pos[0];
	        	follow_point.y = obj_stage_main.cam_override_obj.cam_pos[1];
	            break;
	        case 1: //Lock y
	        	follow_point.y = obj_stage_main.cam_override_obj.cam_pos[1];
	            break;
	        case 2: //Lock x
	        	follow_point.x = obj_stage_main.cam_override_obj.cam_pos[0];
	            break;
	    }
	    
		follow_point.x = clamp(follow_point.x , cell_min[0] + 480, cell_max[0] - 480);//+ follow_player.hsp*10;
		follow_point.y = clamp(follow_point.y, cell_min[1] + 270, cell_max[1] - 270);//+ follow_player.hsp*10;
	}
    with obj_stage_main {
		cam_state_time++;
		if old_cam_state != cam_state {
			cam_state_time = 0;
			old_cam_state = cam_state;
		}
		cam_pos_left = [view_get_xview(),view_get_yview()];
		cam_pos_right = [view_get_xview()+view_get_wview(),view_get_yview()+view_get_hview()];
		true_pos = [cam_pos_left[0]+view_get_wview()/2,cam_pos_left[1]+view_get_hview()/2];
	
		switch cam_state {
			case -1: //nothing
				break;
			case 1: //Controlled by action manager
				with action_manager {
					other.g_cam_pos = cam_pos;
					// other.cam_smooth = cam_smooth;
					other.cam_smooth = floor((other.cam_smooth+cam_smooth)/2);
				}
				//print_debug(string(g_cam_pos));
				break;
			case 2: //Controlled by Camera article7
				if !instance_exists(cam_override_obj) {
					with room_manager other.g_cam_pos = [follow_point.x,follow_point.y]; //follow_point defined in article5_update
					cam_state = 0; //reset to room managing if can object is not available
					break;
				}
				with cam_override_obj {
					other.cam_smooth = floor((other.cam_smooth+cam_smooth)/2);
					switch lock_type {
		                case 0: //Lock xy
		                	other.g_cam_pos = cam_pos;
		                    break;
		                case 1: //Lock y
		                	other.g_cam_pos[1] = cam_pos[1];
		                    break;
		                case 2: //Lock x
		                	other.g_cam_pos[0] = cam_pos[0];
		                    break;
		            }
				}
				break;
			default: //not defined, controlled by global/room_manager - "world cam"
				with room_manager {
					other.g_cam_pos = [follow_point.x,follow_point.y]; //follow_point defined in article5_update
					// other.cam_smooth = floor((other.cam_smooth+cam_smooth)/2);
					other.cam_smooth = floor(ease_linear(other.cam_smooth,cam_smooth,1,100));
					// if other.cam_state_time > 30/other.cam_smooth other.cam_smooth = cam_smooth;
					// if (cur_room_time < 30 || other.cam_state_time > 30*floor(other.cam_smooth/2)) other.cam_smooth = cam_smooth;
					
				}
				break;
			
		}
	
		set_view_position_smooth(g_cam_pos[0],g_cam_pos[1],cam_smooth);
		// if debug draw_circle_color(g_cam_pos[0],g_cam_pos[1],5,c_blue,c_blue,false);
		//set_view_position(g_cam_pos[0],g_cam_pos[1]);
	
	}
	if (players_hitstun > 0) obj_stage_main.cam_smooth = smoothing;
    //Frame Cleanups
    scroll_horiz = true;
    scroll_vert = true;		
	cell_pos = base_to_am([follow_point.x + 480, follow_point.y + 270])[1];
	grid_pos = [follow_point.x + 480, follow_point.y + 270];
	if !room_switch_on {
	    var delta = [grid_pos[0] - old_grid_pos[0] , grid_pos[1] - old_grid_pos[1]]
	    if (abs(delta[0]) >= 32 || abs(delta[1]) >= 32) { 
			room_render(cur_room, [cell_pos[0], cell_pos[1]], [cell_pos[0], cell_pos[1]]);
			old_grid_pos = [follow_point.x + 480, follow_point.y + 270];
	    }
	}	
	room_unrender(cur_room, [cell_pos[0], cell_pos[1]], [cell_pos[0], cell_pos[1]]);
    //Battle music code
    if (obj_stage_main.play_battle_music) {
	    if enemy_in_range && !battle_music_on {
	    	battle_music_on = true;
	    	music_fade_to(battle_music);
	    }
	    if !enemy_in_range && battle_music_on {
	    	if music_cooldown_time > music_cooldown_timer music_cooldown_timer++;
	    	else {
		    	battle_music_on = false;
		    	music_fade_to(action_manager.cur_music_id);
		    	music_cooldown_timer = 0;
	    	}
	    }
    }
    enemy_in_range = false;
    if music_fade_timer < music_fade_time music_fade_update();
} 

// with oPlayer if state == PS_RESPAWN print("[article5:update] completed check");

//Music Find
#define music_fade_to(_music)
if _music == music_cur return;
music_to = _music;
music_fade_timer = 0;
#define music_fade_update()
music_fade_timer++;
if music_to != noone {
	music_set_volume(abs(music_fade_timer*2-music_fade_time)/music_fade_time);
	if music_fade_timer == floor(music_fade_time/2) - 1 music_set_volume(0);
	if music_fade_timer == floor(music_fade_time/2) {
		music_set_volume(0);
		music_play_file(music_to); 
	}
	music_cur = music_to;
}
#define set_follow_point(_obj_array) //Set the point the world cam will follow to
if (array_length(_obj_array) == 0) return;
var _x_avg = 0;
var _y_avg = 0;
var _count = 0;
var cam_vel_influence = obj_stage_main.cam_vel_influence;
for (var i = 0; i < array_length_1d(_obj_array);i++) {
    with _obj_array[i] {
    	avg_vel = [(cam_vel_influence*avg_vel[0]+hsp)/(cam_vel_influence+1),(cam_vel_influence*avg_vel[1]+vsp)/(cam_vel_influence+1)];
    	//else avg_vel = [hsp, vsp];
        _x_avg += x;
        _y_avg += y;
        //_x_avg += _obj_array[i].x+_obj_array[i].hsp*10;
        //_y_avg += _obj_array[i].y+_obj_array[i].vsp*5;
        _count++;
    }
}
_x_avg /= _count;
_y_avg /= _count;

var _xx = max(floor(_x_avg + obj_stage_main.cam_offset[0]), follow_point.x);
var _yy = floor(_y_avg + obj_stage_main.cam_offset[1]);//+ follow_player.vsp*10; //+(follow_player.down_held > 20)*50-(follow_player.up_held > 20)*50;


follow_point.x = clamp(_xx , cell_min[0] + 480, cell_max[0] - 480);//+ follow_player.hsp*10;
follow_point.y = clamp(_yy, cell_min[1] + 270, cell_max[1] - 270);//+ follow_player.hsp*10;

// follow_point.x = _obj_array[0].x + obj_stage_main.cam_offset[0];
// follow_point.y = _obj_array[0].y + obj_stage_main.cam_offset[1];

#define reload_rooms() //Reload room data, runs on start
cur_room = 0;
cur_room_time = 0;
// array_room_ID = array_create(0);
array_room_data = array_create(0);
array_room_transition_time = 120;
array_room_name = 0;

user_event(1); //Room Load Event Script
// #define room_add(_room_id,room_data) //Adds a new room to the scene
// var _room_id_ind = array_find_index(array_room_ID,_room_id);
// if _room_id_ind == - 1 {
//     // if debug print_debug("[RM] Adding... "+string(_room_id));
//     array_push(array_room_data,room_data);
//     array_push(array_room_ID,_room_id);
// } else {
//     array_room_data[_room_id_ind] = room_data;
//     array_room_ID[_room_id_ind] = _room_id;
// }
#define room_switch(_room_id) //Switches the room
switch_room = false; //Call once per set per frame
if debug print_debug("[RM] Switching to... "+string(_room_id));
// if _room_id != cur_room {
cur_room_time = 0;
// var _room_id_ind = array_find_index(array_room_ID,_room_id);
// if _room_id_ind != - 1 {
if _room_id < array_length_1d(array_room_data) {
    cur_room_to = _room_id;
    // cur_room = _room_id_ind;
    room_switch_on = true;
    room_switch_timer = 0;
    cam_smooth = 1; //Instant cam adjustments
    //despawn_room();
	//cell_pos(cur_room);
} else {
    // var _room_id_ind = array_find_index(array_room_ID,0);
    cur_room_to = 0;
    print_debug("[RM] Error: Room Index not found.");
    //despawn_room();
    //room_render(cur_room);
}
    
// } else {
// 	if debug print_debug("[RM] CURRENT ROOM");
// 	despawn_room();
//     room_render(cur_room);
// }
// free = false;
if (obj_stage_main.room_checkpoints) {
	with oPlayer {
		// respawn_point = [x,y,other.cur_room]; //Reset respawn every room change ^^;
		respawn_point = [other.switch_to_room_pos[0],other.switch_to_room_pos[1],other.cur_room_to]; //Reset respawn every room change ^^;
	}
	obj_stage_main.room_checkpoints = false;
}
switch_to_room = cur_room_to;
return;
#define room_switch_update() //Runs when a room transition is in effect
//with oPlayer {
	//if other.room_switch_timer == 1 set_state(PS_SPAWN);
	//if other.room_switch_timer == other.room_switch_time set_state(PS_IDLE);
//}
//cam_state = -1;
switch room_switch_type {
	case 1: //Rectangle Slide
		if room_switch_timer == floor(room_switch_time/2)-1 {
			// if switch_to_room != cur_room {
			// }
			despawn_room();
    		cur_room = cur_room_to;
			switch_room_position(switch_to_room_pos);
			room_start(cur_room);
			//if get_gameplay_time() > 125 music_play_file(action_manager.cur_music_id);
			// with obj_stage_article if num == 3 {
			// 	event_id = other.room_switch_event;
			// 	event_triggered = true;
			// }
		}
		if room_switch_timer >= room_switch_time {
			switch_reset();
		}
		break;
	case 2: //Fade Out/In
		// music_set_volume(abs(room_switch_timer-(room_switch_time/2))/(room_switch_time/2)-1);
		if room_switch_timer == floor(room_switch_time/2)-1 {
			// if switch_to_room != cur_room {
			// }
			despawn_room();
    		cur_room = cur_room_to;
			switch_room_position(switch_to_room_pos);
			room_start(cur_room);
			//if get_gameplay_time() > 125 music_play_file(action_manager.cur_music_id);
			
			// with obj_stage_article if num == 3 {
			// 	event_id = other.room_switch_event;
			// 	event_triggered = true;
			// }
		}
		if room_switch_timer >= room_switch_time {
			switch_reset();
		}
		break;
	case 3: //Fade Out/In - long
		// music_set_volume(-abs(room_switch_timer-(room_switch_time_long/2))/(room_switch_time_long/2)+1);
		if room_switch_timer == floor(room_switch_time_long /2)-1 {
			// if switch_to_room != cur_room {
			// }
			despawn_room();
    		cur_room = cur_room_to;
			switch_room_position(switch_to_room_pos);
			room_start(cur_room);
		//if get_gameplay_time() > 125 music_play_file(action_manager.cur_music_id);
			// with obj_stage_article if num == 3 {
			// 	event_id = other.room_switch_event;
			// 	event_triggered = true;
			// }
		}
		if room_switch_timer >= room_switch_time_long  {
			switch_reset();
		}
		break;
	case 0:
	default:
		despawn_room();
    	cur_room = cur_room_to;
		switch_room_position(switch_to_room_pos);
		room_start(cur_room);
		//if get_gameplay_time() > 125 music_play_file(action_manager.cur_music_id);
		
		switch_reset();
		break;
}
room_switch_timer++;

#define switch_reset()
room_switch_type = 0;
room_switch_on = false;
cam_state = 0;
// cam_smooth = obj_stage_main.cam_smooth;
//---Moved Elsewhere
// with action_manager {
// 	room_id = other.cur_room;
// 	if scene_id != 0 array_push(action_queue, [other.cur_room,scene_id,1]); //Start the first action of the room/scene
// 	array_push(action_queue, [other.cur_room,0,1]); //Start the first action of ALL room/scene
// }

if (obj_stage_main.room_checkpoints) {
	with oPlayer {
		// respawn_point = [x,y,other.cur_room]; //Reset respawn every room change ^^;
		respawn_point = [other.switch_to_room_pos[0],other.switch_to_room_pos[1],other.cur_room]; //Reset respawn every room change ^^;
	}
	obj_stage_main.room_checkpoints = false;
}
return true;
#define room_render(_room_id, _cell_min2, _cell_max2)
var articles_spawned = 0;
for (var _x = _cell_min2[0]-1; _x <= _cell_max2[0]; _x ++)
{
	for (var _y = _cell_min2[1]-1; _y <= _cell_max2[1]; _y ++) {
		var _cell_pos = [_x, _y];
	    var cell_data = grid_room_data[# _x, _y]; 
		var next_terrain = terrain_grid_data[# _x, _y];
        //if (abs(abs(_cell_pos[0]) - abs(cell_pos[0])) < 2 && abs(abs(_cell_pos[1]) - abs(cell_pos[1])) < 2) { 
		    //If the cell is near enough to render
    	for (var j = 0; j < array_length_1d(cell_data); j++) { //Check objects inside the array
        	//Real coords need translating into relative
        	rel_pos = cell_to_grid([cell_data[j][1] + grid_offset,cell_data[j][2] - grid_offset], _cell_pos);
        	if (rectangle_in_view(rel_pos[0], rel_pos[1], rel_pos[0], rel_pos[1], 64) || (array_length(cell_data[j][6]) > 2 && cell_data[j][6][2] == 1)) { 
		        if cell_data[j][6][0] == 0 || !instance_exists(cell_data[j][6][0]) {
	    			var art = noone;
					switch cell_data[j][3] {
	                    case 2:
	                        //obj_type = "obj_stage_article_solid";
	                        art = instance_create(floor(rel_pos[0]),floor(rel_pos[1]),"obj_stage_article_solid",cell_data[j][0]);
	                        break;
	                    case 1:
	                        //obj_type = "obj_stage_article_platform";
	                        art = instance_create(floor(rel_pos[0]),floor(rel_pos[1]),"obj_stage_article_platform",cell_data[j][0]);
	                        break;
	                    default:
	                        //obj_type = "obj_stage_article";
	                        art = instance_create(floor(rel_pos[0]),floor(rel_pos[1]),"obj_stage_article",cell_data[j][0]);
	                    	break;
	                }
	                art.spawn_variables = cell_data[j][5];
	                art.depth = cell_data[j][4];
	                art.og_depth = cell_data[j][4];
	                art.cell_size = cell_size;
	                art.init_pos = [cell_data[j][1],cell_data[j][2]];
	                art.cell_pos = _cell_pos;
	                cell_data[@j][@6][@0] = 1;
	                art.action_article_index = cell_data[j][6][1]; //array_room_data[_room_id][i][1][j][6][1] 6D Array!
	                art.room_manager = id;
	                art.action_manager = action_manager;
	                art.debug = obj_stage_main.debug;
	                art.debug_info = 0;
	                art.debug_pos = 0;
	                art.in_render = true;
	                art.just_spawned = true;
	                art.just_outside_view = true;
	                art.cell_spawned = (array_length(cell_data[j][6]) > 2 && cell_data[j][6][2] == 1);
	                art.art_data = cell_data[@j][@6][@0];
	                //if cell_data[j][6][1] == 1 cell_data[@j][@6][@0] = -1;
	                art.visible = false;
	                //if debug print_debug("[RM] Room Article: "+string(art.init_pos));
				}
	        }
		}
			    	
		
    	for (var j = 0; j < array_length(next_terrain); j++) { //Check objects inside the array 
			if next_terrain[j][0] == 0 {	
        		if (rectangle_in_view(next_terrain[j][2], next_terrain[j][3], next_terrain[j][2] + next_terrain[j][4] * 32,  next_terrain[j][3] + next_terrain[j][5] * 32, 128)) { 
			    	switch next_terrain[j][1]  {
			            case 1:
			                //obj_type = "obj_stage_article_platform";
			                art = instance_create(floor(next_terrain[j][2]),floor(next_terrain[j][3]),"obj_stage_article_platform",1);
			                break;
			            default:
			                //obj_type = "obj_stage_article";
			                art = instance_create(floor(next_terrain[j][2]),floor(next_terrain[j][3]),"obj_stage_article_solid",1);
			            	break;
			        }
			        art.image_xscale = next_terrain[j][4]; 
			        art.image_yscale = next_terrain[j][5]; 
			        art.sprite_index = asset_get("solid_32x32")
			        art.mask_index = asset_get("solid_32x32")
			        art._init = 1; 
			        art.visible = false;
	                art.in_render = true;
	                art.just_spawned = true;
	                art.just_outside_view = true;
			        next_terrain[@ j][@ 0] = art;
	                art.art_data = next_terrain[@ j][@ 0] ;
				}
        	}
		}
    }
}
#define room_unrender(_room_id, _cell_min, _cell_max)
var articles_spawned = 0;
with obj_stage_article {
	if num != 3 && num != 5 && (!("keep" in id) || keep == false) && (!("dont_despawn" in id) || dont_despawn == false) {
		if (!("keep" in id) || keep == false)  {
			if ("in_render" not in self) {
				in_render = true;
				just_spawned = true;
				just_outside_view = false;
			}
			if (in_render) {
				if ((!("dont_despawn" in id) || dont_despawn == false) && !article_in_view(id, 128)) {
					in_render = false;
					just_spawned = false;
				}
			}
			else {
				if ((!("dont_despawn" in id) || dont_despawn == false) && !article_in_view(id, 128)) {
					just_outside_view = true;
				}
				
				if ((!("dont_despawn" in id) || dont_despawn == false) && (!("just_outside_view" in id) || just_outside_view)) {
					if (article_in_view(id, 0)) {
						in_render = true;
						just_outside_view = false;
						just_spawned = true;
						cell_spawned = true;
					}
				}
				if ((!("dont_despawn" in id) || dont_despawn == false) && (!("just_outside_view" in id) || just_outside_view)
					&& (!("cell_spawned" in id) || !cell_spawned)) {
					var _cell_pos1 = base_to_am([bbox_left + 128, bbox_top + 128])[1];
					var _cell_pos2 = base_to_am([bbox_right - 128, bbox_bottom - 128])[1];
					if (_cell_pos2[0] < _cell_min[0] || _cell_pos2[1] < _cell_min[1]
						|| _cell_pos1[0] > _cell_max[0] || _cell_pos1[1] > _cell_max[1])&& !article_in_view(id, 128) {
							if ("art_data" in self) art_data = 0;
							article_destroy(id);
							continue;
						}
				}
			}
		}
	}
}
with obj_stage_article_platform {
	if num != 3 && num != 5 && (!("keep" in id) || keep == false) && (!("dont_despawn" in id) || dont_despawn == false) {
		if (!("keep" in id) || keep == false)  {
			if ("in_render" not in self) {
				in_render = true;
				just_spawned = true;
				just_outside_view = false;
			}
			if (in_render) {
				if ((!("dont_despawn" in id) || dont_despawn == false) && !article_in_view(id, 128)) {
					in_render = false;
					just_spawned = false;
				}
			}
			else {
				if ((!("dont_despawn" in id) || dont_despawn == false) && !article_in_view(id, 128)) {
					just_outside_view = true;
				}
				
				if ((!("dont_despawn" in id) || dont_despawn == false) && (!("just_outside_view" in id) || just_outside_view)) {
					if (article_in_view(id, 0)) {
						in_render = true;
						just_outside_view = false;
						just_spawned = true;
						cell_spawned = true;
					}
				}
				if ((!("dont_despawn" in id) || dont_despawn == false) && (!("just_outside_view" in id) || just_outside_view)
					&& (!("cell_spawned" in id) || !cell_spawned)) {
					var _cell_pos1 = base_to_am([bbox_left + 128, bbox_top + 128])[1];
					var _cell_pos2 = base_to_am([bbox_right - 128, bbox_bottom - 128])[1];
					if (_cell_pos2[0] < _cell_min[0] || _cell_pos2[1] < _cell_min[1]
						|| _cell_pos1[0] > _cell_max[0] || _cell_pos1[1] > _cell_max[1])&& !article_in_view(id, 128) {
							if ("art_data" in self) art_data = 0;
							article_destroy(id);
							continue;
						}
				}
			}
		}
	}
}
with obj_stage_article_solid {
	if num != 3 && num != 5 && (!("keep" in id) || keep == false) && (!("dont_despawn" in id) || dont_despawn == false) {
		if (!("keep" in id) || keep == false)  {
			if ("in_render" not in self) {
				in_render = true;
				just_spawned = true;
				just_outside_view = false;
			}
			if (in_render) {
				if ((!("dont_despawn" in id) || dont_despawn == false) && !article_in_view(id, 128)) {
					in_render = false;
					just_spawned = false;
				}
			}
			else {
				if ((!("dont_despawn" in id) || dont_despawn == false) && !article_in_view(id, 128)) {
					just_outside_view = true;
				}
				
				if ((!("dont_despawn" in id) || dont_despawn == false) && (!("just_outside_view" in id) || just_outside_view)) {
					if (article_in_view(id, 0)) {
						in_render = true;
						just_outside_view = false;
						just_spawned = true;
						cell_spawned = true;
					}
				}
				if ((!("dont_despawn" in id) || dont_despawn == false) && (!("just_outside_view" in id) || just_outside_view)
					&& (!("cell_spawned" in id) || !cell_spawned)) {
					var _cell_pos1 = base_to_am([bbox_left + 128, bbox_top + 128])[1];
					var _cell_pos2 = base_to_am([bbox_right - 128, bbox_bottom - 128])[1];
					if (_cell_pos2[0] < _cell_min[0] || _cell_pos2[1] < _cell_min[1]
						|| _cell_pos1[0] > _cell_max[0] || _cell_pos1[1] > _cell_max[1])&& !article_in_view(id, 128) {
							if ("art_data" in self) art_data = 0;
							article_destroy(id);
							continue;
						}
				}
			}
		}
	}
}
// } else if debug print_debug("[RM] Unfound Room ID");
#define room_start(_room_id)
//Spawn the background and terrain.
if _room_id < array_length_1d(array_background_data) {
	background_data = array_background_data[_room_id];
	//Background
    for (var i = 0; i < array_length_1d(background_data); i++) { //Check objects inside the array
	    	//Real coords need translating into relative
	        rel_pos = cell_to_grid([background_data[i][2] + grid_offset, background_data[i][3] - grid_offset],[0, 0]);
	        art = instance_create(rel_pos[0],rel_pos[1],"obj_stage_article",1);
	        
	        art.spawn_variables[0] = background_data[i][0]; //sprite_index
	        art.spawn_variables[1] = background_data[i][1];	//anim speed
	        art.spawn_variables[2] = background_data[i][4];	//tiling (0 = false, 1 = true, 2, horizontally, 3 = vertically)
	        art.spawn_variables[3] = background_data[i][5]; //parallax array [x, y]
	        art.spawn_variables[4] = background_data[i][6]; //scroll speed array [x, y]
	        art.depth = background_data[i][7]; //depth
	        art.og_depth = background_data[i][7]; //depth
	        
	        if (array_length(background_data[i]) >= 9) art.spawn_variables[5] = background_data[i][8]; //alpha
	        if (array_length(background_data[i]) >= 10) art.spawn_variables[6] = background_data[i][9];	//blend
        }
}

if _room_id < array_length_1d(array_terrain_data) {
	terrain_data = array_terrain_data[_room_id];
    //Terrain
    for (var i = 0; i < array_length_1d(terrain_data); i++) { //Check objects inside the array
        var _cell_pos = terrain_data[i][0];
        var cell_data = terrain_data[i][1];
        
        for (var j = 0; j < array_length_1d(cell_data); j++) { //Check objects inside the array
	    	//Real coords need translating into relative
	        if (cell_data[j][2] == 0) {
	        	var rel_pos = cell_to_grid([grid_offset,-grid_offset],_cell_pos);
		        var art = instance_create(rel_pos[0],rel_pos[1],"obj_stage_article",1);
		        art.spawn_variables[0] = cell_data[j][0]; //sprite_index
		        art.spawn_variables[1] = cell_data[j][1];	//anim speed
		        art.depth = cell_data[j][3]; //depth
		        art.og_depth = cell_data[j][3]; //depth
		       art.image_xscale = 2; 
		       art.image_yscale = 2;
	        }
	        else {
	        	var rel_pos = cell_to_grid([grid_offset, -grid_offset],_cell_pos);
	        	var grid = 32;
		        if (array_length(cell_data[j]) >= 5)
		        	grid = cell_data[j][4]; //grid size (default is 32)
		       var art = instance_create(rel_pos[0],rel_pos[1],"obj_stage_article",1);
		       art.image_xscale = 2; 
		       art.image_yscale = 2;
		       art.sprite_index = cell_data[j][0]; //sprite_index
		       art.mask_index = cell_data[j][0]; //sprite_index
	        	var grid_pos = grid * grid_offset
		       for (var k = -grid; k <= sprite_get_width(cell_data[j][0])*2 + grid; k+=grid) {
		            for (var l = -grid; l <= sprite_get_height(cell_data[j][0])*2 + grid; l+=grid ) {
		                if (position_meeting(rel_pos[0] + k+2, rel_pos[1] + l+2, art)) { 
		            		with (art) {
			                    var tile = noone;
			                    switch cell_data[j][2] {
			                        case 1:
			                            //obj_type = "obj_stage_article_solid";
			                            tile = instance_create(rel_pos[0] + k,rel_pos[1] + l,"obj_stage_article_platform",1);
			                            break;
			                        default:
			                            //obj_type = "obj_stage_article";
			                            tile = instance_create(rel_pos[0] + k,rel_pos[1] + l,"obj_stage_article_solid",1);
			                        break;
			                    }
			                    tile.sprite_index = asset_get("solid_32x32")
			                    tile.mask_index = asset_get("solid_32x32")
		                        tile.image_xscale = 1;
		                        tile.image_yscale = 1;  
			                    if (tile.x == other.cell_min[0])
			                    {
			                        tile.x -= grid * 15;
			                        tile.image_xscale = 16;                    
			                    }
			                    if (tile.y == other.cell_min[0])
			                    {
			                        tile.y -= grid * 15;
			                        tile.image_yscale = 16;                    
			                    }
			                    if (tile.x == other.cell_max[0] - grid)
			                    {
			                        tile.image_xscale = 16;                    
			                    }
			                    if (tile.y == other.cell_max[1] - grid)
			                    {
			                        tile.image_yscale = 16;                    
			                    }
			                }
		            	}
		            }
		        }
		        instance_destroy(art);
	        }
        }
	}
}
organize_grid(_room_id);
combine_tiles(0);
combine_tiles(1);
old_cell_pos =  base_to_am([follow_point.x, follow_point.y])[1];
cell_pos = base_to_am([follow_point.x, follow_point.y])[1];
room_render(cur_room, [cell_pos[0]-1, cell_pos[1]-1], [cell_pos[0]+1, cell_pos[1]+1]);
//Start new room Action Things
with action_manager {
	room_id = other.cur_room;
	if scene_id != 0 array_push(action_queue, [other.cur_room,scene_id,1]); //Start the first action of the room/scene
	array_push(action_queue, [0,0,1]); //Start the universal actions for ALL rooms
	array_push(action_queue, [0,scene_id,1]); //Start the universal actions for this scenes
	array_push(action_queue, [other.cur_room,0,1]); //Start the first actions for this room
}

#define real_to_grid(_pos) //Translate real coordinates into coordinates on the basegame grid 
//return [_pos[0] - init_cam_pos[0]+true_pos[0], _pos[1] - init_cam_pos[1]+true_pos[1]]; 
//return [_pos[0] - render_offset[0], _pos[1] - render_offset[1]]; 
return _pos;
#define cell_to_real(_pos,_cell_pos) //Translate cell coordinates to real
//_pos = [_pos[0] - render_offset[0],_pos[1] - render_offset[1]];
return [(_pos[0]-grid_offset)*cell_size + (cell_dim[0]*_cell_pos[0]-grid_offset*(_cell_pos[0]))*cell_size + render_offset[0], 
		(_pos[1]-grid_offset)*cell_size + (cell_dim[1]*_cell_pos[1]-grid_offset*(_cell_pos[1]))*cell_size + render_offset[1]];
// return [(_pos[0]-grid_offset)*cell_size + (cell_dim[0]*_cell_pos[0]-grid_offset*(_cell_pos[0]))*cell_size + render_offset[0], 
// 		(_pos[1]-grid_offset)*cell_size + (cell_dim[1]*_cell_pos[1]-grid_offset*(_cell_pos[1]))*cell_size + render_offset[1]];
#define cell_to_grid(_pos, _cell_pos) //Translate cell coordinates to the basegame grid system
with room_manager return cell_to_real(_pos,_cell_pos);

#define grid_to_cell(_pos) //Translate basegame grid system coordinates to in cell coordinates
with obj_stage_main.room_manager {
	_pos = [_pos[0] - render_offset[0],_pos[1] - render_offset[1]];
	var _sub_pos_x = [(_pos[0] % ((cell_dim[0]-grid_offset)*cell_size)),floor(_pos[0]/((cell_dim[0]-grid_offset)*cell_size))];
	var _sub_pos_y = [(_pos[1] % ((cell_dim[1])*cell_size)),floor(_pos[1]/((cell_dim[1])*cell_size))];
	if sign(_sub_pos_x[0]) == -1 _sub_pos_x[0] += ((cell_dim[0]-grid_offset)*cell_size); 
	if sign(_sub_pos_y[0]) == -1 _sub_pos_y[0] += ((cell_dim[1])*cell_size);
    return [[_sub_pos_x[0], //Subcell
		    _sub_pos_y[0]],
		   [_sub_pos_x[1], //Cell
			_sub_pos_y[1]]];
}

#define base_to_am(_pos) //Translate base-game coordinates to AM coordinates
with obj_stage_main.room_manager {
	_pos = [_pos[0] - render_offset[0],_pos[1] - render_offset[1]];
	return [[_pos[0] % ((cell_dim[0]-grid_offset)*cell_size),_pos[1] % ((cell_dim[1]-grid_offset)*cell_size)],
			[floor(_pos[0]/((cell_dim[0]-grid_offset)*cell_size)),
			 floor(_pos[1]/((cell_dim[1]-grid_offset)*cell_size))],cur_room];
}
#define am_to_base(_pos,_cell_pos)//Translate AM coordinates to base-game coordinates
return [_cell_pos[0]*cell_dim[0]+_pos[0]+render_offset[0], _cell_pos[1]*cell_dim[1]+_pos[1]+render_offset[1]];

#define despawn_room() //Despawns all articles in a current room. If an article was a 1 time use, it won't respawn.
var _room_id = cur_room;
for (var k = 0; k < array_length_1d(array_room_data[_room_id]); k++) {
        for (var j = 0; j < array_length_1d(array_room_data[_room_id][k][1]); j++) { //Check objects inside the array
            if (!("keep" in array_room_data[@_room_id][k][1][j][6][0]) || array_room_data[@_room_id][k][1][j][6][0].keep == false) array_room_data[@_room_id][@k][@1][@j][@6][@0] = 0; //Set to not spawned if not dead
        }
    }
with obj_stage_article {
	// if num == 3 array_scene_ID = []; //Reset Scene Loads
	if num != 3 && num != 5 && (!("keep" in id) || keep == false) {
		if ("art_data" in self) art_data = 0;
		article_destroy(id);
	}
}
with obj_stage_article_platform instance_destroy(id);
with obj_stage_article_solid instance_destroy(id);

//Also delete any articles in spawn
with obj_article1 instance_destroy(id);
with obj_article2 instance_destroy(id);
with obj_article3 instance_destroy(id);
with obj_article_solid instance_destroy(id);
with obj_article_platform instance_destroy(id);
//obj_stage_main.am_mario_enemies = [];

#define switch_room_position(_pos) //Switches the room position in grid space (Harbige12)
cell_min = cell_to_grid([grid_offset, grid_offset], room_min_cell(cur_room));
cell_max = cell_to_grid(cell_dim, room_max_cell(cur_room));

room_width = cell_max[0] + 480;
room_height = cell_max[1] + 272;

var grid_pos = cell_to_real(_pos[1], _pos[0]);
if (grid_pos[0] != -1) {
	follow_point.x = grid_pos[0];
	with oPlayer if (!("temp_level" in self) || temp_level == 0)  x = grid_pos[0];
	//follow_player.x = follow_point.x;
}
if (grid_pos[1] != -1) {
	follow_point.y = grid_pos[1];
	with oPlayer if (!("temp_level" in self) || temp_level == 0)  y = grid_pos[1];
	//follow_player.y = follow_point.y;
}
with oPlayer if (!("temp_level" in self) || temp_level == 0)  {
	if ((am_mario_lives > 0 || obj_stage_main.am_mario_syobon) && (state != PS_DEAD || !room_manager.show_gui)) {
		visible = true;
		set_state(PS_IDLE); 
		if ("am_mario_health" in self) {
			am_mario_state = 0;	
			am_mario_state_timer = 0;	
		}
	}
}
follow_point.x = clamp(follow_point.x , cell_min[0] + 480, cell_max[0] - 480);//+ follow_player.hsp*10;
follow_point.y = clamp(follow_point.y , cell_min[1] + 270, cell_max[1] - 270);//+ follow_player.hsp*10;
//set_view_position(follow_point.x,follow_point.y);
create_mario_gui();
return true;

#define set_view_position_smooth(_x,_y,_smooth)
var _xx = clamp(_x, obj_stage_main.room_manager.cell_min[0] + view_get_wview() / 2, obj_stage_main.room_manager.cell_max[0] - view_get_wview() / 2)
var _yy = clamp(_y, obj_stage_main.room_manager.cell_min[1] + view_get_hview() / 2, obj_stage_main.room_manager.cell_max[1] - view_get_hview() / 2)
sm_x = ease_linear(floor(true_pos[0]),floor(_xx),1,_smooth);
sm_y = ease_linear(floor(true_pos[1]),floor(_yy),1,_smooth);
set_view_position(round(sm_x), round(sm_y));
true_pos[0] += sm_x;
true_pos[1] += sm_y;
//set_view_position(sm_x, sm_y);
//background movements
#define room_max_cell(_room_id)
var rd = obj_stage_main.room_manager.array_room_data[_room_id];
var value = [0, 0];   
for (var i = 0; i < array_length_1d(rd); i++) { //For each cell room_data = array_room_data[_room_id];
    var _cell_p = rd[i][0];
    value[0] = max(value[0], _cell_p[0])
    value[1] = max(value[1], _cell_p[1])
}
return value;

#define room_min_cell(_room_id)
var rd = obj_stage_main.room_manager.array_room_data[_room_id];
var value = [999, 999];   
for (var i = 0; i < array_length_1d(rd); i++) { //For each cell room_data = array_room_data[_room_id];
    var _cell_p = rd[i][0];
    value[0] = min(value[0], _cell_p[0])
    value[1] = min(value[1], _cell_p[1])
}
return value;

return true;

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
//#region exclusive to mario

#define create_mario_gui()
if (!show_gui) {
	var gui = instance_create(floor(x), floor(y), "obj_stage_article", 19);
	var gameoveryeah = true;
	
	if (!obj_stage_main.am_mario_syobon) {
		with oPlayer {
			if (!("temp_level" in self) || temp_level == 0) {
				if ("am_mario_health" in self) {
					if (am_mario_lives > 0)
						gameoveryeah = false
				}
			}
		}
	}
	else {	
		gameoveryeah = false
	}
	gui.screen = cur_room == obj_stage_main.am_mario_end_room ? 2 : gameoveryeah
	var level_current = obj_stage_main.am_mario_level_info[obj_stage_main.am_mario_level];
	show_gui = true;
}
//#endregion


#define combine_tiles(_type)
var combine_object = _type == 1 ? obj_stage_article_platform : obj_stage_article_solid;

//Horizontally
with (combine_object) {
    if num != 1 continue;
    if (place_meeting(x, y, combine_object)) {
        instance_destroy(id);
        continue;
    }
    sprite_index = asset_get("solid_32x32")
    mask_index = asset_get("solid_32x32")
    while (true) {
        var next = instance_position(bbox_left + 32 * image_xscale + 4, bbox_top + 4, combine_object);
        if (!instance_exists(next)) break;
        if (next.bbox_top != bbox_top) break;
        if (next.bbox_left != bbox_left + 32 * image_xscale) break;
        if (next.bbox_top + 32 * next.image_yscale != bbox_top + 32 * image_yscale) break;
        
        image_xscale += next.image_xscale;
        with (next) {
        	x = -100000
        	instance_destroy(id);
        }
    }
}
//Vertically
with (combine_object) {
    if num != 1 continue;
    if (place_meeting(x, y, combine_object)) {
        instance_destroy(id);
        continue;
    }
    sprite_index = asset_get("solid_32x32")
    mask_index = asset_get("solid_32x32")
    while (true) {
        var next = instance_position(bbox_left + 4, bbox_top + 32 * image_yscale + 4, combine_object);
        if (!instance_exists(next)) break;
        if (next.bbox_left != bbox_left) break;
        if (next.bbox_top != bbox_top + 32 * image_yscale) break;
        if (next.bbox_left + 32 * next.image_xscale != bbox_left + 32 * image_xscale) break;
        
        image_yscale += next.image_yscale;
        with (next) {
        	x = -100000
        	instance_destroy(id);
        }
    }
}

with (combine_object) {
    if num != 1 continue;
    just_spawned = true;
    var _cell_pos = base_to_am([x, y])[1]
	array_push(other.terrain_grid_data[# clamp(_cell_pos[0],other.cell_min[0], other.cell_max[0]),  clamp(_cell_pos[1],other.cell_min[1], other.cell_max[1])],
		[0, _type, x, y, image_xscale, image_yscale]); 
	visible = false;
	instance_destroy(id);
}

#define article_destroy(_id) 
if (("destroyed" in _id) && !_id.destroyed)
	_id.destroyed = true;
else
	instance_destroy(_id.id);
	
#define article_in_view(_id, _margin) 
var cam_bounds = [obj_stage_main.room_manager.follow_point.x - 480, obj_stage_main.room_manager.follow_point.x + 480, 
	 obj_stage_main.room_manager.follow_point.y - 270, obj_stage_main.room_manager.follow_point.y + 270];

if (sprite_index != asset_get("empty_sprite"))
	return _id.bbox_right + _margin >= cam_bounds[0] && _id.bbox_left - _margin <= cam_bounds[1] && _id.bbox_bottom + _margin >= cam_bounds[2] && _id.bbox_top - _margin <= cam_bounds[3];
return _id.x + _margin >= cam_bounds[0] && _id.x - _margin <= cam_bounds[1] && _id.y + _margin >= cam_bounds[2] && _id.y - _margin <= cam_bounds[3];

#define rectangle_in_view(_x1, _y1, _x2, _y2, _margin)
var cam_bounds = [obj_stage_main.room_manager.follow_point.x - 480, obj_stage_main.room_manager.follow_point.x + 480, 
	 obj_stage_main.room_manager.follow_point.y - 270, obj_stage_main.room_manager.follow_point.y + 270];

return _x2 + _margin >= cam_bounds[0] && _x1 -_margin <= cam_bounds[1] && _y2 + _margin >= cam_bounds[2] && _y1 - _margin <= cam_bounds[3];

#define organize_grid(_room_id)
ds_grid_resize(grid_room_data, cell_max[0]+1, cell_max[1]+1);
for (var i = 0; i < array_length(array_room_data[_room_id]); i++) {
	for (var j = 0; j < array_length(array_room_data[_room_id]); j++)
		ds_grid_set(grid_room_data, array_room_data[_room_id][i][0][0], array_room_data[_room_id][i][0][1], array_room_data[_room_id][i][1])
}

ds_grid_resize(terrain_grid_data, cell_max[0]+1, cell_max[1]+1);
for (var i = 0; i < array_length(array_terrain_data[_room_id]); i++) {
	ds_grid_set(terrain_grid_data, array_terrain_data[_room_id][i][0][0], array_terrain_data[_room_id][i][0][1], [])
}
