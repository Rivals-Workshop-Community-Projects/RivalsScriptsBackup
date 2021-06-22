if (cancel_alarm > -1) cancel_alarm--;
if (cancel_alarm == 0){
	// can_attack = true;
	can_jump = true;	
}
if (uspec_cancel_alarm > -1) {
	uspec_cancel_alarm--;
	move_cooldown[AT_USPECIAL] = 30;
}

// hello
if (atk_cooldown > 0) {
	can_attack = false;
	// has_airdodge = false;
	can_throw = false;
	can_throw_timer = 20;
	// print(can_throw)
	atk_cooldown--;
}
if (atk_cooldown == 0 && get_gameplay_time() > 126){// && (state_cat == SC_AIR_NEUTRAL || state_cat == SC_GROUND_NEUTRAL)){
	state = PS_IDLE_AIR;
	can_attack = true;
	// has_airdodge = true; // would cause situations of having 2 airdodges in one jump
	atk_cooldown--;
}

if (uspec_cancel_alarm == 0){
	// can_attack = true;
	state = PS_IDLE_AIR;
	can_jump = true;
	// if (pHurtBox.dodging){
	// 	pHurtBox.dodging = false; // check if this fixes Uspecial invincibility bug
	// }
}

if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
	hit_sound_played = false;
}

if (captain_timer > 0) captain_timer--;
if (captain_timer < 1){
	captain_mode = false;
	// caught_fspecial = 0;
}
// print_debug("sprite_index: " + string(sprite_index));
// print_debug("can_jump: " + string(can_jump));

var article2_count = 0;
var article2 = noone;
with(asset_get("obj_article2")){
        if (player_id == other.id){
            article2_count++;
            article2 = id;
        }
    }

//temp
// if (article2 != noone && distance_to_point(article2.x, article2.y) < 4){
// 	print("touch friend");
// }

if (!friend_created){
	instance_create(x, y, "obj_article2");
	friend_created = true;
	// print_debug("Your friend is here!");
}

if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND){
	reverse = -1;
	attack_canceled = false;
}

if (!free){
	has_nspecialed = false;
	move_cooldown[AT_NSPECIAL] = 0;
	has_teleported = false;
	has_been_boosted = false;
}

if (has_nspecialed) { move_cooldown[AT_NSPECIAL] = 10; }

if (state == PS_RESPAWN && state_timer == 1){
	sound_play(asset_get("sfx_forsburn_breath"));
}

// print_debug("can_throw: " + string(can_throw));
// other method
if (can_throw_timer > 0){
	can_throw_timer--;
} else{
	can_throw = true;
}


// TEMP HURTBOX SOLUTION
// if (!temp_hurtboxes_set){
// 	var temp_hurtbox = asset_get("ex_guy_hurt_box");
// 	for (i=0; i<42; i++){
// 		if (i != 0 && i != 2 && i != 3 && i != 39 && i != 40 ){
// 			set_attack_value(i, AG_HURTBOX_SPRITE, temp_hurtbox);
// 		}		
// 	}
// 	temp_hurtboxes_set = true;
// }

// TEMP HURTBOX SOLUTION (ONLY MISSING HURTBOXES)
if (!temp_hurtboxes_set){
	var temp_hurtbox = asset_get("ex_guy_hurt_box");
	for (i=0; i<42; i++){
		if (i == AT_DSPECIAL){
			set_attack_value(i, AG_HURTBOX_SPRITE, temp_hurtbox);
		}		
	}
	temp_hurtboxes_set = true;
}


var articlesolid_count = 0;
var articlesolid = noone;
with(asset_get("obj_article_solid")){
        if (player_id == other.id){
            articlesolid_count++;
            articlesolid = id;
        }
    }
    
