//B - Reversals
if (/*attack == AT_NSPECIAL || */attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}
if (attack == AT_NSPECIAL){
	if ((left_down && window == 1 && spr_dir == 1) || (right_down && window == 1 && spr_dir == -1) && (reversed == false)) {
	    spr_dir *= -1;
		hsp *= -1; //changed for b reversing to swap momentum
	    reversed = true;
	} else if (window == 2) {
	    reversed = false;
	}	
}


// article1 = throwable ghost projectile
var article1_count = 0;
var article1 = noone;
with(asset_get("obj_article1")){
        if (player_id == other.id){
            article1_count++;
            article1 = id;
        }
    }
    
var article2_count = 0;
var article2 = noone;
with(asset_get("obj_article2")){
        if (player_id == other.id){
            article2_count++;
            article2 = id;
        }
    }

// USPECIAL / Teleport to ghost
if (attack == AT_USPECIAL) {
	if has_hit_player { has_hit_player_ANY_HITBOX = true; }
	if (window == 4 && window_timer == 1){//get_window_value(attack, window, AG_WINDOW_LENGTH)-1){
		if has_hit_player_ANY_HITBOX{
			if !has_hit_uspecial{ // twice is enough
				print("reset Uspecial")
				set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
				has_hit_uspecial = true;
			} else if (has_hit_uspecial){
				print("pratfall Uspecial")
				set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 7);
			}
		}
	}
	can_fast_fall = false; //?? more specific or not?

		if (window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-1){
			window = 5;
			window_timer = 0;
		}
		
		// teleport_x = x;
		// teleport_y = y;
		if (article1 != noone){
			teleport_x = article1.x;
			teleport_y = article1.y;
		}
		
		if (window == 5 && window_timer == 0){
			sound_play(asset_get("sfx_clairen_dspecial_counter_success"))
			spawn_hit_fx(x, y, 256);
			x = teleport_x;
			y = teleport_y;
			has_teleported = true;
			hurtboxID.sprite_index = asset_get("ex_guy_hurt_box"); //gnome solution test
			// window = 2;

			if (article1 != noone){
				if (!article1.is_boosted){
					atk_cooldown = 15; // todo: tweak based on feedback
				} else {
					atk_cooldown = 3;
				}
				with (article1){
					lifespan = 1;
				}
			}
			spawn_hit_fx(x, y-16, fx_teleport);
			vsp = -5;
			hsp = 0;
		} 		
		
	// IF TELEPORT
	if (article1_count > 0 && caught_fspecial == 0 && !has_teleported && !article1.inside_wall 
	&& article1.y - get_stage_data(SD_BOTTOM_BLASTZONE) < 128
	&& article1.x > get_stage_data(SD_X_POS) - get_stage_data(SD_SIDE_BLASTZONE) 
	&& article1.x < room_width - get_stage_data(SD_X_POS) + get_stage_data(SD_SIDE_BLASTZONE) 
	){
		if (window == 1){
			window = 2;	
			sound_play(asset_get("sfx_clairen_fspecial_dash"))
		}
	} else {
		// REGULAR RECOVERY (the one with a hitbox)
		if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-1){
			spawn_hit_fx(x-16*spr_dir, y, fx_shuriken_dissolve);
			hurtboxID.sprite_index = get_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE);
			vsp = -13;
			window = 3;
			window_timer = 0;
		}
	
	}
	if (caught_fspecial == 1 && can_throw_timer > 0 && !captain_mode){
		throw_hsp = 0;
		throw_vsp = -10;
		attack = AT_FSPECIAL;
	}
	move_cooldown[AT_USPECIAL] = 15;
}



if (attack == AT_NSPECIAL){
	
	if (window == 1){
		// sprite_index = sprite_get("waveland");
		if (window_timer == 1){
			spawn_hit_fx(x, y-24, 113);
			sound_play(snd_float, 0, noone, 1.0, 1.1);
		}
	}
	// no infinite nspecial stalling
	if (!has_nspecialed){
		has_nspecialed = true;
	}
	move_cooldown[AT_NSPECIAL] = 30;

	if (window == 1 && window_timer > 1 && !special_down){
		reverse = 1;
		nspec_multiplier = 1;
	}

	 if (window == 2 && window_timer == 1 && !hitpause){
		// if (window_timer == 1){
		// 	spr_dir *= reverse;
		// 	nspec_multiplier = 0.9;
		// 	vsp = -2; // TODO: tweak until satisfied
		// }
		vsp = 4;
		hsp = 12*spr_dir//*nspec_multiplier;
    }
    
    // if (window == get_attack_value(attack, AG_NUM_WINDOWS) && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-1){
    	
    // }
}


