//article1_update - runs every frame the article exists

/*STATE LIST

- 0 Freshly spawned
- 1 Idle
- 2 Dashstart
- 3 Dash
- 4 Dashstop
- 5 Dashturn
- 6 Walk
- 7 Walkturn
- 8 Nspec
- 9 Fspec
- 10 Uspec
- 11 Dspec Catch
- 12 Dspec Throw
- 13 Jumpstart
- 14 Jump
- 15 Land
- 16 Affinity max
- 17 Crouch
- 18 Hurt
- 19 Dtaunt
*/

//Get hurt by opponents' hitbox
if(pandy_control){
	
	hit_detection();
	
	if(hit){
		state = 18;
		state_timer = 0;
		pandy_control = false;
		affinity -= 50;
		y -= 2;
		sound_play(asset_get("sfx_clairen_sword_deactivate"));
		var target = player_id;
		player_id.dspec_sword_handler[1] = {from:1, type:-1, x:target.x, y:target.y-174, 
				spr_dir:target.spr_dir, anim_frame:0, anim_timer:2, lifetime:1, lifemax:12};
		pandy_control = false;
		if((player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR) && player_id.attack == AT_DSPECIAL){
			player_id.window = 4;
			player_id.window_timer = 6;
        }
        if(player_id.va_enabled > 0){
			with(player_id){
				if(va_cd <= 0 && random_func(0, 1, false) > (1 - 1)){
					va_type = 19;
			        user_event(0);
			    }
			}
		}
	}
}



//need special mask index for when on plats
if(place_meeting(x + 10, y + 5, asset_get("par_block")) || 
		place_meeting(x - 10, y + 5, asset_get("par_block"))){
	mask_index = (state == 17? cmask_index1 : mask_index1);
}else{
	mask_index = (state == 17? cmask_index2 : mask_index2);
}

if(fall_through){
	ignores_walls = true;
	if(fall_through && place_meeting(x, y + vsp, asset_get("par_block"))){
        fall_through = false;
        ignores_walls = false;
    }
}else{
	ignores_walls = false;
}
if(free && state != 15){
	vsp += player_id.gravity_speed;
}else{
	fastfall = false;
	fall_through = false;
	has_djump = true;
}
//die
if(y > room_height){
	sound_play(asset_get("sfx_death2"));
	shake_camera( 6, 6 );
    shake_camera(12, 6);
    state_timer = 0;
    state = 0;
    affinity -= 100;
    x = lerp(get_stage_data( SD_X_POS ), room_width - get_stage_data( SD_X_POS ), 0.5);
    y = get_stage_data( SD_Y_POS ) - 70;
    if(pandy_control){
    	var target = player_id;
		player_id.dspec_sword_handler[1] = {from:1, type:-1, x:target.x, y:target.y-174, 
			spr_dir:target.spr_dir, anim_frame:0, anim_timer:2, lifetime:1, lifemax:12};
        pandy_control = false;
    	can_attack = true;
    }
    vsp = -5;
    hsp = 0;
    if(player_id.va_enabled > 0){
		with(player_id){
			if(va_cd <= 0 && random_func(0, 1, false) > (1 - 1)){
				va_type = 19;
		        user_event(0);
		    }
		}
	}
}

var affinitywaslow = (affinity_level < 2);

//affinity handling
affinity = clamp(affinity, 0, affinity_max);

if(affinity >= 140){
	affinity_level = 2;
}else if(affinity < 140 && affinity >= 40){
	affinity_level = 1;
}else if(affinity < 40){
	affinity_level = 0;
}

//if just reached max affinity, once per stock if in neutral states, do a special anim
if(affinity_level == 2 && affinitywaslow && affinityanim && !pandy_control &&
(state == 1 || state == 6 || state == 7)){
	affinityanim = false;
	state = 16;
	state_timer = 0;
}

//depth
if(pandy_control){
	depth = -5;
	 //force_depth = true;
}else{
	depth = -2;
}

//Clairen plasma field will destroy the article (NOTE: does not work properly with maxarticles > 1)

/*if (place_meeting(x, y, asset_get("plasma_field_obj")) && !(state == 3 || state == 2)) {
	sound_play(asset_get("sfx_clairen_hit_med"));
	spawn_hit_fx(floor(x),floor(y),256)
	shoulddie = true;
}*/



