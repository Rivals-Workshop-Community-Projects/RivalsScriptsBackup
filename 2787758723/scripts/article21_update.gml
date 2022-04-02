//article21_update, Flagpole

if (!_init) {
    next_level = spawn_variables[0];
    _init = 1;
    in_render = true;
}

state_timer++;

if (in_render) {
if (state == 0 || state == 1) {
		var collis_obj = noone;
		with (oPlayer)
		{            	
			if ("am_mario_health" not in self) continue;
			if (state != PS_DEAD && am_mario_state == 0) {
				if (place_meeting(x, y, other)) {
    				collis_obj = id;
    				break;
				}
            }
        }
	    if collis_obj != noone  {
	        if (array_find_index(players_on, collis_obj.id) == -1) {
	            array_push(players_on, collis_obj.id);
	            
	            var points = spawn_points(x - 24, collis_obj.y, find_point_value(collis_obj.y), collis_obj.player)
	            points.grav = 0;
	            points.vsp_max = 0;
	            points.timer_max = 0;
	            array_push(points_array, points);
		        with oPlayer am_mario_flagpole = other.id;
	            collis_obj.am_mario_state = 5;
	            collis_obj.am_mario_state_timer = 0;
		        if (state == 0) {
		            state = 1;
		            state_timer = 0;
		        }
	        }
	    }
	    
	    //Dont try to go over the flagpole you cheeky fuck
	    for (var i = 0; i < array_length(obj_stage_main.player_array); i++) {
	        if instance_exists(obj_stage_main.player_array[i])
	        with (obj_stage_main.player_array[i]) {
	            x = min(x, other.x + 16);
	        }
	       
	    }
	}
}

if (state == 1) {
	var alive_players = 0;
    for (var i = 0; i < array_length(obj_stage_main.player_array); i++) {
        if instance_exists(obj_stage_main.player_array[i])
	        with (obj_stage_main.player_array[i]) {
				if state != PS_DEAD && am_mario_state == 0 {
		        	alive_players++;
		        }
        	}
    }
    
	if (array_length(players_on) > alive_players || state_timer > flag_wait_max)  {
        state = 2;
        state_timer = 0;
    }
}

if (state == 2) {
    if (state_timer == 1) {
	    with (obj_stage_main) music_stop();
        sound_play(sound_get("sfx_flagpole"));
        
	    for (var i = 0; i < array_length(obj_stage_main.player_array); i++) {
	        if instance_exists(obj_stage_main.player_array[i])
	        with (obj_stage_main.player_array[i]) {
	        	if (am_mario_state == 0) {
		            am_mario_state = 7;
		            am_mario_state_timer = 0;
	        	}
	        }
	    }
	    
	    for (var i = 0; i < array_length(players_on); i++) {
	    	with (players_on[i]) {
	            am_mario_state = 5;
	            am_mario_state_timer = 1;
	    	}
	    }
    }
    flag_spr_y += 4;
    if (flag_spr_y > 256)
        flag_spr_y = 256;
        
    for (var i = 0; i < array_length(points_array); i++) {
    	if (!instance_exists(points_array[i])) continue;
        points_array[i].y -= 4;
        if (points_array[i].y <= y + (32 * i)) {
            points_array[i].y = y + (32 * i);
        }
    } 
    if (state_timer == 90) {
	    with (obj_stage_main) music_play_file("music_victory1");
    }
}
visible = true;
//Check if an article enemy is within any player's range - doing this for the next frame so things update before getting removed from vision, and don't update for a frame into vision
in_render = false;
with obj_stage_main.room_manager {
	// if "temp_level" in self continue; //Don't check cpus - VERY laggy process!
    other.in_render = other.physics_range == -1 || (point_distance(other.x,other.y,follow_point.x,follow_point.y) < other.physics_range);
    if other.in_render == true break;
}


#define find_point_value(_y)
var ydist = abs(_y - y)
if (ydist < 64)
    return 8;
else if (ydist < 128)
    return 6;
else if (ydist < 176)
    return 4;
else if (ydist < 256)
    return 2;
else
    return 0;

#define spawn_points(_x, _y, _index, _player)
//These are just for show
var _art = instance_create(_x, _y, "obj_stage_article", 18);
_art.sprite_index = sprite_get("points");
_art.image_index = _index;
_art.grav = 0.55;
_art.vsp_max = 0;
_art.timer_max = 120;
if (_player != -1)
_art.image_blend = get_player_hud_color(_player);
return _art;