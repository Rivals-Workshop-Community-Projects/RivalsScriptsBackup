//B - Reversals
if (attack == AT_NSPECIAL || /*attack == AT_FSPECIAL ||*/ attack == AT_DSPECIAL || attack == AT_USPECIAL || attack == AT_NSPECIAL_2) {
    trigger_b_reverse();
    //temperature_drain_timer = 0;
}

var timer1 = window == 1 && window_timer == get_window_value( attack, window, AG_WINDOW_LENGTH ) - 1
switch attack {
    case AT_DSPECIAL:
        if window == 5 && window_timer == 1 {
            sound_play(asset_get("sfx_clairen_dspecial_counter_success"), 0, noone, .5, 1)
            sound_play(asset_get("sfx_absa_cloud_crackle"), 0, noone, 1, 1)
        }
    case AT_DATTACK:
        if timer1 {
            sound_play(asset_get("sfx_absa_new_whip2"))
        }
    break;
    case AT_DSTRONG:
        if window == 1 && window_timer == 1 {
            sound_play(asset_get("sfx_boss_final_charge"))
        }
        if window == 4 && window_timer == 1 && dstrong_timer == 0 {
            sound_stop(asset_get("sfx_boss_final_charge"))
            sound_play(asset_get( "sfx_swipe_heavy1" ))
        }
        if window == 4 && !free {
            sound_play(asset_get("sfx_zetter_downb"))
            sound_play(asset_get("sfx_absa_new_whip2"))
            window = 5 
            window_timer = 0
        }
    	break;
    case AT_USTRONG: 
        if window == 2 && window_timer == 1{
            sound_play(asset_get("sfx_swipe_weak1"))
        }
        if window == 3 && window_timer == 2 && !hitpause {
            sound_play(asset_get("sfx_absa_jab1"), 0, noone, 1.0, 0.9)
        }
    	break;
    case AT_FAIR:
        if timer1 {
        	sound_play(asset_get("sfx_absa_cloud_pop"), 0, noone, .9, 0.9)
        }
    	break;
    case AT_FSTRONG:
        if window == 1 && window_timer == 1 {
            sound_play(asset_get("sfx_swipe_medium2"))
        }
        if window == 2 && window_timer == 1 {
            sound_play(asset_get("sfx_absa_cloud_crackle"), 0, noone, .8, 0.9)
        }
    	break;
    case AT_DAIR:
        if timer1 {
            sound_play(asset_get("sfx_absa_jab1"), 0, noone, .9, 1)
        }
    	break;
    case AT_FSPECIAL:
        if window == 1 && window_timer == 1 {
            sound_play(asset_get("sfx_absa_concentrate"))
        }
        if timer1 {
            sound_play(asset_get("sfx_absa_whip2"))
        }
    	break;
    case AT_JAB: 
        if timer1 {
            sound_play(asset_get("sfx_absa_jab1"), 0, noone, .2, 1)
        }
        if window == 4 && window_timer == 2 {
            sound_play(asset_get("sfx_absa_jab1"), 0, noone, .2, .9) 
        }
    	break;
    case AT_FTILT:
    case AT_DTILT: 
        if timer1 {
            sound_play(asset_get("sfx_absa_jab1"), 0, noone, .2, 1.1)
        }
    	break;
    case AT_UAIR:
		hud_offset = 45
        if timer1 {
            sound_play(asset_get("sfx_absa_new_whip2"), 0, noone, 1.2, 1)
        }
        break;
    case AT_UTILT:
        hud_offset = 45
        if timer1 {
            sound_play(asset_get("sfx_absa_cloud_pop"), 0, noone, .5, 1)
        }
    	break;
    case AT_BAIR:
        if timer1 {
            sound_play(asset_get("sfx_absa_jab1"), 0, noone, .5, 1)
        }
    	break;
    case AT_NAIR: 
        if timer1 {
            sound_play(asset_get("sfx_absa_cloud_pop"), 0, noone, .5, 1.25)
        }
    	break;
}
//dash cancel stuff
if (dash_cancel == 1 && state_timer <= 3){ //Activate dash cancel
    dash_cancel_attack = 1;
    dash_cancel = 0;
} 

if (dash_cancel_attack == 1 && state_timer <= 3){ //Start dash cancel's actual cancel
    can_attack = true;
    dash_cancel_attack = 0;
    hsp = 6*spr_dir; //consistent speed boost to prevent dash attack from making oxob too fast
}