//Set killarticles to true in death.gml and all your articles will despawn. Gets reset to the false at the end of state 2

/*if (player_id.killarticles && state != 2){
    state = 2;
    state_timer = 0;
}*/

//go off ledges
if(free && state <= 7){
	state = 14;
}


//State buffering
    
if (buffertimer < 20){
	buffertimer++;
}else{
	bufferedstate = 0;
	buffertimer = 0;
}



//------------------------------------------------------------------------------
switch(state){

//State 0: Freshly spawned
case 0:
    state = 1 + free*13;
    state_timer = 0;
	break;



//State 1: Idle
case 1:
    
    //friction stuff and turnaround
    if (hsp != 0) hsp -= player_id.ground_friction * spr_dir;
    if(sign(hsp) == sign(spr_dir) * -1) hsp = 0;
    if(spr_dir == 1){
        if (player_id.x < x && !pandy_control){
            state = 7;
            state_timer = 0;
        }
    }else if(spr_dir == -1){
        if (player_id.x > x && !pandy_control){
            state = 7;
            state_timer = 0;
        }
    }
    
    //dtaunt
    if(player_id.state == PS_ATTACK_GROUND && player_id.attack == AT_TAUNT_2){
    	state = 19;
    	state_timer = 0;
    }
    
    //walk to catch up with player if too far
    if(!player_near_x && place_meeting(x + (45 * spr_dir), y + 15, (mask_index == mask_index1 ? asset_get("par_block") : asset_get("par_jumpthrough")))  && !pandy_control){
        state = 6;
        state_timer = 0;
    }
    //drop through plat if above or jump off if offstage
    var stage_x = get_stage_data( SD_X_POS );
    if(!pandy_control && x > stage_x && x < (room_width - stage_x) && y + 15 < player_id.y && mask_index == mask_index2){
		y += 5;
        state = 14;
        state_timer = 0;
    }else if(!pandy_control && (x < stage_x || x > room_width - stage_x) && !place_meeting(x + (45 * spr_dir), y + 5, asset_get("par_jumpthrough"))  && mask_index == mask_index2){
        state = 14;
        state_timer = 0;
        y -= 2;
        vsp = -player_id.jump_speed - 0.5;
        hsp = 5 * (x < stage_x? 1 : -1);
	}
	break;



//State 2: Dashstart
case 2:
    hsp = (player_id.initial_dash_speed + 0.5) * spr_dir;
    hsp -= player_id.ground_friction * spr_dir;
    if(state_timer == 0){
    	spawn_base_dust(x, y, "dash");
    	sound_play(asset_get("sfx_dash_start"));
    }
	break;



//State 3: Dash
case 3:
	hsp = (player_id.dash_speed + 1) * spr_dir;
	if(get_gameplay_time() % 6 == 0){
    	spawn_base_dust(x, y, "dash");
    }
    break;



//State 4: Dashstop
case 4:
	hsp -= player_id.ground_friction * spr_dir;
	if(state_timer >= player_id.dash_stop_time){
	    hsp *= player_id.dash_stop_percent;
	    state = 1;
	    state_timer = 0;
	}
	break;



//State 5: Dashturn

case 5:
    hsp += player_id.dash_turn_accel * spr_dir;
	if(state_timer == 0){
	    spr_dir *= -1;
	}
	break;



//State 6: Walk

case 6:
	hsp = (player_id.walk_speed - 0.2) * spr_dir;
	if(!pandy_control){
        if(player_near_x || !(place_meeting(x + (45 * spr_dir), y + 15, (mask_index == mask_index1? asset_get("par_block") : asset_get("par_jumpthrough"))))){
            state = 1;
            state_timer = 0;
        }
        //dashturn
        if(spr_dir == 1){
            if (player_id.x < x && !pandy_control){
                state = 7;
                state_timer = 0;
            }
        }else if(spr_dir == -1){
            if (player_id.x > x && !pandy_control){
                state = 7;
                state_timer = 0;
            }
        }
    }else if(pandy_control){
    	if(get_gameplay_time() % 10 == 0){
	    	spawn_base_dust(x, y, "walk");
	    }
    }
	break;



//State 7: Walkturn
case 7:
	if (hsp != 0) hsp -= player_id.ground_friction * spr_dir;
	if(sign(hsp) == sign(spr_dir) * -1) hsp = 0;
	if(state_timer == 1){
	}else if(state_timer == player_id.walk_turn_time){
		spr_dir *= -1;
	    state = 1;
	    state_timer = 0;
	}
	break;



//State 8: Nspecial: Thunder Doom
case 8:
	fall_through = false;
	if (hsp != 0) hsp -= (free? player_id.air_friction : player_id.ground_friction) * spr_dir;
	if(sign(hsp) == sign(spr_dir) * -1) hsp = 0;
	vsp = clamp(vsp, -10, 2);
	hsp = clamp(hsp, -4, 4);
	if(state_timer == 0) image_index = 0;
    can_attack = false;
    window_timer++;
    
    if(image_index == 1 && window_timer == 1){
    	sound_play(asset_get("sfx_shovel_swing_light1"));
    	sound_play(asset_get("sfx_absa_newhip1"));
    }
    if(image_index == 4 && nspec_animframes[3] == window_timer){
    with(player_id){
    		sound_play(sound_get("sfx_slash_m"), false, noone, 0.8, 1);
    		sound_play(asset_get("sfx_clairen_poke_med"));
    	}
    }
    if(image_index == 5 && nspec_animframes[5] == window_timer){
    	
    	//HITBOX COMES OUT HERE-------------------------------------------------
    	var nspec = create_hitbox(AT_NSPECIAL_2, 1, floor(x + (53 * spr_dir)), floor(y - 115));
    	
    	
    	nspec.targ_angle = (spr_dir == 1? 315 : 225);
    	nspec.spr_dir = 1;
    	nspec.vsp = -10;
    	
    	player_id.move_cooldown[AT_DSPECIAL] = 340;
    	
    }
    
    
    //return to idle
    if(image_index == 7 && nspec_animframes[7] == window_timer){
    	sound_play(asset_get("sfx_clairen_sword_deactivate"));
		var target = player_id;
		player_id.dspec_sword_handler[1] = {from:1, type:-1, x:target.x, y:target.y-174, 
                spr_dir:target.spr_dir, anim_frame:0, anim_timer:2, lifetime:1, lifemax:12};
        pandy_control = false;
        if((player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR) && player_id.attack == AT_DSPECIAL){
        	player_id.window = 4;
        	player_id.window_timer = 6;
        }
    	state = 1;
    	state_timer = 0;
    	window_timer = -1;
    	can_attack = true;
    }
	break;

//State 9: Fspecial: Electric Circus
case 9:
	fall_through = false;
	if (hsp != 0) hsp -= (free? player_id.air_friction : player_id.ground_friction) * spr_dir;
	if(sign(hsp) == sign(spr_dir) * -1) hsp = 0;
	vsp = clamp(vsp, -10, 2);
	hsp = clamp(hsp, -4, 4);
	if(state_timer == 0) image_index = 0;
    can_attack = false;
    window_timer++;
    
    //sounds
    if(image_index == 1 && window_timer == 1){
    	sound_play(asset_get("sfx_shovel_swing_light2"));
    	sound_play(asset_get("sfx_absa_jab1"));
    }
    if(image_index == 3 && window_timer == 1){
    	sound_play(asset_get("sfx_absa_singlezap1"));
    	sound_play(asset_get("sfx_clairen_swing_mega_delayed"));
    }
    if(image_index == 7 && fspec_animframes[7] == window_timer){
    	with(player_id){
    		sound_play(sound_get("sfx_slash_m"));
    		sound_play(asset_get("sfx_clairen_swing_med"));
    	}
    	
    	//HITBOX COMES OUT HERE-------------------------------------------------
    	var fspec = create_hitbox(AT_FSPECIAL_2, 1, floor(x + (50 * spr_dir)), floor(y - 35));
    	fspec.spr_dir = spr_dir;
    	fspec.hsp = abs(fspec.hsp) * spr_dir;
    	
    	player_id.move_cooldown[AT_DSPECIAL] = 180;
    	
    }
    if(image_index == 12 && fspec_animframes[12] == window_timer){
    		sound_play(asset_get("sfx_clairen_sword_deactivate"));
    		var target = player_id;
    		player_id.dspec_sword_handler[1] = {from:1, type:-1, x:target.x, y:target.y-174, 
                    spr_dir:target.spr_dir, anim_frame:0, anim_timer:2, lifetime:1, lifemax:12};
            pandy_control = false;
            if((player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR) && player_id.attack == AT_DSPECIAL){
            	player_id.window = 4;
            	player_id.window_timer = 6;
            }
    }
    
    //return to idle
    if(image_index == 13 && fspec_animframes[13] == window_timer){
    	state = 1;
    	state_timer = 0;
    	window_timer = -1;
    	can_attack = true;
    }
	break;

//State 10: Uspecial: Lightning Force
case 10:
	fall_through = false;
	if (hsp != 0) hsp -= (free? player_id.air_friction : player_id.ground_friction) * spr_dir;
	if(sign(hsp) == sign(spr_dir) * -1) hsp = 0;
	vsp = clamp(vsp, -10, 2);
	hsp = clamp(hsp, -4, 4);
	if(state_timer == 0) image_index = 0;
    can_attack = false;
    window_timer++;
    
    //sounds
    if(image_index == 1 && window_timer == 1){
    	sound_play(asset_get("sfx_absa_singlezap1"));
    	sound_play(asset_get("sfx_absa_concentrate"));
    	sound_play(asset_get("sfx_absa_cloud_crackle"));
    	caught_uspec = false;
    }else if(image_index == 5 &&  window_timer == 1){
    	if(caught_uspec){
    		sound_play(asset_get("sfx_absa_uair"));
    		create_hitbox(AT_USPECIAL_2, 2, floor(x), floor(y - 80));
    		caught_uspec = false;
    	}else{
	    	sound_play(asset_get("sfx_absa_new_whip1"));
	    	sound_play(asset_get("sfx_clairen_swing_med"));
	    	
	    	
	    	//HITBOX COMES OUT HERE-------------------------------------------------
	    	create_hitbox(AT_USPECIAL_2, 1, floor(x + (4 * spr_dir)), floor(-20));
	    	
    	}
    	
    	
    	player_id.move_cooldown[AT_DSPECIAL] = 120;
    }
    
    if(image_index == 9 && window_timer == 1){
    		sound_play(asset_get("sfx_clairen_sword_deactivate"));
    		var target = player_id;
    		player_id.dspec_sword_handler[1] = {from:1, type:-1, x:target.x, y:target.y-174, 
                    spr_dir:target.spr_dir, anim_frame:0, anim_timer:2, lifetime:1, lifemax:12};
            pandy_control = false;
            if((player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR) && player_id.attack == AT_DSPECIAL){
            	player_id.window = 4;
            	player_id.window_timer = 6;
            }
    }
    
    //return to idle
    if(image_index == 9 && fspec_animframes[9] == window_timer){
    	state = 1;
    	state_timer = 0;
    	window_timer = -1;
    	can_attack = true;
    }
	break;

//State 11: Sword Catch 
case 11:
	fall_through = false;
    if(state_timer == 0) image_index = 5;
    can_attack = false;
    window_timer++;
    //catch sound
    if(image_index == 6 && dspec_animframes[6] == window_timer) sound_play(asset_get("sfx_waveland_wra"));
    
    //return to idle
    if(image_index == 8 && dspec_animframes[8] == window_timer){
    	state = 1;
    	state_timer = 0;
    	window_timer = -1;
    	can_attack = true;
    }
    break;

//State 12: Sword Throw

case 12:
	fall_through = false;
	if (hsp != 0) hsp -= player_id.ground_friction * spr_dir;
	if(sign(hsp) == sign(spr_dir) * -1) hsp = 0;
	vsp = clamp(vsp, -10, 2);
	if(state_timer == 0) image_index = 0;
    can_attack = false;
    window_timer++;
    //throw sword
    if(image_index == 1 && dspec_animframes[1] == window_timer){
    	player_id.dspec_sword_handler[0] = {from:1, type:1, x:x, y:y-80, spr_dir:spr_dir, anim_frame:0, anim_timer:2, lifetime:1, lifemax:12};
    	pandy_control = false;
    	can_attack = true;
    	//throw sound
    	with(player_id){
    		sound_play(asset_get("sfx_clairen_swing_weak"));
    		sound_play(sound_get("sfx_slash_m"));
    	}
    }
    //return to idle
    if(image_index == 4 && dspec_animframes[4] == window_timer){
    	state = 1;
    	state_timer = 0;
    	window_timer = -1;
    	can_attack = true;
    }
	break;


//State 13: Jumpsquat
case 13:
	if (hsp != 0) hsp -= player_id.ground_friction * spr_dir;
	vsp = 0;
    if(sign(hsp) == sign(spr_dir) * -1) hsp = 0;
    if(state_timer >= player_id.jump_start_time){
	    hsp = clamp(hsp, -(player_id.leave_ground_max + 0.5), (player_id.leave_ground_max + 0.5));
	    if(pandy_control){
	    	//fullhop
    	    if(player_id.jump_down || (player_id.up_down && can_tap_jump)){
    	        vsp = -player_id.jump_speed - 1;
    	        jump_type = 1;
    	    //shorthop
    	    }else{
    	        vsp = -player_id.short_hop_speed;
    	        jump_type = 0;
    	    }
	    }else{
	    	vsp = -player_id.jump_speed;
    	    jump_type = 1;
	    }
	    spawn_base_dust(x, y + 4, "jump");
    	sound_play(asset_get("sfx_jumpground"));
	    state = 14;
	    state_timer = 0;
	}
	break;

//State 14: Jump
case 14:
	if (abs(hsp > abs(0.3))) hsp -= player_id.air_friction * sign(hsp);
	hsp = clamp(hsp, -(player_id.leave_ground_max - 1), player_id.leave_ground_max - 1);
	vsp = clamp(vsp, -player_id.jump_speed, (fastfall? player_id.fast_fall : player_id.max_fall));
	
	//get back to the mf stage!!
	if(!pandy_control){
		if(has_djump && (x < get_stage_data(SD_X_POS) || x > room_width - get_stage_data( SD_X_POS ))){
            state_timer = 0;
            vsp = -player_id.djump_speed + 0.5;
            hsp = 4 * (x < get_stage_data(SD_X_POS)? 1 : -1);
            has_djump = false;
		}
	}
	
	//which frame of jump to use       i wish i had inverse lerp
	if(vsp <= -8){
		image_index = 0;
	}else if(vsp <= -3){
		image_index = 1;
	}else if(vsp <= 0){
		image_index = 2;
	}else if(vsp <= 3){
		image_index = 3;
	}else if(vsp > 8){
		image_index = 4;
	}
	
	if(state_timer == 0 && has_djump = false){
		spawn_base_dust(x, y + 2, "djump");
	}
	
	//land
	if(!free){
		state = 15;
	    state_timer = 0;
	    if(place_meeting(x, y + 5, asset_get("par_block"))) y += 2;
	    spawn_base_dust(x, y + 2, "land");
    	sound_play(asset_get("sfx_land_light"));
	}
	
	break;
	
//State 15: Land
case 15:
	if (hsp != 0) hsp -= player_id.ground_friction * spr_dir;
    if(sign(hsp) == sign(spr_dir) * -1) hsp = 0;
    if(state_timer >= player_id.land_time - 1){
	    state = 1;
	    state_timer = 0;
	}
	break;
	
//State 16: Affinity Max flourish
case 16:
	if(state_timer == 20){
		sound_play(asset_get("sfx_frog_fspecial_charge_full"), false, noone, 0.7, 1.0);
		if(player_id.va_enabled > 0){
			with(player_id){
				if(va_cd <= 0 && random_func(0, 1, false) > (1 - va_freq_spec)){
					va_type = 15;
			        user_event(0);
			    }
			}
		}
	}
	else if(state_timer >= 40){
		state = 1;
		state_timer = 0;
	}
	break;

//State 17: Crouch
case 17:
	if (hsp != 0) hsp -= player_id.ground_friction * spr_dir;
    if(sign(hsp) == sign(spr_dir) * -1) hsp = 0;
	if(state_timer <= 3) image_index = 0;
	else if(state_timer > 5) image_index = 2;
	else image_index = 1;
	
	if(state_timer >= 8){
		state = 1;
		state_timer = 0;
	}
	break;

//State 18: Hurt
case 18:
	if(fake_hitpause > 0){
		state_timer = 0;
		fake_hitpause--;
		hsp = 0;
		vsp = 0;
	}
	if(fake_hitpause == 0 && hit){
		hsp = stored_hsp;
		vsp = stored_vsp;
		stored_hsp = 0;
		stored_vsp = 0;
		hit = false;
	}
	if(fake_hitpause == 0 && (state_timer >= hitstun_full || !free)){
		state = (free? 14 : 1);
		state_timer = 0;
		if(!free){
			spawn_base_dust(x, y + 2, "land");
    		sound_play(asset_get("sfx_land_light"));
		}
	}
	break;

//State 19: Dtaunt
case 19:
	if (hsp != 0) hsp -= player_id.ground_friction * spr_dir;
    if(sign(hsp) == sign(spr_dir) * -1) hsp = 0;
	image_index = player_id.image_index;
	if(player_id.state != PS_ATTACK_GROUND){
		state = 1;
		state_timer = 0;
	}
	break;

}
//------------------------------------------------------------------------------



