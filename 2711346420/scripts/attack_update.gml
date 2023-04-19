//Rune D
if ((attack == AT_JAB && window > 4) || attack == AT_UTILT || attack == AT_BAIR || attack == AT_DAIR || attack == AT_FSTRONG){
	if (has_rune("D")){
		if (has_hit == true){
			can_jump = true;
			can_attack = true;
			can_strong = true;
			can_ustrong = true;
			can_special = true;
		}
	}
}

//Jab
if (attack == AT_JAB){
	if (window == 1 || window == 4){
		clear_button_buffer(PC_ATTACK_PRESSED);
	}
}

//Dattack
if (attack == AT_DATTACK){
	if (window == 1){
		dattack_strong_hit = false;
		
		if (window_timer == 1){
			sound_play(asset_get("sfx_jumpground"), false, noone, 0.8, 1.6);
		}
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x + (10 * spr_dir), y, "dash_start", spr_dir)
			
			//sound_play(asset_get("sfx_spin"), false, noone, 0.8, .5);
		}
		if (has_rune("A")){
			if ((right_down && spr_dir == -1)
			|| (left_down && spr_dir == 1)){
				set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, -10);
				set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED, -8);
				set_window_value(AT_DATTACK, 4, AG_WINDOW_HSPEED, -5);
			} else {
				set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 10);
				set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED, 8);
				set_window_value(AT_DATTACK, 4, AG_WINDOW_HSPEED, 5);
			}
		}
	}
	if (!hitpause && dattack_strong_hit == true && has_rune("A")){
		//can_attack = true;
		can_jump = true;
	}
	if (image_index == 10){
		timer_var_for_dattack++;
		if (timer_var_for_dattack == 1){
			spawn_base_dust( x - (16 * spr_dir), y, "walk", spr_dir);
			sound_play(land_sound);
		}
	} else {
		timer_var_for_dattack = 0;
	}
	if (free){
		set_state(PS_IDLE_AIR);
		hsp *= 1.16;
		if (hsp > 11){
			hsp = 11;
		} else if (hsp < -11){
			hsp = -11;
		}
		spawn_base_dust( x - (12 * spr_dir), y, "dash", spr_dir);
		sound_play(asset_get("sfx_blink_dash"));
	}
}

//Ftilt
if (attack == AT_FTILT){
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-2){
			spawn_base_dust( x + (32 * spr_dir), y, "wavedash", spr_dir * -1);
		}
	}
	if (window == 4){
		if ((has_hit && window_timer == 5)
		|| (!has_hit && window_timer == 8)){
			spawn_base_dust( x + (2 * spr_dir), y, "walk", spr_dir * -1);
			sound_play(land_sound, false, noone, 0.6, 1.2);
		}
	}
}

//Utilt
if (attack == AT_UTILT){
	if ((window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) || window == 2 || (window == 3 && image_index < 4)){
	    hud_offset = 80;
	}
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x - (4 * spr_dir), y, "dash", spr_dir);
			spawn_base_dust( x + (4 * spr_dir), y, "dash", spr_dir*-1);
			sound_play(asset_get("sfx_jumpground"), false, noone, 0.9, 1.2);
		}
	}
	if (window == 3){
		if (has_hit == true){
			if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
				spawn_base_dust( x - (8 * spr_dir), y, "walk", spr_dir);
				spawn_base_dust( x + (8 * spr_dir), y, "walk", spr_dir*-1);
				sound_play(land_sound);
			}
		} else {
			if (window_timer == 12){
				spawn_base_dust( x - (8 * spr_dir), y, "walk", spr_dir);
				spawn_base_dust( x + (8 * spr_dir), y, "walk", spr_dir*-1);
				sound_play(land_sound);
			}
		}
	}
}

//Dtilt
if (attack == AT_DTILT){
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x + (80 * spr_dir), y, "walk", spr_dir * -1);
		}
	}
}

//Getting out of Monkey Ball with Grounded Stuff
if (attack == AT_JAB|| attack == AT_FTILT|| attack == AT_UTILT|| attack == AT_DTILT|| attack == AT_DATTACK|| attack == AT_FSTRONG|| attack == AT_USTRONG|| attack == AT_DSTRONG){
	if (inside_monkey_ball){
		if (window == 1){
			exitMonkeyBall(1,true);
		}
	}
}