// MOBILITY BOOSTER FRIEND (DSPECIAL)
if (bigskull_cooldown > 0) {bigskull_cooldown--;}
if (article2 != noone && distance_to_point(article2.x, article2.y) < 8){
	if (article2.boosting){
		switch(state){
			case PS_HITSTUN:
				// print_debug("touch)");
				if (shield_down){
					// print_debug("tech)");
					set_state(PS_WALL_JUMP);
					spawn_hit_fx(x,y,302);
				}
				break;
			// case PS_AIR_DODGE:
			case PS_ATTACK_GROUND:
				break;
			case PS_ATTACK_AIR:
				if (/*attack != AT_DSPECIAL && */!has_been_boosted){
					if (bigskull_cooldown < 1){
						bigskull_cooldown = 30;
						// hsp = 0; // TODO: Think about purpose of helping hand mechanic (chasing opponents?)
						hsp = clamp(hsp*1.5, -14, 14);
						vsp = -11;
						// set_attack(AT_NAIR);
						has_been_boosted = true;
						set_state(PS_DOUBLE_JUMP);
						spawn_hit_fx(article2.x, article2.y, 19);
						sound_play(asset_get("sfx_clairen_fspecial_dash"));
						// has_airdodge = false;
						spawn_hit_fx(article2.x,article2.y,302);
					}
				}
				break;
			// case PS_DASH:
					// hsp = dash_speed * 3 * sign(hsp);
					// // if (abs(hsp) < dash_speed * 5){
						// // hsp *= 2;
					// // }
					// if (bigskull_cooldown < 1){
						// spawn_hit_fx(x,y,302);
						// bigskull_cooldown = 30;
					// }
				// break;
			// case PS_ROLL_FORWARD:
			// case PS_ROLL_BACKWARD:
			// 		// hsp = sign(hsp) * dash_speed * 1.5;
			// 		hsp = sign(hsp) * 5
			// 		vsp = -13;
			// 		set_attack(AT_NAIR); //replace by custom attack?
			// 		window = 3;
			// 		spawn_hit_fx(x, y, 127);
			// 			sound_play(snd_Nspecial);
			// 		has_airdodge = false;
			// 		if (bigskull_cooldown < 1){
			// 			spawn_hit_fx(x,y,302);
			// 			bigskull_cooldown = 30;
			// 		}
			// 	break;
			default:
				break;
		}
	}
}
	

// old?
// article_solid: Loxoblock// article1: ghost projectile
// var articleS_count = 0;
// var articleS = noone;
// with(asset_get("obj_article_solid")){
        // if (player_id == other.id){
            // articleS_count++;
            // articleS = id;
        // }
    // }

// print_debug("wall_timer: " + string(wall_timer));
// if (wall_x != -88888 && wall_y != -88888){
	// if (wall_timer == 0 && !wall_available){
		// print_debug("articleS_count: " + string(articleS_count));
		// articleS.x = wall_x;
		// articleS.y = wall_y;
		// // instance_create(wall_x, wall_y, "obj_article_solid")
		// wall_available = true;
		// print_debug("wall_available: " + string(wall_available));
	// }
// }

// article1: ghost projectile
var article1_count = 0;
var article1 = noone;
with(asset_get("obj_article1")){
        if (player_id == other.id){
            article1_count++;
            article1 = id;
        }
    }

// CATCHING THE GHOST (FSPECIAL)
if (distance_to_object(article1) < catch_radius){
	if (caught_fspecial == 0 
	&& (shield_pressed || attack_pressed || left_strong_pressed || right_strong_pressed || down_strong_pressed || up_strong_pressed) 
	&& can_throw){
		// print_debug("catch");
		if (article1.is_boosted){
			holding_boosted = true;
		}
		caught_fspecial = 1;
		can_throw = false;
		can_throw_timer = 10;
		sound_play(snd_catch);
		spawn_hit_fx(article1.x, article1.y, fx_ghost_hit);
		with (article1){
			lifespan = 1;
		}
	}
}