//Affinity movement pullback
if(pandy_control){
	if(point_distance(x + hsp, y + vsp, player_id.x, player_id.y) >= affinity_radius[affinity_level]){
		var angle = point_direction(player_id.x, player_id.y, x, y);
		var spd = point_distance(0, 0, hsp, vsp);
		hsp += -lengthdir_x(spd, angle);
		if(free && vsp < 0) vsp += -lengthdir_y(spd, angle);
	}
}


//NOTE: To use a hitbox properly with an article, it MUST be a projectile! (hitbox type 2)



//Sprite and animation handling

//Assign each state both a sprite it should have and a way it should animate
switch(state){
	case 0:
		new_sprite = spr_idle;
		animation_type = 1;
		break;
	case 1: //idle
		if(pandy_control){
			new_sprite = spr_idle_s;
		}else{
			new_sprite = spr_idle;
		}
		animation_type = 1;
		break;
	case 2: //dashstart
		new_sprite = spr_dashstart;
		animation_type = 2;
		anim_rate = 6;
		break;
	case 3: //dash
		new_sprite = spr_dash;
		animation_type = 2;
		anim_rate = 5;
		break;
	case 4: //dashstop
		new_sprite = spr_dashstop;
		animation_type = 1;
		break;
	case 5: //dashturn
		new_sprite = spr_dashturn;
		animation_type = 2;
		anim_rate = 3;
		break;
	case 6: //walk
		if(pandy_control){
			new_sprite = spr_walk_s;
		}else{
			new_sprite = spr_walk;
		}
		animation_type = 2;
		anim_rate = 8;
		break;
	case 7: //walkturn
		if(pandy_control){
			new_sprite = spr_turn_s;
		}else{
			new_sprite = spr_turn;
		}
		animation_type = 1;
	    break;
	case 8: //nspec
		new_sprite = spr_nspec;
		animation_type = 6;
		break;
	case 9: //fspec
		new_sprite = spr_fspec;
		animation_type = 4;
		break;
	case 10: //uspec
		new_sprite = spr_uspec;
		animation_type = 5;
		break;
	case 11: //dspec sword catch
		new_sprite = spr_dspec;
		animation_type = 3;
		break; 
	case 12: //dspec sword throw
		new_sprite = spr_dspec;
		animation_type = 3;
		break;
	
	case 13: //jumpstart
		if(pandy_control){
			new_sprite = spr_jumpstart_s;
		}else{
			new_sprite = spr_jumpstart;
		}
		animation_type = 10; //type 10 is literally just "dont automatically animate" btw
		break;
	case 14: //jump
		if(pandy_control){
			new_sprite = spr_jump_s;
		}else{
			new_sprite = spr_jump;
		}
		animation_type = 10;
		break;
	case 15: //land
		if(pandy_control){
			new_sprite = spr_land_s;
		}else{
			new_sprite = spr_jumpstart;
		}
		animation_type = 10;
		break;
	case 16: //affinity max
		new_sprite = spr_affinitymax;
		animation_type = 2;
		anim_rate = 5;
		break;
	case 17: //crouch
		new_sprite = spr_crouch;
		animation_type = 10;
		break;
	case 18: //hurt
		new_sprite = spr_hurt;
		animation_type = 1;
		break;
	case 19: //hurt
		new_sprite = spr_dtaunt;
		animation_type = 10;
		break;
    
}