//Getting out of Monkey Ball with Aerials
if (attack == AT_NAIR|| attack == AT_FAIR|| attack == AT_UAIR|| attack == AT_DAIR|| attack == AT_BAIR){
	if (inside_monkey_ball){
		if (window == 1){
			exitMonkeyBall(1,true);
		}
	}
}

//Uair
if (attack == AT_UAIR){
	if ((window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) || window == 2){
	    hud_offset = 32;
		timer_var_for_uair = 0;
	}
	if (image_index == 5){
		timer_var_for_uair++;
		if (timer_var_for_uair == 1){
			sound_play(asset_get("sfx_jumpground"), false, noone, 0.2, 1.6);
		}
	} else {
		timer_var_for_uair = 0;
	}
}

//Fstrong
if (attack == AT_FSTRONG){
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			//sound_play(sfx_monkey_ball_banana_mania_fight_charge, false, noone, 2, 1);
			//sound_play(land_sound)
			spawn_base_dust( x - (16 * spr_dir), y, "walk", spr_dir)
		}
	}
	if (window == 3){
		if (window_timer == 1){
			spawn_base_dust( x - (18 * spr_dir), y, "walk", spr_dir)
			//sound_play(asset_get("sfx_jumpground"), false, noone, 0.8, 1.6);
		}
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x + (26 * spr_dir), y, "walk", spr_dir)
			sound_play(land_sound, false, noone, 0.6, 1.2);
			sound_stop(sfx_monkey_ball_banana_mania_fight_charge);
		}
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-2){
			sound_play(asset_get("sfx_swipe_heavy2"));
			spawn_base_dust( x - (4 * spr_dir), y, "dash_start", spr_dir)
		}
	}
}

//Ustrong
if (attack == AT_USTRONG){
	if (window == 1){
		if (window_timer == 1){
			sound_play(asset_get("sfx_forsburn_cape_swipe"), false, noone, 1, 1);
			spawn_base_dust( x - (16 * spr_dir), y, "walk", spr_dir)
			spawn_base_dust( x + (16 * spr_dir), y, "walk", spr_dir*-1)
		}
	}
	if (window == 2){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 2){
			spawn_base_dust( x + (12 * spr_dir), y, "dash_start", spr_dir*-1)
		}
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x - (0 * spr_dir), y, "jump", spr_dir)
		}
	}
	if (window != 4){
		ustrong_land_timer_idk = 0;
	}
	if (window == 4){
		if (image_index == 10){
			ustrong_land_timer_idk++;
			if (ustrong_land_timer_idk == 1){
				spawn_base_dust( x - (16 * spr_dir), y, "walk", spr_dir)
				spawn_base_dust( x + (16 * spr_dir), y, "walk", spr_dir*-1)
				sound_play(land_sound);
			}
		}
	}
	if ((window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) || (window == 3 || (window == 4 && image_index < 8))){
	    hud_offset = 60;
	}
}

//Dstrong
if (attack == AT_DSTRONG){
	if (window == 1){
		if (window_timer == 1){
			sound_play(asset_get("sfx_forsburn_cape_swipe"), false, noone, 1, 1);
		}
	}
	if (window == 2){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-2){
			spawn_base_dust( x + (30* spr_dir), y, "dash_start", spr_dir*-1)
		}
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-1){
			sound_play(asset_get("sfx_jumpground"), false, noone, 0.6, 1.6);
		}
	}
	if (window == 4){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-2){
			spawn_base_dust( x - (30 * spr_dir), y, "dash_start", spr_dir)
		}
	}
	if (window != 6){
		ustrong_land_timer_idk = 0;
	}
	if (window == 6){
		if (image_index == 14){
			ustrong_land_timer_idk++;
			if (ustrong_land_timer_idk == 1){
				spawn_base_dust( x - (16 * spr_dir), y, "walk", spr_dir)
				spawn_base_dust( x + (16 * spr_dir), y, "walk", spr_dir*-1)
				sound_play(land_sound);
			}
		}
	}
}

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//Nspecial

if (attack != AT_NSPECIAL){
	nspecial_kick_startup = false;
	nspecial_rot_timer_why = 0;
}

