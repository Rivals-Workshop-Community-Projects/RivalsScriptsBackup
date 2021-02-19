///


if !instance_exists(hit_player_obj){

hit_player_obj = self
ntarget = 0

}

if state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR {
	attacking = true
} else {
	attacking = false
}
if looptime == 400 {
				 sound_play(sound_get("lazerfire"));
				 sound_play(sound_get("RI"));
	set_attack (AT_FAIR)
	window = 1 
	vsp = 100
	x = room_width/2
}

if cheapmode = 1 && (state == PS_DEAD or inloop = 1 or (state != PS_ATTACK_GROUND and state != PS_ATTACK_AIR)) {
	inloop = 1
	looptime += 1
				 shake_camera(10, 99)
				 
	 
			with (asset_get("oPlayer")) {
				if (player != other.player) {
					if get_player_stocks(player) != 0 {
					 set_player_stocks(player, 2);
					}
				}
			}
		
	if looptime < 400 {	
    set_attack (AT_EXTRA_2)
    window = 4
    window_timer = 0
    visible = true
    x = thisx
	y = thisy
	spr_dir = thisface
	set_player_stocks(player, 1);
	spawn_hit_fx(floor(hit_player_obj.x + 60 - random_func(5, 120, true)) ,  floor(hit_player_obj.y + 70 - random_func(6, 140, true)), km3);	
	}
	
	if looptime > 5 {
	create_hitbox(AT_DSPECIAL , 6 , floor(hit_player_obj.x - 40 + random_func(6, 80, true)) ,  floor(hit_player_obj.y - 20 - 40 + random_func(7, 80, true)));

		

		
		
		hit_player_obj.state = PS_DEAD 
			with (asset_get("oPlayer")) {
				if (player != other.player) {
					id -= 99
					instance_destroy(player)
					if get_player_stocks(player) != 0 {
					 free = 99
					 sprite_index = sprite_get("hurt");
                     image_index = state_timer / 4;
					 spr_dir = 8/4 - get_gameplay_time() % 16/4
					 visible = true
					 spr_angle = get_gameplay_time() % 36*10
					}
				}
			}
	}
	
		if looptime > 400 {
			with (asset_get("oPlayer")) {
				if (player != other.player) {
					set_player_stocks(player, 0);
				}
			}
			spawn_hit_fx (x, y, redden)
			set_player_stocks(player, 1);
			end_match();
		}
}

if state != PS_ATTACK_GROUND {
	nctimer = 0
}

set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_HSPEED, 6 - random_func(4, 14, true) );
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_VSPEED, -1 - random_func(3, 6, true) );




if (state == PS_WALL_JUMP or !free) {move_cooldown[AT_USPECIAL] = 0};


if hitpause {
	move_cooldown[AT_EXTRA_1] += 1
}
if get_gameplay_time() == 2 {
    
    	if hit_player_obj == self {
		var shortest_dist = 9999;
			var shortest_id = noone;
			
			with (asset_get("oPlayer")) {
				if (player != other.player) {
					var curr_dist = point_distance(x,y,other.x,other.y);
					if (curr_dist < shortest_dist) {
						shortest_dist = curr_dist;
						shortest_id = id;
					}
				}
			}
			hit_player_obj = shortest_id	
		}	
		
		
    	if hit_player_obj.url != "2273636433" && hit_player_obj.url != "1870768156"
	&& hit_player_obj.url != "1869351026" &&
	(string_count("nald", string_lower( get_char_info(hit_player_obj.player, INFO_STR_NAME))) > 0
	or string_count("%", string_lower( get_char_info(hit_player_obj.player, INFO_STR_NAME) )) > 0
	or string_count("sand", string_lower( get_char_info(hit_player_obj.player, INFO_STR_NAME) )) > 0
	or string_count("psy", string_lower( get_char_info(hit_player_obj.player, INFO_STR_NAME) )) > 0
	or string_count("ultra", string_lower( get_char_info(hit_player_obj.player, INFO_STR_NAME) )) > 0
	or string_count("god", string_lower( get_char_info(hit_player_obj.player, INFO_STR_NAME) )) > 0
	or string_count("boss", string_lower( get_char_info(hit_player_obj.player, INFO_STR_NAME) )) > 0
	or string_count("ui ", string_lower( get_char_info(hit_player_obj.player, INFO_STR_NAME) )) > 0
	or string_count("ssg", string_lower( get_char_info(hit_player_obj.player, INFO_STR_NAME) )) > 0
	or string_count("melee", string_lower( get_char_info(hit_player_obj.player, INFO_STR_NAME) )) > 0
	or string_count("accurate", string_lower( get_char_info(hit_player_obj.player, INFO_STR_NAME) )) > 0
	) or state == PS_DEAD{
        set_attack (AT_TAUNT)
        window = 1 
        window_timer = 0 
    } else {
			var shortest_dist = 9999;
			var shortest_id = noone;
			
			with (asset_get("oPlayer")) {
				if (player != other.player) {
					var curr_dist = point_distance(x,y,other.x,other.y);
					if (curr_dist < shortest_dist) {
						shortest_dist = curr_dist;
						shortest_id = id;
					}
				}
			}
			
		hit_player_obj = shortest_id	
	

	
	sound_play(sound_get("radio1"));
	set_attack (AT_EXTRA_1)
    }
}



///if hit_player_obj.state_cat == SC_HITSTUN && move_cooldown[AT_EXTRA_3] > 0 {
///	if hitpause {
///		 move_cooldown[AT_EXTRA_3] += 2
/// 
///		create_hitbox(AT_DSPECIAL , 6 , floor(hit_player_obj.x + 20 - random_func(4, 40, true)) ,  floor(hit_player_obj.y - 40 + 20 - random_func(5, 40, true)));
///		
///	} else {
///		if get_gameplay_time() % 2 == 0 {
///		create_hitbox(AT_DSPECIAL , 6 , floor(hit_player_obj.x + 20 - random_func(4, 40, true)) ,  floor(hit_player_obj.y - 40 + 20 - random_func(5, 40, true)));
///		}
///	}
///		
///}

////////////

if ntarget != 0 && (ntarget.state == PS_RESPAWN or ntarget.state == PS_DEAD) && ntarget.state_timer == 1 {
	
drop = 0
 ntarget = 0
 
}



if batt > 5 {
    batt = 5
}

if batt < 0 {
    batt = 0
}

/// setstock 