//-------------------- Normals ----------------------

if (attack == AT_JAB){
    if (window == 6 && window_timer >= get_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_FRAME)){
        if (attack_pressed && !up_down && !left_down && !right_down && !down_down){
            window = 1; //this is used so jab can cancel back into itself for an infinite loop
            window_timer = 1;
        } else if (was_parried){
            if (window_timer >= get_window_value(AT_JAB, 6, AG_WINDOW_LENGTH)){
                state = PS_IDLE; //sets idle to override parry stun; both jab hits should be immune
            }
        }
    }
}

if (attack == AT_USTRONG){
    if (window <= 2){
        if (abs(hsp) > 8){
            hsp = 8*spr_dir;
        }
    }
}

if (attack == AT_DSTRONG){
    
    can_fast_fall = false;
    
    if (window == 2){
        dstrong_timer = 0;
        dstrong_frame = 0;
        if (window_timer == 1){
            vsp = -7;
        }

        hsp *= 0.8;
    }
    
    if (window == 3){
        if (vsp < 0){
            vsp += 0.2;
            
        } else {
            vsp = 0;
        }
        hsp *= 0.8;
        if(get_gameplay_time() % 4 == 0){
        	dstrong_frame++;
        	if(dstrong_frame > 3) dstrong_frame = 0;
        }
    }
    
    if (window == 4){
        can_wall_jump = true;
        
        if (down_down){
            fall_through = true;
        } else {
            fall_through = false;
        }
        
        if (vsp < 0){
            vsp += 0.8;
        }
        
        if (vsp > 0){
            if (vsp < 12){
                vsp = vsp*1.15 + 0.5;
            } else {
                vsp = vsp*1.1;
            }
            
        }
        hsp *= 0.8;
        
        dstrong_timer += 1;
        
        if (dstrong_timer >= 30){
            can_air_dodge = true;
            can_jump = true;
        }
        
        if(dstrong_timer % 4 == 0){
        	dstrong_frame++;
        	if(dstrong_frame > 3) dstrong_frame = 0;
        }
    }
}

//-------------------- Specials ----------------------

if (attack == AT_NSPECIAL){
    
    if (window == 1){
        if (free){
            set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 20);
            vsp *= 0.95;
            hsp *= 0.95;
        } else {
            reset_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH);
        }
    }
    
    if (window == 2 || (window == 1 && window_timer >= get_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH) ) && !hitpause){
        if ((window == 1 && window_timer >= get_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH) ) ){
            if (free){
                create_hitbox( AT_NSPECIAL, 2, x+(20*spr_dir), y-10 );
                sound_play(asset_get("sfx_swipe_heavy1"));
            } else {
                create_hitbox( AT_NSPECIAL, 3, x+(40*spr_dir), y+2 );
                create_hitbox( AT_NSPECIAL, 4, x+(35*spr_dir), y-10 );
                sound_play(asset_get("sfx_blow_heavy1"));
            }
        }
        if (window_timer == 3 && !free && !hitpause && !has_hit){
            create_hitbox( AT_NSPECIAL, 1, x+(70*spr_dir), y );
        }
        vsp = 0;
        hsp = 0;
        can_move = false;
    } 
    
    if (window == 3){
        if (window_timer <= 6){
            vsp = 0;
        }
        can_move = false;
    }
}

if (attack == AT_NSPECIAL_2){ //Boosted variant
    if (window == 1){
        if window_timer == 14 {
            sound_play(sound_get("theunmatchedpowerofgod"))
        }
        if (free){
            set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 20);
            vsp *= 0.95;
            hsp *= 0.95;
        } else {
            reset_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH);
        }
    }
    
    if (window == 2 || (window == 1 && window_timer >= get_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH) ) && !hitpause){
        if ((window == 1 && window_timer >= get_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH) ) ){
            if (free){
                //do big lazer
                nspec_vfx = noone;
                nspec_air_limit = 190;
                for(var i = 0; i < 190; i+=2){
                	if(place_meeting(x + (spr_dir*(-16+i)), y - 46 + i, asset_get("par_block"))){
                		nspec_air_limit = i;
                		if(place_meeting(x + (spr_dir*(-18+i)), y - 44 + i, asset_get("par_block"))){
                			nspec_vfx = spawn_hit_fx(x + (spr_dir*(-10+i)), y - 46 + i, nspec_floorhit);
                		}else{
                			nspec_vfx = spawn_hit_fx(x + (spr_dir*(4+i)), y - 36 + i, nspec_wallhit);
                		}
                		break;
                	}
                }
                for(var j = 0; j < 190; j+=38){
                	if(y + 12 + j < y - 46 + nspec_air_limit){
                		create_hitbox( AT_NSPECIAL_2, (j/38) + 2, x, y);
                	}
                }
                nspec_air_frame = 0;
                nspec_air_timer = 0;
                sound_play(asset_get("sfx_absa_uair"));
            } else {
            	create_hitbox( AT_NSPECIAL_2, 1, x+(20*spr_dir), y-60 );
            	nspec_vfx = spawn_hit_fx(x + (30 * spr_dir), y+2, nspec_boltgeyser);
                sound_play(asset_get("sfx_blow_heavy2"));
            }
        }
        vsp = 0;
        hsp = 0;
        can_move = false;
    } 
    
    if (window == 3){
        if (window_timer <= 6){
            vsp = 0;
        }
        can_move = false;
    }
}