if (attack == AT_NSPECIAL){
	hurtboxID.sprite_index = sprite_get("aiai_hurtbox");
	if (window == 1){
		if (window_timer < 2){
			nspecial_rot_timer_why++;
			if (nspecial_rot_timer_why == 1){
				rot_from_nspec = monkey_ball_tilt;
				//print("a: " + string(monkey_ball_tilt))
			}
			if (!free){
				nspecial_started_on_ground = true;
			}
			if (!inside_monkey_ball && !instance_exists(monkeyBall) && nspecial_kick_startup == false){
				nspecial_kick_startup = true;
				exitMonkeyBall(5,true);
				nspecial_started_in_ball = false;
				sound_play(sfx_monkey_ball_2_ball_open);
			} else if (inside_monkey_ball && !instance_exists(monkeyBall) && nspecial_kick_startup == false){
				nspecial_started_in_ball = true;
				inside_monkey_ball = false;
				monkey_ball_tilt = 0;
				monkey_ball_tilt_counter = 0;
				nspecial_kick_startup = true;
				exitMonkeyBall(5,true);
				//sound_play(sfx_monkey_ball_2_ball_open);
			}
		}
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x - (8 * spr_dir), y, "dash", spr_dir)
			if (!free && nspecial_started_on_ground == true){
				vsp = -3.5;
				hsp = 2.1 * spr_dir;
			}
			if (instance_exists(monkeyBall)){
				monkeyBall.monkeyBall_need_to_switch_to_state0 = true;
				nspecial_kick_startup = false;
				monkey_ball_onstage = true;
			}
			move_cooldown[AT_NSPECIAL] = 20;
		}
	}
	if (window > 1){
		nspecial_started_on_ground = false;
		if (!free){
			set_state(PS_LAND);
		}
	}
}

