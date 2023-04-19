//B - Reversals
switch (attack){
    case AT_NSPECIAL:
    case AT_DSPECIAL:
    case AT_FSPECIAL:
    case AT_USPECIAL:
    case AT_USTRONG_2:
    	if (move_cooldown[attack] == 0)
        trigger_b_reverse();
    break;

}

timer_end = get_window_value(attack, window, AG_WINDOW_LENGTH) - 1;


switch (attack){

case AT_DTILT:
    if (window == 5 && !was_parried){
    	if (window_timer == timer_end && has_hit_player)
        set_state(PS_CROUCH);
        if (window_timer == timer_end*2 && !has_hit_player)
        set_state(PS_CROUCH);
        
    }
    

    break;




case AT_UTILT:

    if (window >= 4){
        if (has_hit_player && !was_parried)
            can_jump = true;
    }

break;

case AT_NSPECIAL:
    nspec_cd = 2;
    can_fast_fall = false;
    can_move = false;

    if (window == 1){
        if (window_timer == 1 && !hitpause)
            sound_play(asset_get("sfx_forsburn_cape_swipe"));

        vsp = -1;
        hsp = 1;
        
        if (window_timer == timer_end/2){
	        if (left_down)
	        	spr_dir = -1;
	        	
	        if (right_down)
	        	spr_dir = 1;
        }
        
    }

    if (window == 2){

        if (!hitpause){
            vsp = -1;

            if ((right_down && spr_dir == -1) || (left_down && spr_dir == 1))
            hsp = 6.5 * spr_dir;
            else if ((right_down && spr_dir == 1) || (left_down && spr_dir == -1))
            hsp = 8 * spr_dir;
            else
            hsp = 7 * spr_dir;

            
            if (up_down)
            vsp = -4;    
            else if (down_down)
            vsp = 2;
            else
            vsp = 0;
        }



        if (instance_exists(grabbed_player)){
                grabbed_player.x = lerp(grabbed_player.x, x+(40*spr_dir), 0.1);
                grabbed_player.y = lerp(grabbed_player.y, y+10, 0.1);
        }


    }

    if (window == 4 && window_timer == 1 && !hitpause){
    vsp = -7.5;
    hsp = spr_dir * -2;
    }

    if (window == 5 && !free){
        set_state(PS_LANDING_LAG);
    }



break;

case AT_DATTACK:
    if (window == 1){
        if (window_timer == 1)
        x -= 40 * spr_dir;
        else
        hsp = -2 * spr_dir;
    }

    if (window == 3)
        hsp *= 0.9;

    if (has_hit_player && !was_parried){
        can_jump = true;
    }

break;

case AT_FSTRONG:
	reload_delay = 0;
    if (window == 3 && window_timer == 1  && !hitpause){
        hsp = (-5.5 - (5.5*strong_charge*air_launch_rate)) * spr_dir;

        ammo--;
        reload_delay = 0;

    }

break;

case AT_USTRONG:
	reload_delay = 0;
    if (window == 5 && window_timer == 1  && !hitpause){
        ammo--;
        reload_delay = 0;

    }

    if (window == 4){
        if (instance_exists(grabbed_player)){
            grabbed_player.x = lerp(grabbed_player.x, x-(14*spr_dir), 0.2);
            grabbed_player.y = lerp(grabbed_player.y, y-90, 0.2);
        }
    }

break;

case AT_DSTRONG:
	reload_delay = 0;
    if (window == 3 && window_timer == 1  && !hitpause){

        ammo--;
        reload_delay = 0;

    }
	if (has_hit_player){
	can_jump = true;
		if (jump_pressed){
			ammo--;
	        reload_delay = 0;
		}
	}

break;



case AT_DSTRONG_2:
	reload_delay = 0;
    can_fast_fall = false;
    if (window == 1){
        vsp *= 0.8;
        if (!smash_charging ){
            if (window_timer == 1){
                sound_play(asset_get("sfx_forsburn_cape_swipe"));
                vsp = 0;
                if (left_down && hsp > -jump_change){
                    hsp = -jump_change;
                }
                if (right_down && hsp < -jump_change){
                    hsp = jump_change;
                }
            }

        }
        else{
        	if (strong_charge == 15){
        	smash_charging = false;
        	window = 2;
        	window_timer = 0;
        	}
        }
    }

    if (window == 3 && window_timer == 1 && !hitpause){
        vsp = (-djump_speed - (djump_speed*strong_charge*dair_launch_rate));

        ammo--;
        reload_delay = 0;

    }

    //air_strong = (free) ? 2 : air_strong;

    if (window == 1)
        can_move = false;

    // if (window == get_attack_value(attack, AG_NUM_WINDOWS)){
    //     hsp *= 0.96;
    //     vsp *= 0.96;
    // }

    if (window >= 4 || has_hit_player) && !was_parried && !hitpause{

        if (djumps == 0)
        can_jump = true;

        if (jump_pressed && !joy_pad_idle && djumps == 0){
            hsp = 0;
            vsp = 0;
        }
        else if (jump_pressed && djumps == 1 && ammo > 0 && !jump_strong_input){
            jump_strong_input = true;
            set_attack(AT_DAIR);
        }

        can_attack = true;
        can_special = true;
    }

break;

case AT_USTRONG_2:
	reload_delay = 0;
    can_fast_fall = false;
    fall_through = true;



    if (!free) && !(window == 1 && window_timer < 3){
        hsp = hsp * 1.5;
        strong_charge = 0;
        set_state(PS_WAVELAND);
    }


    if (window == 1){
    	

        vsp *= 0.8;
        fall_through = true
        
        if (smash_charging){
        	if (strong_charge == 30){
        	smash_charging = false;
        	window = 2;
        	window_timer = 0;
        	}
        }
        
    }
    else if (window != 2)
    {
    	fall_through = false;
    }

    if (window == 3 && window_timer == 1 && !hitpause){
        hsp = (-10 - (10*strong_charge*uair_launch_rate)) * spr_dir;
        vsp = (4 + (4*strong_charge*uair_launch_rate));

        ammo--;
        reload_delay = 0;
    }

    //air_strong = (free) ? 2 : air_strong;

    if (window >= 3 || window == 1)
        can_move = false;

    if (window == get_attack_value(attack, AG_NUM_WINDOWS)){
        hsp *= 0.7;
        vsp *= 0.7;
    }

    if (window >= 4 || has_hit_player) && !was_parried && !hitpause{
        can_jump = true;
        if (jump_pressed && !joy_pad_idle && djumps == 0){
            hsp = 0;
            vsp = 0;
        }
        else if (jump_pressed && djumps == 1 && move_cooldown[AT_DSTRONG_2] == 0){
            jump_strong_input = true;
            set_attack(AT_DAIR);
        }
    }

break;

case AT_FSTRONG_2:
	reload_delay = 0;
    can_fast_fall = false;

    if (window == 1){
        vsp *= 0.8;
        if (smash_charging){
        	if (strong_charge == 30){
        	smash_charging = false;
        	window = 2;
        	window_timer = 0;
        	}
        }
    }

    if (window == 3 && window_timer == 1 && !hitpause){
        hsp = (-7 - (7*strong_charge*fair_launch_rate)) * spr_dir;

        ammo--;
        reload_delay = 0;

    }

    //air_strong = (free) ? 2 : air_strong;

    if (window >= 3 || window == 1)
        can_move = false;

    // if (window == get_attack_value(attack, AG_NUM_WINDOWS)){
    //     hsp *= 0.9;
    //     vsp *= 0.9;
    // }

    if (window >= 4 || has_hit_player) && !was_parried && !hitpause{
        can_jump = true;
        if (jump_pressed && !joy_pad_idle && djumps == 0){
            hsp = 0;
            vsp = 0;
        }
        else if (jump_pressed && djumps == 1 && move_cooldown[AT_DSTRONG_2] == 0){
            jump_strong_input = true;
            set_attack(AT_DAIR);
        }
    }

break;

case AT_FSPECIAL:
    
    can_fast_fall = false;

    if (fspec_free_start){
    fspec_cd = 2;
    uspec_cd = 2;
    }

    if (window == 1){
        vsp *= 0.8;
        hsp *= 0.8;

        if (window_timer == 1){
            if (free)
            fspec_free_start = true;

            sound_play(asset_get("sfx_forsburn_cape_swipe"));
        }


    }

    if (window == 1 && window_timer == timer_end && !hitpause){
        var tp_fx = spawn_hit_fx( x + (100 * spr_dir), y - 40, tp_slice );
        tp_fx.spr_dir = spr_dir;
    }


    if (window == 2){
        //whiff
        if (!instance_exists(grabbed_player) && window_timer == timer_end){
            window = 6;
            window_timer = 0;
        }
        //sfx
        if (window_timer == 1 && !hitpause){
            sound_play(sound_get("slice"));
        }
        
        
        if (y > get_stage_data( SD_Y_POS )-10 && y < get_stage_data( SD_Y_POS ) + 30 && (collision_line(x, y+3, x + (100 * spr_dir), y+3, asset_get("solid_32_obj"), false, true) != noone) && free){
        	y = get_stage_data( SD_Y_POS );
        	x = x-5*spr_dir;
        }
        
        

    }

    if (window == 3){
        if (grabbed_player.hitpause){
            grabbed_player.x = lerp(grabbed_player.x, x+(20*spr_dir), 0.2);
            grabbed_player.y = lerp(grabbed_player.y, y-30, 0.2);
        }
    }


    if (window == 5 && window_timer == timer_end && has_hit_player){
        if (has_hit_player){
            if (free)
                set_state(PS_IDLE_AIR);
            else
                set_state(PS_IDLE);
        }
        
    }

    if (window == 6){
        if (window_timer == 2){
            hsp = 4 * spr_dir;
        }
    }

    if (window == 7){
        
        if (free && window_timer == timer_end && !has_hit_player && fspec_free_start){
            set_state(PS_PRATFALL);
        }

    }


    if (window > 1){
        can_wall_jump = true;
    }

break;

case AT_USPECIAL:


    if (window == 1){
        if (window_timer == 1){
            sound_play(asset_get("sfx_forsburn_cape_swipe"));
        }
        
        if (window_timer == timer_end/2){
	        if (left_down)
	        	spr_dir = -1;
	        	
	        if (right_down)
	        	spr_dir = 1;
        }
        
    }

    if (window < 5 )
    can_move = false;

    if (window == 2 && window_timer == 1 && !hitpause){
        var tp_fx = spawn_hit_fx( x + (40 * sign(hsp)), y - 110, tp_slice );
        
        }
	
	
    if (window == 3 && window_timer == 6 && !hitpause){
        var x_fx = spawn_hit_fx( x + (30 * spr_dir), y - 80, hkr_slashbg );
        x_fx.spr_dir = -spr_dir;
    }


    if (window == 3 || window == 4){
            vsp *= 0.7;
            hsp *= 0.8;
    }

    if (window == 3 && window_timer == 1){
        invincible = true;
        invince_time = 5;
    }

    if (window == 4){
        can_wall_jump = true;
    }
    
    if (window == 5){
    	if (excited)
    	hsp *= 0.5;
    }


break;


case AT_DSPECIAL:

    can_move = false;

    if (window == 1 && window_timer == 15 && !hitpause){
        sound_play(asset_get("sfx_forsburn_cape_hit"));
    }

    if (window == 2 && window_timer == 1){
        ammo = 3;
        reload_delay = 0;

    }

    move_cooldown[attack] = 20;

    if (free){
        dspec_cd = 2;
    }

break;


case AT_TAUNT_2:

        switch get_player_color(player){
			
		case 7:
			if (window == 1 && window_timer == 1)
			{
				var other_nero_music = false;
				
				with (oPlayer){
					if ("nero_music" in self){
						other_nero_music = nero_music;
					}
				}
				
				
				
			    if(!excited){
				    if (nero_voice)
					sound_play(sound_get("nero_fu"));
					if (nero_voice && tab_is_dummy)
					sound_play(sound_get("nero_fu_exct"));
			    }
				else{
					if (nero_voice)
					sound_play(sound_get("nero_fu_exct"));
					
					if (!nero_music && excitement >= 90 && !other_nero_music){
					sound_play(sound_get("nero_hijack_music"),0,0,1,1);
					sound_play(asset_get("sfx_abyss_explosion"));
					nero_music = true;
					circle_timer = 0;
					}
				}
			}
			
			if (window == 2 && taunt_down){
				if (window_timer == timer_end){
					window_timer = 0;
				}
			}			
			
		break;
		
		case 10:
			if (window == 1 && taunt_down){
				if (window_timer == timer_end){
					window_timer = 45;
				}
				suppress_stage_music(0,0.1);
			}
			
			if (window == 1 && window_timer == 39){
				sound_play(sound_get("mako_hijack_music"),1,0,1,1);
				
			}
			
		break;
		
		case 22:
		
			if (window == 1 && window_timer == timer_end - 5){
				sound_play(sound_get("morbin"),1,0,1,1);
			}
		
			if (window == 2 && taunt_down){
				if (window_timer == timer_end){
					window_timer = 0;
				}
				suppress_stage_music(0.05,0.05);
			}
			
			if (window == 3){
				sound_stop(sound_get("morbin"));
			}
		
		break;	
			
		default:
		
			if (window == 1 && window_timer == timer_end - 5){
				sound_play(asset_get("sfx_absa_8b"),1,0,1,1);
			}
		
			if (window == 2 && taunt_down){
				if (window_timer == timer_end){
					window_timer = 0;
				}
			}
			
			if (window == 3){
				sound_stop(asset_get("sfx_absa_8b"));
			}
		
		break;
			
			
		}


break;

// case AT_EXTRA_1:

// can_move = false;

// if (window_timer == 40){

//     excited = true;

//     ammo = 3;

//     idle_anim_speed = .25;
//     crouch_anim_speed = .25;
//     walk_anim_speed = .3;
//     dash_anim_speed = .3;

//     walk_speed = 5;
//     dash_speed = 8;
//     leave_ground_max = 7;
//     max_jump_hsp = 7;
//     air_max_speed = 7;
//     air_accel = .4;
//     wave_land_adj = 1.5;
//     knockback_adj = 1.25;

//     reload_delay_default = 60 * 1.5;
// }
// if (window_timer < 40){
//     invincible = true;
//     invince_timer = 2;
// }
// else if (window_timer > 70){
//     iasa_script();
// }

// break;


}


