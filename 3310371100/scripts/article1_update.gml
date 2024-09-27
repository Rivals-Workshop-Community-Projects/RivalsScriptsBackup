//USHR ARTICLE1 UPDATE

if (!init){
	sound_play(asset_get("sfx_absa_cloud_place"))
	sound_play(asset_get("sfx_orca_snow_mouth"), false, noone, 0.6, 1.3)
	init = true;
}

//testy
x = applied_player_id.x+applied_player_id.hsp;
y = applied_player_id.y+applied_player_id.vsp;

//distance calculator
var max_rain_dist = room_height;

rain_bottom_dist = clamp(y+max_rain_dist, -620, player_id.cloud_y_limit)-y;
//print(string(rain_bottom_dist))

if (collision_line(x, y, x, y+room_height, asset_get("par_block"), false, false) == noone){
	rain_bottom_dist = max_rain_dist
	//print("offstage")
}



var testa = applied_player_id.ushr_rainclouded_timer / applied_player_id.ushr_rainclouded_timer_max
//print("test test = "+string(testa))
var tmp_width = 100*testa;
var appl_player_num = applied_player_id.player;
//print("playernumber = "+string(appl_player_num));
if (is_iced == false){
	if (rain_bottom_dist>3){
	with(pHitBox){
		if (variable_instance_exists(player_id, "nurburgring_24h_endurance")){//unique identifier for usher ~~hitboxes~~
			//print("nurburgring...detected : attack="+string(attack))
			if ( attack==AT_NSPECIAL || attack==AT_FSTRONG || (attack==AT_FSPECIAL && hbox_num==3) ){
				//print("hitbox...detected")
				if (can_hit[appl_player_num] == true){
					//print("can_hit...detected")
					if (player_id.move_is_fresh == true){
						if (collision_rectangle(other.x-round(tmp_width/2), other.y, other.x+round(tmp_width/2), other.y+other.rain_bottom_dist, id, true, false)){//this is the collision box
							//print("collision...detected")
							other.is_iced = true;
							other.ice_attacktrack = attack;
							can_hit[appl_player_num] = false;
							other.stored_spr_dir = spr_dir;
							spawn_hit_fx( x, y, hit_effect ) 
							destroyed = true;
						}
					}
				}
			}
		}
	}
	}
}

if (is_iced == true){//iced timer is just mostly for visuals, also acts as cooldown though
	if (ice_timer==0){//put hitbox here n whatever timer 0 stuff is
		if (ice_attacktrack==AT_FSTRONG){
			var hboxthing = create_hitbox( AT_DSPECIAL, 4, applied_player_id.x, applied_player_id.y )
		}else{//if nspecial and fspecial2
			var hboxthing = create_hitbox( AT_DSPECIAL, 3, applied_player_id.x, applied_player_id.y )
		}
		hboxthing.spr_dir = stored_spr_dir;
		hboxthing.ice_checkcheck = ice_attacktrack;
			
		sound_play(asset_get("sfx_ice_shatter"))
		sound_play(asset_get("sfx_ice_on_player"))
		//applied_player_id.ushr_rainclouded_timer = clamp(applied_player_id.ushr_rainclouded_timer + (applied_player_id.ushr_rainclouded_timer/3), 0, applied_player_id.ushr_rainclouded_timer_max);//what a mouthful
		
		var reduction_amt = 55
		applied_player_id.ushr_rainclouded_timer = clamp(applied_player_id.ushr_rainclouded_timer + (reduction_amt*ice_attacknum) - 10, 0, applied_player_id.ushr_rainclouded_timer_max);
		ice_timer++;
		ice_attacknum--;
	}
	if (applied_player_id.hitpause == false){
		ice_timer++;
	}
	if (ice_timer_max < ice_timer){
		is_iced = false;
		ice_timer = 0;
	}
}

if (player_id.signalling_all_my_besties_i_have_been_PARRIED == true){
	player_id.thanks_i_received_your_message_you_go_and_reset_now = true;
	with (applied_player_id){ outline_color = [ 0, 0, 0 ]; init_shader(); };
	applied_player_id.ushr_rainclouded = false;
	instance_destroy();
	exit;
}

if (player_id.signalling_all_my_besties_i_have_been_HIT_by_this_player==applied_player_id){
	player_id.thanks_i_received_your_message_you_go_and_reset_now = true;
	applied_player_id.ushr_rainclouded_timer -= round(applied_player_id.ushr_rainclouded_timer_max/3);
	
}


if (applied_player_id.ushr_rainclouded == false){
	sound_play(asset_get("sfx_orca_snow_mouth"), false, noone, 0.4, 1.7)
	instance_destroy();
	exit;
}

//uh...idk