if (attack == AT_DSPECIAL){
    if timer1 {
        sound_play(asset_get("sfx_clairen_dspecial_counter_success"), 0, noone, .5, 1.1)
        sound_play(asset_get("sfx_plasma_field_loop"), 1, noone, .5, 1.05)
        shield_afterhit = false;
    }
    if window == 4 || window == 5 {
        sound_stop(asset_get("sfx_plasma_field_loop"))
    }    
    if (window == 2 && window_timer == 1 && vsp > 0){
        vsp = 0;
    }
    can_move = false;
    
    if (window == 2 || window == 3 || (window == 1 && window_timer >= get_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH))){
        initial_invince = 2;
        //hit detection
		hit_detection();
        
        //shieldpush and drop
        if (attack_down && window == 3 && player_field_vars.in_field && !hitpause){
        	set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 7);
            //sound_play(asset_get("sfx_absa_gp"))
        	window = 5;
        	window_timer = 0;
            initial_invince = 0;
        } else if (!special_down && window == 3 && !hitpause){
        	set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 4);
            window = 4;
            window_timer = 0;
            //initial_invince = 0;
        } 
    } else if(window == 4 || window == 5){
    	//endlag leniency to properly avoid moves of a hitbox group that already hit the shield
        if(window_timer >= get_window_value(AT_DSPECIAL, window, AG_WINDOW_LENGTH)){
    		initial_invince = 0;
        }else{
        	if(!shield_afterhit) initial_invince = 2;
        	hit_detection();
        }
    }
}

if (attack == AT_USPECIAL){ //pofjgmaoefnhiajwehda;qoiwjcxoiq'wdk
    go_through = true;
    
    if (window == 1){
        vsp = 0;
        hsp *= 0.9;
        
        reset_attack_value(AT_USPECIAL, AG_NUM_WINDOWS);
    }
    
    if ((window == 2 || window == 1 && window_timer == get_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH)) && !hitpause){
        vsp = -15;
        if ((left_down && spr_dir = -1) || (right_down && spr_dir = 1)){
            hsp = 4*spr_dir;
        } else {
            hsp = 1*spr_dir;
        }
        
    }
    
    if (window == 3 && window_timer == 1 && !hitpause){
        vsp = -9;
    }
    
    if (has_hit_player && window <= 3){
        set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 7);
        
        if (window == 3){
            window = 5;
            window_timer = 1;
        }
    }
    
    if instance_exists(uspecial_target)
    {
        if (window > 1 && window < 5 && has_hit_player && uspecial_target.hitstun > 0){
            uspecial_target.go_through = true;
            uspecial_target.x = lerp(x, x+(20+hsp)*spr_dir, 0.1);
            uspecial_target.y = lerp(y, y-(12+vsp), 0.1);
        } else if (window == 5 && window_timer <= 16 && has_hit_player && uspecial_target.hitstun > 0){
            uspecial_target.go_through = true;
            uspecial_target.x = lerp(x, x+(60+hsp)*spr_dir, 0.6);
            uspecial_target.y = lerp(y, y-4, 0.1);
        } else {
            uspecial_target.go_through = false;
        }
    }
    
    if (window == 5){
        vsp *= 0.8;
        hsp *= 0.8;
    }
    
    if (window == 6 || window == 7){
        hsp = 0;
        djumps = 0; //restores double jump(s)
        
        if (window == 6 && window_timer == 1 && !hitpause && has_hit_player){
            vsp = -7;
        }
    }
    
    if (window == 7 && !free){
        set_state(PS_LANDING_LAG);
    }
}