if (caught_fspecial == 1){
	// has_airdodge = false; // why did this line exist here
	// if (can_attack){
	
		// EAT THE SHURIKEN (todo, later update)
		if (down_down && special_pressed && !free && !captain_mode){
			// captain_mode = true;
			// captain_timer = 180;
			// caught_fspecial = 0;
			// attack = AT_FSPECIAL;
			// window = 4;
		}
		// THROW THE SHURIKEN AGAIN
		else if (!joy_pad_idle && special_pressed && can_throw && !captain_mode){ 
			// sound_play(asset_get("sfx_frog_fspecial_fire"));
			// print_debug("attack_throw");
			can_throw_timer = 10;
			can_throw = false;
			
			if (left_down || right_down){
				throw_hsp = 14;
				throw_vsp = 0;
			}
			// attack = AT_FSPECIAL;	
		}
	// }
}

//Floating, code from Pomme by RubyNights
var air = (state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP || state == PS_IDLE_AIR);

if(
	(
		state == PS_IDLE_AIR 
		|| (state = PS_ATTACK_AIR && attack != AT_NSPECIAL && attack != AT_USPECIAL && state_timer > 1) // custom line
		|| (air && vsp > 0)
	) 
	&& (jump_down) && floating == 0 
	|| (state == PS_IDLE_AIR || (air)) 
	
	&& (jump_down && (down_down)) 
	&& floating == 0
){
    floating = 1;
    floatTimer = floatMax;
    floatAnimTimer = 0;
    floatCancel = 1;
    
    
    if (state == PS_DOUBLE_JUMP && state_timer < 9){
    	djumps = 0;
	}
}

//snd
if (floatTimer == floatMax && !float_sound_playing){
	sound_play(snd_float);
	float_sound_playing = true;
}

if (floating){
	air_accel = 1.3;
	if (!free){
		if (down_down){
			freeFloatStop = 1;
		}
	    	
			y = y - 2; //This precents the weird crouching conflict
	}
		
    grav = 0;
    can_fast_fall = 0;
    
    if (freeFloat > 0 && !freeFloatStop){ //Free float
        vsp = floatMoveSpeed*(down_down - up_down) + (floatDriftSpeed*(!down_down*!up_down));
    
        if (abs(down_down - up_down) > 0 /*custom part ->>*/ && state_timer > 5){
        	
            floatMoveSpeed *= 1.2; // 1.2
            
            if (floatMoveSpeed > 15.5){ // 5.5
                floatMoveSpeed = 15.5;  // same as above
            }
            
            floatDriftSpeed = floatMoveSpeed*(down_down - up_down);
            
        } else {
                floatMoveSpeed = 2; //2
                floatDriftSpeed *= 0.85; //0.85
        }
    } else { // Regular float
    	vsp = 0;
    	//custom blblblbl
    	if (!left_down && !right_down) hsp *= 0.8;
    	else{
    		// hsp *= 0.9;
    	}
    }
    

    if(
	    !(
	    	(
			    jump_down 
			    || up_down 
			    & can_tap_jump()
		    )
	    && 
		    (state == PS_ATTACK_AIR || air)
	    )
    ){
    	can_fast_fall = 1;
		floating = -1;
	}
	
	if(special_pressed){
		can_fast_fall = 1;
		floating = -1;
	}
    
    if(floatTimer > 0){
    	can_fast_fall = 1;
        floatTimer--;
        
    }else{
    	can_fast_fall = 1;
        floating = -1;
    }
} else {
	if (floating == -1){
		sound_stop(snd_float);
		float_sound_playing = false;
	}
	air_accel = air_accel_base;
}

if(state == PS_IDLE || state == PS_CROUCH || state == PS_JUMPSQUAT || state == PS_WALK || state == PS_DASH){
    floating = 0;
    escapedPratfall = 0;
    move_cooldown[AT_USPECIAL] = 0;
    floatCancel = 0;
    freeFloat = 0;
    freeFloatStop = 0;
} else if (floatCancel && !free && state != 5){
	floating = 0;
}

if (freeFloat > 0){
	freeFloat -= 1;
}

// uhh 
// if (get_gameplay_time() < 126) {
// 	attack = AT_TAUNT;
// }