//Fspecial
if (attack != AT_FSPECIAL){
	fspecial_startup = false;
	current_monkeyball_spr = sprite_get("monkey_ball")
	current_monkeyball_front_spr = sprite_get("monkey_ball_front")
}
if (attack == AT_FSPECIAL){
	can_wall_jump = true;
	
	//rune
	if (has_rune("K")){
		if (window == 3){
			super_armor = true;
		} else {
			super_armor = false;
		}
	}
	
	if (window == 1){
		if (!instance_exists(monkeyBall) && !inside_monkey_ball){
			fspecial_startup = true;
		} else if (!instance_exists(monkeyBall) && inside_monkey_ball){
			fspecial_startup = false;
		}
		if (instance_exists(monkeyBall)){
			//old "get the ball back to me" code
			/*
			monkey_ball_onstage = false;
			spawn_hit_fx(monkeyBall.x,monkeyBall.y,304);
			instance_destroy(monkeyBall);
			sound_play(sfx_monkey_ball_2_pop);
			fspecial_startup = true;
			*/
			if (monkey_ball_can_be_rode == false){
				if (!has_rune("E")){
					set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 50);
					set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 50);
					set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 2);
					set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 5);
					set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 75);
					set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 5);
					set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, .7);
					set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 7);
					set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, .5);
				} else if (has_rune("E")){//rune
					enterMonkeyBall(4);
					monkey_ball_onstage = false;
					inside_monkey_ball = true;
					//spawn_hit_fx(monkeyBall.x,monkeyBall.y,304);
					monkey_ball_tilt = monkeyBall.cur_rot/1.25
					instance_destroy(monkeyBall);
					sound_play(sfx_monkey_ball_2_pop);
					monkey_ball_can_be_rode = false;
				}
			} else if (monkey_ball_can_be_rode == true){
				enterMonkeyBall(4);
				monkey_ball_onstage = false;
				inside_monkey_ball = true;
				//spawn_hit_fx(monkeyBall.x,monkeyBall.y,304);
				monkey_ball_tilt = monkeyBall.cur_rot/1.25
				instance_destroy(monkeyBall);
				sound_play(sfx_monkey_ball_2_pop);
				monkey_ball_can_be_rode = false;
			}
		}
		switch (image_index){
			case 0:
				fspecial_draw_timer = 16;
				break;
			case 1:
				fspecial_draw_timer = 0;
				break;
			case 2:
				fspecial_draw_timer = 1;
				break;
			case 3:
				fspecial_draw_timer = 2;
				break;
		}
		//get in ball if not already
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			if (fspecial_startup == true){
				enterMonkeyBall(2)
				//sound_stop(sfx_monkey_ball_2_ball_open);
			} else if (fspecial_startup == false){
				//enterMonkeyBall(2)
				sound_stop(sfx_monkey_ball_2_ball_open);
			}
			if (inside_monkey_ball){
				monkey_ball_tilt_counter += 50*spr_dir
				monkey_ball_tilt = monkey_ball_tilt + ((50 * monkey_ball_tilt_counter) * monkey_ball_spin_mult)
			}
			spawn_base_dust( x - (12 * spr_dir), y, "dash", spr_dir)
			spawn_base_dust( x + (20 * spr_dir), y, "walk", spr_dir * -1)
        }
	}
    if (window == 2){
        if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_play(asset_get("sfx_blink_dash"));
			sound_play(asset_get("sfx_spin"));
			spawn_base_dust( x - (12 * spr_dir), y, "dash_start", spr_dir)
			if (free){
				spawn_base_dust( x - (0 * spr_dir), y, "doublejump", spr_dir)
			} else if (!free){
				spawn_base_dust( x - (0 * spr_dir), y, "land", spr_dir)
			}
			fspecial_draw_timer = 16;
			fspecial_startup = false;
			current_monkeyball_spr = sprite_get("monkey_ball_spin")
			current_monkeyball_front_spr = sprite_get("monkey_ball_front_spin")
        } else {
			if (inside_monkey_ball){
				fspecial_draw_timer = 3;
				fspecial_startup = true;
			}
		}
		if (inside_monkey_ball){
			set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 80);
			set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 80);
			set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 2);
			set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 7);
			set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 75);
			set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
			set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, .7);
			set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 10);
			set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, .6);
			
			if (up_down || up_stick_down){ //up
				set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, 7);
				set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 2);
				set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED, -8);
				set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 2);
			} else { //default
				set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, 9.5);
				set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 2);
				set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED, -4.5);
				set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 2);
			}
		} else if (!inside_monkey_ball){//weakened
			if (up_down || up_stick_down){ //up
				set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, 6);
				set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 2);
				set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED, -6.5);
				set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 2);
			} else { //default
				set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, 8.25);
				set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 2);
				set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED, -4);
				set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 2);
			}
		}
    }
	if (window == 3 || window == 4){
		if (window == 3){
			if (!hitpause){
				//
			}
		}
		if (window == 4){
			current_monkeyball_spr = sprite_get("monkey_ball")
			current_monkeyball_front_spr = sprite_get("monkey_ball_front")
		}
		if (window_timer > 1){
			if (!free || place_meeting(x+spr_dir,y,asset_get("par_block"))){
				if (inside_monkey_ball){
					sound_play(sfx_monkey_ball_2_ball_bounce)
					move_cooldown[AT_FSPECIAL] = 45;
					monkey_ball_tilt_counter = 15*spr_dir
					monkey_ball_tilt = monkey_ball_tilt + ((10 * monkey_ball_tilt_counter) * monkey_ball_spin_mult)
					current_monkeyball_spr = sprite_get("monkey_ball")
					current_monkeyball_front_spr = sprite_get("monkey_ball_front")
					if (!free){
						spawn_base_dust( x - (0 * spr_dir), y, "land", spr_dir)
						hsp *= 0.74
						vsp = -3.85
					} else if (place_meeting(x+spr_dir,y,asset_get("par_block"))){
						spawn_base_dust( x + (22 * spr_dir), y, "walljump", spr_dir*-1)
						hsp = -3.5*spr_dir
						vsp = -4.5
						monkey_ball_tilt_counter *= -1;
					}
				} else {
					if (!free){
						spawn_base_dust( x - (0 * spr_dir), y, "land", spr_dir)
						hsp *= 0.4
						set_state(PS_PRATLAND);
					}
				}
				window = 5;
				window_timer = 0;
				destroy_hitboxes();
				
			}
		}
	}
	if (window == 4 || window == 5){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && inside_monkey_ball){
			if (monkey_ball_tilt_counter > 15 || monkey_ball_tilt_counter < -15){
				if (monkey_ball_tilt_counter > 15){
					monkey_ball_tilt_counter = 5;
				} else if (monkey_ball_tilt_counter < -15){
					monkey_ball_tilt_counter = -5;
				}
			}	
		}
		move_cooldown[AT_FSPECIAL] = 45;
	}
    can_fast_fall = false;
}


