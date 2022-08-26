///

knifecount = 5

with pHitBox {
	if player_id = other.id && type == 2 && hbox_num != 6 && hbox_num != 7 {
		other.knifecount --
	}
}



batt = max(0,knifecount - oknifelost)

if !instance_exists(hit_player_obj){

hit_player_obj = self

}

print(oknifelost)

set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_HSPEED, 6 - random_func(4, 14, true) );
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_VSPEED, -1 - random_func(3, 6, true) );


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




if (state == PS_WALL_JUMP or !free) {
	move_cooldown[AT_USPECIAL] = 0
	move_cooldown[AT_DSPECIAL] = 0	
};


if hitpause {
	move_cooldown[AT_EXTRA_1] += 1
}

if get_gameplay_time() <= 2 {
    
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
	&& hit_player_obj.url != "1869351026" && hit_player_obj.url != "2443363942" &&
	(string_count("nald", string_lower( get_char_info(hit_player_obj.player, INFO_STR_NAME) )) > 0
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
	
	or hit_player_obj.url == "2159023588"
	or hit_player_obj.url == "1980469422"
	) or state == PS_DEAD {
        set_attack (AT_TAUNT)
        window = 1 
        window_timer = 0 
    } else {
    sound_stop(sound_get("radio1"));
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


with oPlayer {

if "ANwounded" not in self {
	ANwounded = 0
	ANtimeslow = 0
}	

if state == PS_SPAWN or state == PS_RESPAWN or state == PS_DEAD{
ANwounded = 0
}

if ANtimeslow > 1 {
	
	if ANtimeslow % 14 == 0 {
	with other {
	spawn_hit_fx(other.x,other.y - 40, timeS)
	}
	}
	
	if ANtimeslow == 69  {
    	with other {
    	sound_play(asset_get("sfx_spin"),false,noone,1,0.8);  	  
    	kfx = spawn_hit_fx(other.x - 10 + random_func(1,20,true),other.y - 50 + random_func(2,20,true), kFinal)
    	kfx.draw_angle = get_gameplay_time()*4
    	}	
	}
	
	if ANtimeslow == 59  {
    	    	with other {
    		sound_play(sound_get("slice"));   
    		sound_play(asset_get("sfx_spin"),false,noone,1,0.8);  
    	kfx = spawn_hit_fx(other.x - 10 + random_func(1,20,true),other.y - 50 + random_func(2,20,true), kFinal)
    	kfx.draw_angle = get_gameplay_time()*45
    	spawn_hit_fx(other.x - 10 + random_func(3,20,true),other.y - 50 + random_func(4,20,true), 305)
    	}	
    	take_damage(player,-1,1)
    	shake_camera(4,4)
	   
	}
	
	if ANtimeslow == 54  {
    	with other {
    		sound_play(sound_get("slice"));   
    		sound_play(asset_get("sfx_spin"),false,noone,1,0.8);  
    	kfx = spawn_hit_fx(other.x - 10 + random_func(1,20,true),other.y - 50 + random_func(2,20,true), kFinal)
    	kfx.draw_angle = get_gameplay_time()*45
    	spawn_hit_fx(other.x - 10 + random_func(3,20,true),other.y - 50 + random_func(4,20,true), 305)
    	}	
    	take_damage(player,-1,1)
    	shake_camera(4,4)
	}
	
	if ANtimeslow == 44  {
    	with other {
    		sound_play(sound_get("slice"));   
    		sound_play(asset_get("sfx_spin"),false,noone,1,0.8);  
    	kfx = spawn_hit_fx(other.x - 10 + random_func(1,20,true),other.y - 50 + random_func(2,20,true), kFinal)
    	kfx.draw_angle = get_gameplay_time()*45
    	spawn_hit_fx(other.x - 10 + random_func(3,20,true),other.y - 50 + random_func(4,20,true), 305)
    	}	
    	take_damage(player,-1,2)
    	shake_camera(4,4)
	}
	
	if ANtimeslow == 39  {
    	with other {
    		sound_play(sound_get("slice"));   
    		sound_play(asset_get("sfx_spin"),false,noone,1,0.8);  
    	kfx = spawn_hit_fx(other.x - 10 + random_func(1,20,true),other.y - 50 + random_func(2,20,true), kFinal)
    	kfx.draw_angle = get_gameplay_time()*45
    	spawn_hit_fx(other.x - 10 + random_func(3,20,true),other.y - 50 + random_func(4,20,true), 305)
    	}
    	take_damage(player,-1,2)
    	shake_camera(4,4)
	}
	
	if ANtimeslow == 31 {
		with other {
		sound_play(sound_get("slice")); 	
    	spawn_hit_fx(other.x - 10 + random_func(1,20,true),other.y - 50 + random_func(2,20,true), 305)
    	}
    	take_damage(player,-1,2)
    	shake_camera(4,4)
	}
	
	x -= 3
   if ANtimeslow % 3 == 0 {
   	state_timer -= 1
   	x += 9
   	x -= floor(old_hsp)
   	y -= floor(old_vsp)
   	  hitpause = true
   	  hitstop = 30
   	  hitstop_full = -1
   	  old_hsp = hsp
   	  old_vsp = vsp
   }	
   ANtimeslow -= 1
}

if ANtimeslow == 1 {
	state_timer = 0
	hitstun = 12
    hitstop = 2
   vsp 	= -2
   hsp = 0
   old_hsp = 0
   old_vsp = -2
   ANtimeslow = 0
}

}


if ANwounded > 1 {
	ANwounded = 1
}

if batt > 5 {
    batt = 5
}

if batt <= 0 {
    batt = 0
    move_cooldown[AT_FSPECIAL] = 3
}

/// setstock 
if get_player_color(player) == 11 {
	outline_color = [19, 15, 28]
   if visible {  
   	if !hitpause {
	if get_gameplay_time() % 40 == 0 {
   	set_color_profile_slot(get_player_color(player),0, 255, 196, 244); 
	} 
	
	if get_gameplay_time() % 40 == 26{
	set_color_profile_slot(get_player_color(player),0, 0, 191, 255 );	
	}
	
    if get_gameplay_time() % 40 == 13 {
	set_color_profile_slot(get_player_color(player),0, 160, 195, 250 );	
	}
	
	if get_gameplay_time() % 60 == 0 {
   	set_color_profile_slot(get_player_color(player),7, 255, 196, 244); 
	} 
	
	if get_gameplay_time() % 60 == 40{
	set_color_profile_slot(get_player_color(player),7, 0, 191, 255 );	
	}
	
    if get_gameplay_time() % 60 == 20 {
	set_color_profile_slot(get_player_color(player),7, 160, 195, 250 );	
	}
   	}
   	
   	if hitpause {
	if get_gameplay_time() % 8 == 0	 {
   	set_color_profile_slot(get_player_color(player),0, 255, 196, 244); 
	} 
	
	if get_gameplay_time() % 8 == 6{
	set_color_profile_slot(get_player_color(player),0, 0, 191, 255 );	
	}
	
    if get_gameplay_time() % 8 == 3{
	set_color_profile_slot(get_player_color(player),0, 160, 195, 250 );	
	}
   	}
	}
    init_shader();	 
}