if (attack == AT_USPECIAL_2){ //AAAAAAAAAAAAAAAA
    go_through = true;

    if (window == 1){
        vsp = 0;
        hsp *= 0.9;
        uspec_kb_ramp = 0;
        
        uspecial_slammed = 0;
        
        reset_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS);
    } else {
        hsp *= 0.9;
    }
    
    if ((window == 2 || window == 1 && window_timer == get_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH)) && !hitpause){
        vsp = -13;
        if ((left_down && spr_dir = -1) || (right_down && spr_dir = 1)){
            hsp = 2*spr_dir;
        } else {
            hsp = 0
        }
        
    }
    
    if (window == 3 && window_timer == 1 && !hitpause){
        
        vsp = -12;
    }
    
    if (has_hit_player && window >= 2){
        set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 6);
        
        if ((window == 3 && vsp >= -2) || window == 4){
            sound_play(asset_get("sfx_boss_final_charge"))
            window = 5;
            window_timer = 0;
        }
    }
    
    if instance_exists(uspecial_target)
    {
        if (window > 1 && window < 5 && has_hit_player && uspecial_target.hitstun > 0){
            uspecial_target.go_through = true;
            uspecial_target.x = lerp(x, x+(hsp)*spr_dir, 0.3);
            uspecial_target.y = lerp(y, y-(60+vsp), 0.8);

            uspecial_target.hitstop = 1;
        } else if (window >= 5 && has_hit_player && uspecial_target.hitstun > 0 && free){
            uspecial_target.go_through = true;
            uspecial_target.x = lerp(x, x+(hsp)*spr_dir, 0.3);
            uspecial_target.y = lerp(y, y, 0.9);
            
            uspecial_target.hitstop = 1;

        } else {
            uspecial_target.go_through = false;
        }
    }
    
    if (window == 6){
        can_fast_fall = false;
        
        if (!free){
            if (uspecial_slammed == 0){
                create_hitbox(AT_USPECIAL_2, 2, x, y);
                uspecial_slammed = 1;
                sound_stop(asset_get("sfx_boss_final_charge"))
            }
            
            if (uspecial_target.hitpause < 1){
                attack = AT_EXTRA_2;
                vsp = -12;
                hsp = -4*spr_dir;
                window_timer = 0;
                window = 1;
            }
        } else {
        	vsp += 0.5;
        	uspec_kb_ramp += 0.1;
        	uspec_kbs_ramp += 0.015;
        	
        	set_hitbox_value(AT_USPECIAL_2, 2, HG_BASE_KNOCKBACK, 5+uspec_kb_ramp);
        	set_hitbox_value(AT_USPECIAL_2, 2, HG_KNOCKBACK_SCALING, 0.7+uspec_kbs_ramp);
        }
    } else {
    	uspec_kb_ramp = 0;
    	uspec_kbs_ramp = 0;
    	reset_hitbox_value(AT_USPECIAL_2, 2, HG_BASE_KNOCKBACK);
    }
}