//Uspecial

if (attack != AT_USPECIAL){
	uspec_past_window_1 = false;
	uspecial_rune_grabbed_ball = false;
}

if (attack == AT_USPECIAL){
	can_fast_fall = false;
	uspec_img_indx = image_index;
	
	//rune
	if (has_rune("K")){
		if (window == 2 || window == 3){
			super_armor = true;
		} else {
			super_armor = false;
		}
	}
	
	if (window == 1){
		//uspecial_can_glide = true;
		uspec_past_window_1 = false;
		if (window_timer == 1){
			if (inside_monkey_ball){
				uspecial_rune_grabbed_ball = false;
				if (instance_exists(monkeyBall)){
					uspec_ball_onstage = true;
				} else {
					uspec_ball_onstage = false;
				}
			} else if (!inside_monkey_ball){
				if (monkey_ball_can_be_rode == false){
					if (instance_exists(monkeyBall)){
						if (!has_rune("E")){
							uspec_ball_onstage = true;
							/*
							enterMonkeyBall(4);
							monkey_ball_onstage = false;
							spawn_hit_fx(monkeyBall.x,monkeyBall.y,304);
							instance_destroy(monkeyBall);
							sound_play(sfx_monkey_ball_2_pop);
							*/
							
							//worsened verions
							//ball is onstage and aiai is not in it
							//oh and he also doesnt have rune E
							
							set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
							set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
							set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 2);
							set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 0);
							set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -38);
							set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 44);
							set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 64);
							set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 0);
							set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
							set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 7);
							set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 90);
							set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 8);
							set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0.6);
							set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 7);
							set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, 0.6);
							set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 302);
							set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
							set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 0);
							set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, 1);

							set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
							set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 3);
							set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 16);
							set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 0);
							set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -38);
							set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 44);
							set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 64);
							set_hitbox_value(AT_USPECIAL, 2, HG_SHAPE, 0);
							set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 1);
							set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 4);
							set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 80);
							set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 7);
							set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, 0.5);
							set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 6);
							set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 302);
							set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
							set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE_FLIPPER, 0);
							set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, 1);
							
							set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -10.5);
							set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 2);
							
							set_window_value(AT_USPECIAL, 4, AG_WINDOW_SFX_FRAME, 40);
							
							hurtboxID.sprite_index = sprite_get("uspecial_hurt");
						} else if (has_rune("E")){
							enterMonkeyBall(4);
							monkey_ball_onstage = false;
							inside_monkey_ball = true;
							//spawn_hit_fx(monkeyBall.x,monkeyBall.y,304);
							monkey_ball_tilt = monkeyBall.cur_rot/1.25
							instance_destroy(monkeyBall);
							sound_play(sfx_monkey_ball_2_pop);
							monkey_ball_can_be_rode = false;
							hurtboxID.sprite_index = sprite_get("uspecial_hurt_inside");
						}
						
					} else {//ball isnt onstage and aiai is not in it
						uspec_ball_onstage = true;
						inside_monkey_ball = true;
						
						set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -12.5);
						set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 2);
						
						set_window_value(AT_USPECIAL, 4, AG_WINDOW_SFX_FRAME, 4);
						
						hurtboxID.sprite_index = sprite_get("uspecial_hurt_getin");
					}
				} else if (monkey_ball_can_be_rode == true && instance_exists(monkeyBall)){
					enterMonkeyBall(4);
					monkey_ball_onstage = false;
					inside_monkey_ball = true;
					//spawn_hit_fx(monkeyBall.x,monkeyBall.y,304);
					monkey_ball_tilt = monkeyBall.cur_rot/1.25
					instance_destroy(monkeyBall);
					sound_play(sfx_monkey_ball_2_pop);
					monkey_ball_can_be_rode = false;
					hurtboxID.sprite_index = sprite_get("uspecial_hurt_inside");
					uspecial_rune_grabbed_ball = true;
				}
			}
		}
		hsp *= 0.995
		if (vsp < 0){
			vsp *= 0.995
		} else {
			vsp *= 0.5
		}
		if (uspec_ball_onstage){
			monkey_ball_tilt *= 0.15
		}
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x - (0 * spr_dir), y, "jump", spr_dir)
		}
	}
	if (has_rune("E")){
		if (hurtboxID.sprite_index = sprite_get("uspecial_hurt")){
			if (uspecial_rune_grabbed_ball == true){
				hurtboxID.sprite_index = sprite_get("uspecial_hurt_getin");
			} else if (uspecial_rune_grabbed_ball == false){
				hurtboxID.sprite_index = sprite_get("uspecial_hurt_inside");
			}
		}
	}
	if (window > 1){
		//inside_monkey_ball = true;
		uspec_ball_onstage = false;
		uspec_past_window_1 = true;
	}
	
	if (window == 3 && !hitpause){
		can_move = true;
		if (window_timer == 1
		|| window_timer == 3
		|| window_timer == 5
		|| window_timer == 7
		|| window_timer == 9
		|| window_timer == 11
		|| window_timer == 13
		|| window_timer == 15){
			spawn_base_dust( x - (12 * spr_dir), y, "dash", spr_dir)
			spawn_base_dust( x + (12 * spr_dir), y, "dash", spr_dir*-1)
		}
	}
	
	//reset value changes
	if (inside_monkey_ball){
		set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
		set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 2);
		set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 0);
		set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -36);
		set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 80);
		set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 80);
		set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 0);
		set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
		set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 10);
		set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 90);
		set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 9);
		set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0.6);
		set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 10);
		set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, 0.6);
		set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 304);
		set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
		set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 0);
		set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, 1);

		set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 3);
		set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 16);
		set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 0);
		set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -36);
		set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 80);
		set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 80);
		set_hitbox_value(AT_USPECIAL, 2, HG_SHAPE, 0);
		set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 1);
		set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 4);
		set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 80);
		set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 7);
		set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, 0.5);
		set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 6);
		set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 302);
		set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
		set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE_FLIPPER, 0);
		set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, 1);
	}
	
	if (window == 4){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			if (uspecial_can_glide){
				vsp = -5.5
				spawn_base_dust( x - (0 * spr_dir), y, "doublejump", spr_dir)
				spawn_base_dust( x - (18 * spr_dir), y-22, "walk", spr_dir)
				spawn_base_dust( x + (18 * spr_dir), y-22, "walk", spr_dir * -1)
				spawn_base_dust( x - (34 * spr_dir), y-22, "dash_start", spr_dir)
				spawn_base_dust( x + (34 * spr_dir), y-22, "dash_start", spr_dir * -1)
			} else if (uspecial_can_glide == false || inside_monkey_ball == false){
				window = 7;
				window_timer = get_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH);
				sound_play(sfx_monkey_ball_2_ball_close, false, noone, 1, 1);
			}
		}
	}
	
	//glide coding
	if (window == 6){
		can_wall_jump = true;
		hsp = clamp(hsp,-5.5,5.5)
		vsp = clamp(vsp,-5,1.5)
		if (!free){
			sound_play(land_sound);
			set_state(PS_LAND);
		}
		if (shield_pressed){
			//sound_play(sfx_monkey_ball_2_ball_open, false, noone, 0.7, 1.6);
			//sound_play(sfx_monkey_ball_2_ball_bounce, false, noone, 0.7, 1.6);
			sound_play(asset_get("sfx_forsburn_cape_swipe"), false, noone, 1, 1);
			sound_play(sfx_monkey_ball_2_ball_close, false, noone, 1, 1);
			window = 7;
			window_timer = 0;
			monkey_ball_tilt = -25*spr_dir
		}
	}
}