//Increment image_index based on the animation type assigned, above, to the state
switch(animation_type){
    
    case 0: //Increment image_index every frame
        image_index++;
    
    case 1: //Increment image_index at the rate determined by idle_anim_rate
        if (state_timer mod idle_anim_rate == 0){
            image_index++;
        }
        break;
    
    case 2: //Increment Image index at a rate determined by a 
        if (state_timer mod (anim_rate) == 0){
            image_index++;
        }
        break;
    
    case 3: //Dspec frames
        if (window_timer > -1 && (window_timer mod dspec_animframes[image_index] == 0)){
            image_index++;
            window_timer = 0;
        }
        break;

    case 4: //Fspec frames
        if (window_timer > -1 && (window_timer mod fspec_animframes[image_index] == 0)){
            image_index++;
            window_timer = 0;
        }
        break;

	case 5: //Uspec frames
        if (window_timer > -1 && (window_timer mod uspec_animframes[image_index] == 0)){
            image_index++;
            window_timer = 0;
        }
        break;
    
    case 6: //Nspec frames
        if (window_timer > -1 && (window_timer mod nspec_animframes[image_index] == 0)){
            image_index++;
            window_timer = 0;
        }
        break;
}

//If not already at the sprite it should be, switch to the new sprite and restart the animation
if (sprite_index != new_sprite){
    sprite_index = new_sprite;
    if(animation_type < 3) image_index = 0;
}