//EXCITE CODE 
if (get_window_value(attack, window, AG_HKR_EXCITE) != 0){
    if (window_timer == 1 && !hitpause)
        excitement += get_window_value(attack, window, AG_HKR_EXCITE);
}

//SELF DMG CODE
if (get_window_value(attack, window, AG_HKR_EXCITE_DAMAGE) != 0){
    if (window_timer == 1 && !hitpause){
        if (excited && !no_selfdmg)
        take_damage( player, -1, get_window_value(attack, window, AG_HKR_EXCITE_DAMAGE) );
    }
}



//IASA CODE

if (get_window_value(attack, window, AG_WINDOW_IASA) != 0){
    
    if (get_window_value(attack, window, AG_WINDOW_IASA) == 1){ //ground IASA
        if was_parried
        window_timer = get_window_value(attack, window, AG_WINDOW_LENGTH);
        else
        iasa_script();
    }
    else if (get_window_value(attack, window, AG_WINDOW_IASA) == 2){ //crouching IASA
    
        if was_parried
        window_timer = get_window_value(attack, window, AG_WINDOW_LENGTH);
        
        if (left_down ||
        right_down ||
        taunt_pressed ||
        attack_pressed ||
        special_pressed || 
        shield_pressed ||
        left_strong_pressed ||
        up_strong_pressed ||
        right_strong_pressed ||
        down_strong_pressed ||
        left_stick_pressed ||
        up_stick_pressed ||
        right_stick_pressed ||
        jump_pressed ||
        down_stick_pressed) && !was_parried
        iasa_script();
        

        
        if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !was_parried){
            set_state(PS_CROUCH);
        }
        
    }
    else if (get_window_value(attack, window, AG_WINDOW_IASA) == -1){ //aerial IASA
        if was_parried
        window_timer = get_window_value(attack, window, AG_WINDOW_LENGTH);
        else{
        iasa_script();
        can_fast_fall = true;
            if (!free)
            set_state(PS_LAND);
            
        }
    }
        
}

user_event(13);


tpx_event = 2;
user_event(15);



#define strong_shake()
        if (strong_charge > 5){

            if (anchor_x == 0)
            anchor_x = x;

            if (anchor_y == 0)
            anchor_y = y;

            if (anchor_x > 0)
            x = anchor_x-2 + random_func( 1, 4, true );
        }