//Dspecial
if (attack != AT_DSPECIAL){
	dspecial_startup = false;
	dspecial_exit_startup = false;
}
if (attack == AT_DSPECIAL){
	//setting up
	if (window == 1){
		dspecial_rune_did_explode = false;
		if (!instance_exists(monkeyBall) && !inside_monkey_ball){
			dspecial_startup = true;
			dspecial_exit_startup = false;
			monkey_ball_tilt = 0;
		} else if (instance_exists(monkeyBall) || inside_monkey_ball){
			dspecial_startup = false;
			dspecial_exit_startup = false;
			monkey_ball_tilt *= 0.5
		}
		if (!inside_monkey_ball && !instance_exists(monkeyBall)){
			if (window_timer < 2){
				dspecial_draw_timer = 0;
			} else if (window_timer >= 2 && window_timer < 4){
				dspecial_draw_timer = 1;
			} else if (window_timer >= 4){
				dspecial_draw_timer = 2;
			} else {
				dspecial_draw_timer = 16;
			}
		}
	}
	if (window > 1){
		dspecial_startup = false;
	}
	if (window < 3){//>
		dspecial_exit_startup = false;
	}
	if (window != 2){
		dspecial_rune_timer = 0;
	}
	// monkey ball shenanegans
    if (window == 2){
		if (!inside_monkey_ball){
			if (!instance_exists(monkeyBall)){
				enterMonkeyBall(1);
				hurtboxID.sprite_index = sprite_get("monkey_ball_hurt");
			} else if (instance_exists(monkeyBall)){
				if (monkey_ball_can_be_rode == true && monkeyBall.monkey_ball_hit_cooldown == 0){
					//print("going in");
					monkey_ball_tilt = monkeyBall.cur_rot/1.25
					enterMonkeyBall(3);
					
				} else if (monkey_ball_can_be_rode == false && has_rune("C")){
					dspecial_startup = false;
					dspecial_exit_startup = false;
					dspecial_rune_did_explode = true;
					dspecial_rune_timer++;
					if (dspecial_rune_timer == 1){
						create_hitbox(AT_DSPECIAL, 2, monkeyBall.x, monkeyBall.y);
						spawn_hit_fx(monkeyBall.x,monkeyBall.y+12,143);
						monkeyBall.should_explode = true;
						move_cooldown[AT_DSPECIAL] = 20;
						window = 3;
						window_timer = 0;
						clear_button_buffer(PC_SPECIAL_PRESSED);
					}
				}
			}
		} else if (inside_monkey_ball){
			if (special_down){//Place ball down
				exitMonkeyBall(3,true);
				hurtboxID.sprite_index = sprite_get("aiai_hurtbox");
			} else {//Remove Monkey Ball from playing field
				exitMonkeyBall(3,false);
				hurtboxID.sprite_index = sprite_get("aiai_hurtbox");
				monkey_ball_tilt = 0;
				monkey_ball_tilt_counter = 0;
			}
		}
    }
	if (window == 3){
		dspecial_exit_startup = true;
		if (dspecial_rune_did_explode == false){
			if (!inside_monkey_ball && !instance_exists(monkeyBall)){
				if (window_timer < 2){
					dspecial_drawexit_timer = 2;
				} else if (window_timer >= 2 && window_timer < 4){
					dspecial_drawexit_timer = 1;
				} else if (window_timer >= 4  && window_timer < 7){
					dspecial_drawexit_timer = 0;
				} else {
					dspecial_drawexit_timer = 16;
				}
			} else {
				dspecial_drawexit_timer = 16;
			}
		} else if (dspecial_rune_did_explode == true){
			dspecial_drawexit_timer = 16;
		}
	}
	if (inside_monkey_ball){
		hurtboxID.sprite_index = sprite_get("monkey_ball_hurt");
	} else if (!inside_monkey_ball){
		hurtboxID.sprite_index = sprite_get("aiai_hurtbox");
	}
}