//Make time progress
state_timer++;

#define spawn_base_dust
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir; if (argument_count > 3) dir = argument[3]; else dir = 0;

switch (name) {
    default: 
    case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;

#define on_hit(hbox)
// This is the code the article should run on hit.
// Edit this to have the desired functions when your article is hit by a hitbox.
// hbox refers to the pHitBox object that hit the article.
// hit_player_obj (usually) refers to the player that hit the article.
// hit_player_num refers to the player's number that hit the article.
 
hit_player_obj = hbox.player_id;
hit_player_num = hbox.player;
 
//Default Hitpause Calculation
//You probably want this stuff because it makes the hit feel good.
var desired_hitstop = clamp(hbox.hitpause + hbox.damage * hbox.hitpause_growth * 0.05, 0, 20);
if hbox.type == 1 {
    with hit_player_obj {
        if !hitpause {
            old_vsp = vsp;
            old_hsp = hsp;
        }
        hitpause = true;
        has_hit = true;
        if hitstop < desired_hitstop {
            hitstop = desired_hitstop;
            hitstop_full = desired_hitstop;
        }
    }
}
// This puts the ARTICLE in hitpause.
// If your article does not already account for being in hitpause, either make it stop what it's doing in hitpause
// or comment out the line below.
fake_hitpause = floor(desired_hitstop);
hit = true;
 
 
//Hit Lockout
if article_should_lockout hit_lockout = hbox.no_other_hit;
 
//Default Hitstun Calculation
hitstun = (hbox.kb_value * 4 * ((kb_adj - 1) * 0.6 + 1) + hbox.damage * 0.12 * hbox.kb_scale * 4 * 0.65) + 12;
hitstun_full = hitstun;
            
//Default Knockback Calculation
 
//if other.force_flinch && !other.free orig_knock = 0; //uncomment this line for grounded articles.
//if hbox.force_flinch orig_knock = 0.3; //comment out this line for grounded articles.
orig_knock = hbox.kb_value + hbox.damage * hbox.kb_scale * 0.12 * kb_adj;
kb_dir = get_hitbox_angle(hbox);
 
stored_hsp = lengthdir_x(orig_knock, kb_dir);
stored_vsp = lengthdir_y(orig_knock, kb_dir);
 
//Default hit stuff
sound_play(hbox.sound_effect);
//ty nart :p
var fx_x = lerp(hbox.x, x, 0.5) + hbox.hit_effect_x*hbox.spr_dir;
var fx_y = lerp(hbox.y, y, 0.5) + hbox.hit_effect_y;
with hit_player_obj { // use a with so that it's shaded correctly
    var temp_fx = spawn_hit_fx(fx_x, fx_y, hbox.hit_effect);
    temp_fx.hit_angle = other.kb_dir;
    temp_fx.kb_speed = other.orig_knock;
}
 
#define filters(hbox)
//These are the filters that check whether a hitbox should be able to hit the article.
//Feel free to tweak this as necessary.
with hbox {
    var player_equal = player == other.player_id.player;
    var team_equal = get_player_team(player) == get_player_team(other.player_id.player);
    return ("owner" not in self || owner != other) //check if the hitbox was created by this article
        && hit_priority != 0 && hit_priority <= 10
        && (groundedness == 0 || groundedness == 1+other.free)
        && (!player_equal) //uncomment to prevent the article from being hit by its owner.
        //&& ( (get_match_setting(SET_TEAMS) && (get_match_setting(SET_TEAMATTACK) || !team_equal) ) || (player_equal) //uncomment to prevent the article from being hit by its owner's team.
}

#define hit_detection
//Code by Supersonic#9999
//DO NOT modify this function unless you know what you're doing. This does the actual detection, while
//the other functions determine how and what the hit detection interacts with.
//hbox group management
with (oPlayer)
    if state == clamp(state, 5, 6) && window == 1 && window_timer == 1 {
        other.hbox_group[@ player-1][@ attack] = array_create(10,0);
    }
 
//hit lockout stuff
if hit_lockout > 0 {
    hit_lockout--;
    return;
}
//get colliding hitboxes
var hitbox_list = ds_list_create();
 
//im editing this part
var num = instance_place_list(floor(x), floor(y), pHitBox, hitbox_list, false);
var final_hbox = noone;
var hit_variable = `hit_article_${id}`;
if num == 0 {
    ds_list_destroy(hitbox_list);
    return;
}
if num == 1 {
    //no priority checks if only one hitbox is found
    var hbox = hitbox_list[|0]
    var group = hbox.hbox_group
    if hit_variable not in hbox 
        if (group == -1 || ( group != -1 && hbox_group[@ hbox.orig_player-1][@ hbox.attack][@ group] == 0)) {
            if filters(hbox) {
                final_hbox = hbox;
            } else {
                //hitbox doesn't meet collision criteria. since this usually doesn't change, omit it.
                variable_instance_set(hbox, hit_variable, true);
            }
        } else {
            //fake hit if group has already hit; optimization thing
            variable_instance_set(hbox, hit_variable, true);
        }
} else {
    var highest_priority = 0;
    var highest_priority_owner = -1;
    var highest_priority_hbox = noone;
    for (var i = 0; i < ds_list_size(hitbox_list); i++) {
        var hbox = hitbox_list[|i]
        var group = hbox.hbox_group
        if hit_variable not in hbox 
            //group check
            if (group == -1 || ( group != -1 && hbox_group[@ hbox.orig_player-1][@ hbox.attack][@ group] == 0)) {
                if filters(hbox) {
                    if hbox.hit_priority > highest_priority {
                        highest_priority = hbox.hit_priority;
                        highest_priority_owner = hbox.player;
                        highest_priority_hbox = hbox;
                    }
                } else {
                    //hitbox doesn't meet collision criteria. since this usually doesn't change, omit it.
                    variable_instance_set(hbox, hit_variable, true);
                }
            } else {
                //fake hit if group has already hit; optimization thing
                variable_instance_set(hbox, hit_variable, true);
            }
    }
    if highest_priority != 0 {
        final_hbox = highest_priority_hbox;
    }
}
 
if final_hbox != noone {
    on_hit(final_hbox);
    variable_instance_set(final_hbox, hit_variable, true);
    if final_hbox.hbox_group != -1 hbox_group[@ final_hbox.orig_player-1][@ final_hbox.attack][@ final_hbox.hbox_group] = 1;
}
 
//clear hitbox list
//ds_list_clear(hitbox_list)
ds_list_destroy(hitbox_list);
 