if (attack == AT_FSPECIAL){
    if (window == 1){
        snapped_to_ledge = false;
        vsp = 0;
        
        attack_end();
        
        fspecial_timer = 0;
        
		if(player_field_vars.in_field){
	        fspec_angle_target = point_direction(x, y, player_field_vars.field_obj.stuck_player.x, player_field_vars.field_obj.stuck_player.y);
			var diff = angle_difference(fspec_angle_target, fspec_angle);
			if(abs(diff) <= fspec_angle_limit){
				fspec_angle += diff/fspec_angle_adjust;
			}
			if(fspec_angle < 0) fspec_angle += 360;
			if(fspec_angle > 90 && fspec_angle < 270){
				spr_dir = -1;
			}
			else{
				spr_dir = 1;
			}
        }
    }
    
    if (window == 2 and window_timer > 2){
        vsp = 0;
        hsp += 2*spr_dir;
        
    }
    
    if ((window == 3 || (window == 2 && window_timer >= get_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH))) && !hitpause){
        
        if (window == 2 && window_timer = 5 ){ //Uses a buffer from the previous window to make the speed kick in on the proper frame.
	        var new_hsp = lengthdir_x(fspec_speed, fspec_angle);
			var new_vsp = lengthdir_y(fspec_speed, fspec_angle);
			hsp = new_hsp;
			vsp = new_vsp;
			fall_through = true;
			var vfx = spawn_hit_fx(x, y - char_height/2, fspecial_vfx);
			vfx.spr_dir = 1;
			vfx.draw_angle = fspec_angle;
        } else if (window == 3){
        	//Turn to home when in field.
        	if(player_field_vars.in_field == true){
				fspec_angle_target = point_direction(x, y, player_field_vars.field_obj.stuck_player.x, player_field_vars.field_obj.stuck_player.y);
				if(abs(fspec_angle_target - fspec_angle) > fspec_turn_adjust){
					
					var diff = angle_difference(fspec_angle_target, fspec_angle);
					if(abs(diff) <= fspec_angle_limit){
						fspec_angle += sign(diff) *fspec_turn_adjust;
					}
					if(fspec_angle < 0) fspec_angle += 360;
					if(fspec_angle > 90 && fspec_angle < 270){
						spr_dir = -1;
					}
					else{
						spr_dir = 1;
					}
					var orig_spd = sqrt(power(abs(hsp), 2) + power(abs(vsp), 2));
					var new_hsp = lengthdir_x(orig_spd, fspec_angle);
					var new_vsp = lengthdir_y(orig_spd, fspec_angle);
					hsp = new_hsp;
					vsp = new_vsp;
				}
			}
        	fall_through = true;
        }
        
        if (has_hit){
        	fspecial_spin_cancel = 1;
			vsp = -10;
			hsp = spr_dir*-5;
			attack_end();
			destroy_hitboxes();
			attack = AT_EXTRA_2;
            sound_play(asset_get("sfx_ori_stomp_spin"))
			window_timer = 0;
			window = 1;
        } else if (place_meeting(x + (10 * spr_dir), y - 22, asset_get("par_block"))){
            sound_play(asset_get("sfx_absa_uair"));
            sound_play(asset_get("sfx_ori_stomp_spin"))
            spawn_hit_fx(x + (18 * spr_dir), y - 22, weakhit);
            if (fspecial_wall_bounces == 0){
                vsp = -10;
            } else {
                vsp = -2.5;
            }
            hsp = spr_dir*-7;
            fspecial_wall_bounces += 1;
            attack_end();
            destroy_hitboxes(); //You're welcome
            attack = AT_EXTRA_2;
            window_timer = 0;
            window = 1;
        } else {
            if (snapped_to_ledge == false) {
			    snapped_to_ledge = ledge_snap();
		    }
        }
        
    }
    
    if (window == 4){
        hsp = clamp(hsp, -12, 12);
        vsp = clamp(vsp, -10, 8); //more vertical leniency so you dont Die
    }
    
    if (window < 4){
        can_fast_fall = false;
    } else {
        can_fast_fall = true;
    }
    
    if (window == 6 && !hitpause){
    	can_move = false;
    	fspecial_timer += 1;
    	
    	if (fspecial_timer >= 28){
        	vsp = -10;
            hsp = spr_dir*2;
            attack = AT_EXTRA_2;
            create_hitbox(AT_FSPECIAL, 5, x, y);
            window_timer = 0;
            window = 1;
    	} else {
    		if (fspecial_target.hitstun >= 1){
    			fspecial_target.vsp = 0;
    			fspecial_target.y = fspec_opp_y-2;
    		}
    		hsp *= 0.88;
    		vsp = 0;
    	}
    }
    
}

if (attack == AT_EXTRA_2){ //Spin that happens after fspec
	if (fspecial_spin_cancel == 1){ //if fspecial hit something that isn't a wall
		//cooldown for fspec, but otherwise cancellable

		if (window_timer > 1 || window > 1){
			if (!hitpause){
				move_cooldown[AT_FSPECIAL] = 16;
				iasa_script();
			}
		}
		
	}
	
	hurtboxID.sprite_index = sprite_get("oxob_hurtbox");
	
	if (!hitpause){
    	spin_timer += 1;
	}
    
    if (spin_timer >= 24 && window < 3){
        window = 3;
        window_timer = 0;
    }
    
    if (window == 3){
        iasa_script();
        
        if (!free){
            set_state(PS_LAND);
        }
    }
} else {
    spin_timer = 0;
} 