if (attack == AT_TAUNT){
	if (window == 1 || window == 2){
		if (window_timer == 1 || window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x - (12 * spr_dir), y, "walk", spr_dir * 1)
			spawn_base_dust( x + (12 * spr_dir), y, "walk", spr_dir * -1)
		}
	}
	if (window == 3){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x - (12 * spr_dir), y, "dash", spr_dir)
			spawn_base_dust( x + (12 * spr_dir), y, "dash", spr_dir * -1)
			//sound_play(vc_aiai_cheer_1);
		}
	}
	if (window == 5){
		if (taunt_down){
			if (window_timer > 8){
				window_timer = 8;
			}
		}
	}
}

//--------------------------------------------
//Entering Monkey Ball Function
#define enterMonkeyBall(type)
if (monkey_ball_onstage == false){
	if (type == 1){
		//nspec
		inside_monkey_ball = true;
		window = 3
		window_timer = 0
		sound_play(sfx_monkey_ball_2_ball_open);
	} else if (type == 2){
		//getting into the ball from an attack, like fspec or uspec
		inside_monkey_ball = true;
		sound_play(sfx_monkey_ball_2_ball_open);
	}
} else if (monkey_ball_onstage == true){//i hate coding
	if (type == 3){
		//getting into the ball by holding nspecial when next to it. copies ball vsp and what not.
		monkey_ball_onstage = false;
		vsp = monkeyBall.vsp*0.5
		hsp = monkeyBall.hsp
		monkey_ball_tilt = monkeyBall.cur_rot/1.25
		//print(monkeyBall.cur_rot/1.25)
		/*
		with (monkeyBall){
			player_id.hsp = hsp
			player_id.vsp = vsp
			player_id.monkey_ball_onstage = false;
			player_id.monkeyBall = noone;
			instance_destroy();
		}
		*/
		monkeyBall.monkey_ball_hit_cooldown = 0;
		instance_destroy(monkeyBall);
		inside_monkey_ball = true;
		window = 3
		window_timer = 0
		sound_play(sfx_monkey_ball_2_ball_open);
	}
	if (type == 4){
		//specials
		monkey_ball_onstage = false;
		spawn_hit_fx(monkeyBall.x,monkeyBall.y,304);
		/*
		with (monkeyBall){
			player_id.hsp = hsp
			player_id.vsp = vsp
			player_id.monkey_ball_onstage = false;
			player_id.monkeyBall = noone;
			instance_destroy();
		}
		*/
		monkeyBall.monkey_ball_hit_cooldown = 0;
		instance_destroy(monkeyBall);
		inside_monkey_ball = true;
		sound_play(sfx_monkey_ball_2_pop);
	}
	if (type == 5){
		//specials
		monkey_ball_onstage = false;
		//spawn_hit_fx(monkeyBall.x,monkeyBall.y,304);
		/*
		with (monkeyBall){
			player_id.hsp = hsp
			player_id.vsp = vsp
			player_id.monkey_ball_onstage = false;
			player_id.monkeyBall = noone;
			instance_destroy();
		}
		*/
		monkeyBall.monkey_ball_hit_cooldown = 0;
		instance_destroy(monkeyBall);
		inside_monkey_ball = true;
		//sound_play(sfx_monkey_ball_2_pop);
	}
}
//--------------------------------------------
//Exiting Monkey Ball Function
#define exitMonkeyBall(type,spawn)
if (type == 1){
	//passive (like from attacks)
	inside_monkey_ball = false;
	sound_play(sfx_monkey_ball_2_ball_close, false, noone, 1, 1);
} else if (type == 2){
	//passive but dont spawn ball
	inside_monkey_ball = false;
	window = 3
	window_timer = 0
	sound_play(sfx_monkey_ball_2_ball_close, false, noone, 1, 1);
} else if (type == 3){
	//nspec
	inside_monkey_ball = false;
	window = 3
	window_timer = 0
	sound_play(sfx_monkey_ball_2_ball_close, false, noone, 1, 1);
}
if(spawn == true && monkey_ball_onstage == false && type != 5){
	if (free){
		monkey_ball_spawn_y_offset = 10;
	} else {
		monkey_ball_spawn_y_offset = 30;
	}
	if (attack == AT_JAB || attack == AT_FTILT || attack == AT_DTILT || attack == AT_DATTACK || attack == AT_FSTRONG){
		monkeyBall = instance_create(x - 36 * spr_dir, y - monkey_ball_spawn_y_offset - 8, "obj_article1");
	} else {
		monkeyBall = instance_create(x - 2 * spr_dir, y - monkey_ball_spawn_y_offset, "obj_article1");
	}
	monkeyBall.cur_rot = monkey_ball_tilt*1.25
	monkey_ball_tilt = 0;
	monkey_ball_tilt_counter = 0;
	monkey_ball_onstage = true;
	x = x + (6 * spr_dir)
	if (free){
		y = y - 8
		vsp = -4.5
	}
}
if (spawn == true && type == 5){//Nspecial Kick
	if (free){
		monkey_ball_spawn_y_offset = 10;
	} else {
		monkey_ball_spawn_y_offset = 30;
	}
	monkeyBall = instance_create(x + 50 * spr_dir, y - monkey_ball_spawn_y_offset, "obj_article1");
	monkeyBall.state = 1
	monkeyBall.state_timer = 0;
	monkeyBall.rot_from_nspec = rot_from_nspec*1.25;
}

//--------------------------------------------

//Supersonic's Base Cast Dust Function
#define spawn_base_dust
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

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