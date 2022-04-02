//article1_update, Simple Platform

if _init == 0 {
    if spawn_variables[0] < 1000 sprite_index = sprite_get("plat_"+string(spawn_variables[0]));
    else sprite_index = spawn_variables[0];
    spr_name = sprite_get_name(sprite_index);
    spr_ = sprite_index;
    anim_speed = spawn_variables[1];
    plat_waypoints = spawn_variables[3]; //{x : 0; y : 0}
    plat_looping = spawn_variables[4]; //0 = false, 1 = true, 2 = destroy when ended, 3 = true and ease,
    plat_speed = spawn_variables[5];
    hurt_player = spawn_variables[6];
    if (is_array(spawn_variables[2])) {
    	action_id = spawn_variables[2];
    	plat_type = 0;
    	waypoint_index = 0;
    }
    else {
    	action_id = [0, 0];
    	plat_type = spawn_variables[2]; //0 = moving, 1 = falling, 2 = break immediately
		waypoint_index = (array_length(plat_waypoints) <= 0 || plat_type == 1) ? -1 : 0;
    }
    state_timer = 0;
    hit_state = 0;
    dont_despawn = true;
    player_on = false;
    xx = x;
    yy = y;
    with obj_stage_article if num == 5 other.room_manager = id;
    //if static image_alpha = 0;
    visible = true;
    depth = og_depth;
    _init = 1;
} else {
    image_index += anim_speed;
   
	var player_on = false;
	with (oPlayer) {
        if !free && place_meeting(x, y+2, other) {
        	player_on = true;
        }
    }
    if (player_on) {
		if (action_id[1] > 0) {
    		array_push(obj_stage_main.action_manager.action_queue, [obj_stage_main.action_manager.room_id, action_id[1], action_id[0]]);
    		plat_type = 0;
		}
        else {
		    if (plat_type == 1) {
	        	waypoint_index = 0;
	    		plat_type = 0;
		    }
        }
    }
    //#region exclusive to mario
    if (plat_type  == 2) {
    	var player_on = false;
    	with (oPlayer) {
	        if place_meeting(x, y+8, other) {
            	player_on = true;
	        }
	    }
        if (player_on) {
			sound_stop(sound_get("sfx_break"));
	        sound_play(sound_get("sfx_break"));
	        var brick1 = instance_create(round(x+32), round(y), "obj_stage_article", 18)
	        brick1.sprite_index = sprite_get("brickblock_break");
	        brick1.image_index = 0;
	        brick1.hsp = -2;
	        brick1.vsp = -4;
	        var brick2 = instance_create(round(x+64), round(y), "obj_stage_article", 18)
	        brick2.sprite_index = sprite_get("brickblock_break");
	        brick2.image_index = 1;
	        brick2.hsp = 2;
	        brick2.vsp = -4;
	        var brick3 = instance_create(round(x+32), round(y+16), "obj_stage_article", 18)
	        brick3.sprite_index = sprite_get("brickblock_break");
	        brick3.image_index = 2;
	        brick3.hsp = -4;
	        brick3.vsp = -2;
	        var brick4 = instance_create(round(x+64), round(y+16), "obj_stage_article", 18)
	        brick4.sprite_index = sprite_get("brickblock_break");
	        brick4.image_index = 3;
	        brick4.hsp = 4;
	        brick4.vsp = -2;
	        instance_destroy(id);
	        exit
        }
	}
	//#endregion
     if waypoint_index >= 0 { 
        var next_waypoint = (plat_looping == 1 || plat_looping == 3) ? (waypoint_index + 1) % array_length(plat_waypoints) : waypoint_index + 1;
        if (next_waypoint < array_length(plat_waypoints)) {
            state_timer++;
            var new_pos = [xx + plat_waypoints[waypoint_index].x, yy + plat_waypoints[waypoint_index].y]
            var next_pos = [xx + plat_waypoints[next_waypoint].x, yy + plat_waypoints[next_waypoint].y]
            var dist = point_distance(next_pos[0], next_pos[1], new_pos[0], new_pos[1]);
            var dir = point_direction(next_pos[0], next_pos[1], new_pos[0], new_pos[1]);
            if (plat_looping == 3) {
            	x = floor(ease_sineInOut(floor(new_pos[0]), floor(next_pos[0]), state_timer, plat_speed));
            	y = floor(ease_sineInOut(floor(new_pos[1]), floor(next_pos[1]), state_timer, plat_speed));
            }
            else {
	            hsp =  lengthdir_x(-dist * 2 / plat_speed, dir);
	            vsp =  lengthdir_y(-dist * 2 / plat_speed, dir);
            	x = floor(x);
            	y = floor(y);
            }
            if state_timer >= plat_speed {
                waypoint_index = next_waypoint;
                state_timer = 0
                hsp = 0;
                vsp = 0;
            }
        }
        if waypoint_index >= array_length(plat_waypoints)
        {
            if (plat_looping == 2) {
                instance_destroy(id);
                exit;
            }
        }
     }
    
    if (object_index == obj_stage_article_solid) {
		var player_under = collision_line(bbox_left, bbox_bottom+12, bbox_right, bbox_bottom+12, oPlayer, 0, 0);
		
		if (instance_exists(player_under)) {
			with (player_under) {
				if ("am_mario_health" not in self) continue;
				if (!free && am_mario_health >= 1) {
					am_mario_health = 0;
				}
			}
		}
    }
    
    if (is_array(hurt_player)) {
        if (hurt_player[0] && hit_state == 0) {
        	var temp_player = standard_player_detection();
        	
        	if (instance_exists(temp_player)) {
        	    with (temp_player) {
                    if (state != PS_DEAD || state != PS_RESPAWN) {
                    	if (!super_armor && soft_armor == 0 && !invincible && !hurtboxID.dodging && (("am_mario_health" in self) && am_mario_state == 0))
                    	{
        					if (am_mario_invincible == 0) {
                            	am_mario_health --;
                            	if (am_mario_health == 1) {
                            		am_mario_state = 3;
                            		am_mario_state_timer = 0;
                            	}
                            	if (am_mario_health <= 0) {
                            		am_mario_state = 1;
                            		am_mario_state_timer = 0;
                            	}
        					}
                    	}
                    }
        	    }
            	if (hurt_player[1] > 0) {
            	    hit_state = 1
            	    image_index = hurt_player[1];
            	}
        	}
        }
    }
}
#define standard_player_detection()
var player_under = collision_rectangle(bbox_left - 2, bbox_top - 2, bbox_right + 2, bbox_bottom + 2, oPlayer, 1, 1);

if (instance_exists(player_under)) {
    with (player_under) {
        if (state != PS_DEAD || state != PS_RESPAWN) {
        	if (!super_armor && soft_armor == 0 && (!invincible || am_mario_invincible > 0) && !hurtboxID.dodging && (("am_mario_health" in self) && am_mario_state == 0))
            	return id;
        }
    }
}

return noone;