if (attack == AT_EXTRA_3){
	hurtboxID.sprite_index = sprite_get("oxob_hurtbox");
    //Shield break stun
    soft_armor = 0;
    damage_scaling = 1;

    if (window == 1){
        if window_timer == 1 && !hitpause {
            	sound_stop(asset_get("sfx_plasma_field_loop"))
                sound_play(asset_get("sfx_absa_cloud_crackle"))
        }
        invincible = true;
        vsp = 0;
        hsp = 0;
    } else {
        invincible = false;
    }
    
    if (window == 2){
        if (free){
            set_state(PS_PRATFALL);
        }
        
        if (shield_health >= shield_health_max){
            window = 3;
            window_timer = 0;
        }
        
        shield_health += shield_health_regen*1.5;
    }
}

#define ledge_snap
//allows a moving attack to snap onto and over the ledge without getting caught, 
// similar to Maypul and Orcane's Forward-Specials.
// returns 'true' when the attack successfully snaps over a ledge
//code example by Mawral - free to use without credit.

var step = 32; //the maximum distance to move up from the ledge. must be a power of 2. '16' or '32' is recommended.
var xx = x + spr_dir; //use 'xx = x - spr_dir' if the attack moves backwards.

//check if there is a ledge ahead. if there is not, return 'false' and end the script.
var par_block = asset_get("par_block");
if (!place_meeting(xx, y, par_block) || place_meeting(xx, y - step, par_block)) return false;

//move the player onto and above the ledge.
x = xx;
y -= step;
//then, move downwards as far as possible without cutting into the stage.
for (step /= 2; step >= 1; step /= 2) {
	if (!place_meeting(x, y + step, par_block))  y += step; 
}
//ledge snap successful. return 'true'.
return true;

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
if hbox.type == 1 {
    var desired_hitstop = clamp(hbox.hitpause + hbox.damage * hbox.hitpause_growth * 0.05, 0, 20);
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
hitstop = floor(desired_hitstop); 
 
 
//Hit Lockout
if article_should_lockout hit_lockout = hbox.no_other_hit;
 
real_hit = false;
//the OXOB code heeheehee..... i am so smart. -JPEG
if (window == 2 || window == 3 || (window == 1 && window_timer >= get_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH))){
	real_hit = true;
	//perfect shield
    if (window == 2 || (window == 1 && window_timer >= get_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH))){
        //shield health decrease less
        //shield_health -= hbox.damage*0.1;
        hit_player_obj.hitstop = hbox.hitpause + 8;
        hitpause = true;
        hitstop = hbox.hitpause + 3;
        //ADD PERFECT SHIELD SFX
     //normal shield 
    } else {
        //shield health decrease
        hitpause = true;
        hitstop = hbox.hitpause;
        shield_health -= hbox.damage;
    }
    battery_vis_gain = 0.5;
    battery_vis_timer = 60;
    //move around a bit when hit
    if (hit_player_obj.x < x){
        shield_hit_player_dir = 1;
    } else if (hit_player_obj.x > x){
        shield_hit_player_dir = -1;
    } else {
        shield_hit_player_dir = spr_dir;
    }
        
    old_hsp = hbox.damage * shield_hit_player_dir * 0.5;
        
    if (free){
        old_vsp = - 1 - hbox.damage*0.25;
    }else{
    	old_vsp = 0;
    }
        
    if (shield_health <= 0){
        //shield break
        old_hsp = hbox.damage*shield_hit_player_dir*1;
        if (free){
            parry_lag = 90;
            was_parried = true;
        }
        
        spr_dir = -shield_hit_player_dir;
        
        attack_end();
        set_attack(AT_EXTRA_3);
        //window = 1;
        //window_timer = 0;
        initial_invince = 0;
        sound_stop(asset_get("sfx_plasma_field_loop"))
        sound_play(asset_get("sfx_absa_uair"));
        
    }
    hud_ping_timer = 10;
}else if(window == 4 || window == 5){
	with hit_player_obj {
        if !hitpause {
            old_vsp = vsp;
            old_hsp = hsp;
        }
        hitpause = true;
        hitstop = 2;
    }
    hitpause = true;
    hitstop = 2;
    initial_invince = 0;
    shield_afterhit = true;
    
}

//Default Hitstun Calculation
//hitstun = (hbox.kb_value * 4 * ((kb_adj - 1) * 0.6 + 1) + hbox.damage * 0.12 * hbox.kb_scale * 4 * 0.65 * kb_adj) + 12;
//hitstun_full = hitstun;
            