if (attack == AT_DSPECIAL){
	if (caught_fspecial == 1 && can_throw_timer > 0 && !captain_mode){
		throw_hsp = 0;
		throw_vsp = 12;
		attack = AT_FSPECIAL;
	}
	// HELPING FRIEND
	else if (window == 1 && window_timer == 1){
		with (article2){
			spawn_hit_fx(x,y,302);
			sound_play(asset_get("sfx_shovel_dig"));
			boosting = !boosting;
		}
	}
	move_cooldown[AT_DSPECIAL] = 20;
	
	// //LOXOBLOCK, UNUSED =========================================================
	// var articlesolid_count = 0;
	// var articlesolid = noone;
	// with(asset_get("obj_article_solid")){
 //       if (player_id == other.id){
 //           articlesolid_count++;
 //           articlesolid = id;
 //       }
 //   }
	// // if (window == 1 && window_timer == 1){
	// 	// print_debug("Dspecial disabled for now");
	// // }
	// if (window == 2 && window_timer == 1){
	// 	with (articlesolid){lifespan = 1;}
	// 	instance_create(x-sign(hsp)*48, y-48, "obj_article_solid");
	// 	// wall_x = x-sign(hsp)*48;
	// 	// wall_y = y+16;
	// }
	// // ====================================================================
	
	// ----- OTHER Dspecial just for messing around (teleports behind you, notthing personnell) ----
	// if (window == 2 && window_timer == 1){
		// var temp_x = x;
		// var temp_y = y;
		// x -= 99999;
		// y -= 99999;
		// var nearest_player = instance_nearest(x+99999, y+99999, oPlayer);
		// x += 99999;
		// y += 99999;
		// if (nearest_player != noone){
			// // sound_play(asset_get("sfx_abyss_spawn"));
			// vsp = -2;
			// x = nearest_player.x - nearest_player.spr_dir*48;
			// y = nearest_player.y - 48;
		// }
	// }
}

if (attack == AT_FSPECIAL){
	// print_debug("caught_fspecial: " + string(caught_fspecial));
	var window_skip = true;
	
	if (window == 1 && window_timer == 1){
		if (caught_fspecial == 0){
			window_skip = true;
		}
		//  else {
		// 	window_skip = false;
		// 	window = 4;
		// }
	}
	if (article1_count == 0 && window == 2 && window_timer == 1 && !captain_mode){
		// print_debug("a");
		// sound_play(snd_Fspecial_throw);
		var ghost_proj = instance_create(x+16*spr_dir, y-48, "obj_article1");
		ghost_proj.spr_dir = spr_dir;
	
		if (caught_fspecial == 1 && holding_boosted){
			sound_play(snd_Fspecial_throw); //insert different throw sound
			sound_play(asset_get("sfx_buzzsaw_throw"), false, noone, 0.8, 1.2);
			ghost_proj.sprite_index = sprite_get("throwingstar_boosted");
			ghost_proj.is_boosted = true;
			ghost_proj.hsp = throw_hsp * spr_dir;
			ghost_proj.vsp = throw_vsp;
		} else {
			sound_play(snd_Fspecial_throw); 
			ghost_proj.hsp = 15 * spr_dir;
		}
		caught_fspecial = 0;
	}
	if (window == 3 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-1){
		if (window_skip){
			// print("skip")
			window+=10;
		}
		//else {print("no skip for u")}
	}
}

// POWERED MODE: FALCON KNEE (todo)
if (attack == AT_FAIR){
	// after recatching ghost, get a Falcon Knee? (consumes ghost)
	if (window == 1 && window_timer == 1 && captain_mode){
		window = 4;
	}
	
	if (window == 3 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-1 && !captain_mode){
		window += 2;
	}
	
	if (window == 4){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-1){
			// print("fair")
			sound_play(asset_get("sfx_bird_screech"));
		}
	}
}

if (attack == AT_NAIR){
	if((window == 1 && window_timer == 3)
	|| (window == 2 && window_timer == 6)){
		sound_play(asset_get("sfx_bird_nspecial2"), 0, noone, 1.1, 0.9);
	}
}


// POWERED MODE: FALCO DAIR (TODO)
if (attack == AT_DAIR){
	if (vsp > 8){
		vsp = 8;
	}
}

if (attack == AT_FSTRONG){
	if (window == 3){
		hsp = spr_dir* (11 + strong_charge/30) // max charge is 60
	}
	
// 	if (attack_canceled = true && cancel_alarm < 1){
// 		// can_attack = true;
// 		can_jump = true;
// 	}
}

// JAB PARRY STUN FIX (MULTI HIT JAB)
if(attack == AT_JAB){
    if(window == 1 && window_timer == 1){
        last_hit_stun = false;
    }
    if(was_parried && window < 4){
        was_parried = false;
        last_hit_stun = true;
    }
    if(window >= 4 && last_hit_stun){
        was_parried = true;
    }
}

if (attack == AT_JAB){
	if (attack_pressed && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-1){
		jab_continue = window;
	}
	if window == 4{
		jab_continue = 4;
	}
	
	if ((window == 1 || window == 2 || /*window == 3||*/ window == 4) && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-1 && jab_continue != window){
		window = 6; // skip to end
		window_timer = 1;
	}	
// if window == 4 || ((hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND) && hit_player_obj.state_timer == 0){
// if window == 4{
// 		if window_timer == 0 || window_timer == 6{
// 			sound_play(asset_get("sfx_swipe_weak1"));
// 		}
// 	}
	if (window == 5 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-1 && attack_down){
		
		// jab_sound = true;
		window = 4;
		attack_end();
	}
}

if attack == AT_DTILT {
	if has_hit && !hitpause {
		can_jump = true;
		if jump_pressed && !hitpause{
			hsp = 9 * spr_dir;
		}
	}
}