//Default Knockback Calculation
 
// if other.force_flinch && !other.free orig_knock = 0; //uncomment this line for grounded articles.
//if hbox.force_flinch orig_knock = 0.3; //comment out this line for grounded articles.
//else orig_knock = hbox.kb_value + hbox.damage * hbox.kb_scale * 0.12 * kb_adj;
//kb_dir = get_hitbox_angle(hbox);
 
//hsp = lengthdir_x(orig_knock, kb_dir);
//vsp = lengthdir_y(orig_knock, kb_dir);
 
//Default hit stuff
if(real_hit){
	sound_play(hbox.sound_effect);
	//ty nart :p
	var fx_x = lerp(hbox.x, x, 0.5) + hbox.hit_effect_x*hbox.spr_dir;
	var fx_y = lerp(hbox.y, y, 0.5) + hbox.hit_effect_y;
	with hit_player_obj { // use a with so that it's shaded correctly
	    var temp_fx = spawn_hit_fx(fx_x, fx_y, hbox.hit_effect);
	    temp_fx.hit_angle = other.kb_dir;
	    temp_fx.kb_speed = other.orig_knock;
	}
}
 
#define filters(hbox)
//These are the filters that check whether a hitbox should be able to hit the article.
//Feel free to tweak this as necessary.
with hbox {
    var player_equal = player == other.player;
    var team_equal = get_player_team(player) == get_player_team(other.player);
    return ("owner" not in self || owner != other) //check if the hitbox was created by this article
        && hit_priority != 0 && hit_priority <= 10
        && (groundedness == 0 || groundedness == 1+other.free)
        && (!player_equal) //uncomment to prevent the article from being hit by its owner.
        //&& ( (get_match_setting(SET_TEAMS) && (get_match_setting(SET_TEAMATTACK) || !team_equal) ) || player_equal) //uncomment to prevent the article from being hit by its owner's team.
}

 
#define hit_detection
//Code by Supersonic#9999
//DO NOT modify this function unless you know what you're doing. This does the actual detection, while
//the other functions determine how and what the hit detection interacts with.
//hbox group management

//this code has been moved to update.gml
/*with (oPlayer)
    if state == clamp(state, 5, 6) && window == 1 && window_timer == 1 {
        other.hbox_group[@ player-1][@ attack] = array_create(10,0);
        print(other.hbox_group[@ player-1][@ attack])
    }*/

 
//hit lockout stuff
if hit_lockout > 0 {
    hit_lockout--;
    return;
}
//get colliding hitboxes
var hitbox_list = ds_list_create();
 
var num = instance_place_list(floor(x), floor(y), pHitBox, hitbox_list, false);
var final_hbox = noone;
if num == 0 {
    ds_list_destroy(hitbox_list);
    return;
}
if num == 1 {
    //no priority checks if only one hitbox is found
    var hbox = hitbox_list[|0]
    var group = hbox.hbox_group
    if (hbox.can_hit[player] == true)
        if (group == -1 || ( group != -1 && hbox_group[@ hbox.orig_player-1][@ hbox.attack][@ group] == 0)) {
            if filters(hbox) {
                final_hbox = hbox;
            } else {
                //hitbox doesn't meet collision criteria. since this usually doesn't change, omit it.
                hbox.can_hit[player] = false;
            }
        } else {
            //fake hit if group has already hit; optimization thing
			hbox.can_hit[player] = false;
        }
} else {
    var highest_priority = 0;
    var highest_priority_owner = -1;
    var highest_priority_hbox = noone;
    for (var i = 0; i < ds_list_size(hitbox_list); i++) {
        var hbox = hitbox_list[|i]
        var group = hbox.hbox_group
        if (hbox.can_hit[player] == true)
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
                    hbox.can_hit[player] = false;
                }
            } else {
                //fake hit if group has already hit; optimization thing
                hbox.can_hit[player] = false;
            }
    }
    if highest_priority != 0 {
        final_hbox = highest_priority_hbox;
    }
}

if final_hbox != noone {
    on_hit(final_hbox);
    if(real_hit) final_hbox.can_hit[player] = false;
    if final_hbox.hbox_group != -1 hbox_group[@ final_hbox.orig_player-1][@ final_hbox.attack][@ final_hbox.hbox_group] = 1;
}
 
//clear hitbox list
//ds_list_clear(hitbox_list)
ds_list_destroy(hitbox_list);