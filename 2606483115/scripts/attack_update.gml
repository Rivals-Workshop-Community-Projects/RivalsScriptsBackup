 //B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//Jab 2 Cancel

if(attack == AT_JAB){
	if(window == 6 && has_hit_player){
		can_jump = true
		can_attack = true
		can_shield = true
		can_strong = true
		can_ustrong = true
		can_special = true
		if(left_pressed || left_down || right_down || right_pressed){
			set_state(PS_IDLE)
		}
	}
}

//Nair Stuff
if(attack == AT_NAIR){
	if(window == 1){
		set_attack_value(AT_NAIR, AG_LANDING_LAG, 5);
	}
	if(window == 3){
		if(window_timer > 3){
			if(attack_pressed){
				window = 5
				window_timer = 0
				old_vsp = 9
				vsp = 9
				hsp /= 1.5
			}
		}
	}
	if(window == 4){
		if(window_timer >= 4){
			if(!was_parried){
				set_state(PS_IDLE_AIR)
			}else{
				set_state(PS_PRATFALL)
			}
		}
	}
	if(window == 5){
		if(window_timer == 4 && hitpause == false){
			sound_play(sfx_steam3)
			spawn_hit_fx(x, y - 106, vfx_nair_boost)
		}
		set_attack_value(AT_NAIR, AG_LANDING_LAG, 15);
		if(!free && !hitpause){
			sound_play(asset_get("sfx_kragg_rock_shatter"))
			spawn_hit_fx(x, y - 73, vfx_nair_slam)
			shake_camera( 8, 4)
			create_hitbox(AT_NAIR, 5, x, y - 10)
		}
	}
}

//dattack hitbox
if(attack == AT_DATTACK){
	if(window == 3){
		if(window_timer == 5){
			spawn_hit_fx(x, y - 90, vfx_nair_boost)
		}
	}
	if(window == 2){
		if(window_timer == 1 ||
			window_timer == 5 ||
			window_timer == 9 ||
			window_timer == 13){
			spawn_hit_fx(x - 10 * spr_dir, y - (10 + random_func(1, 20, true)), vfx_steam_small)
		}
		if(window_timer == 3 ||
			window_timer == 7 ||
			window_timer == 11 ||
			window_timer == 15){
			spawn_hit_fx(x - 10 * spr_dir, y - (10 + random_func(3, 20, true)), vfx_steam_medium)
		}
	}
}
//Move FX
if(attack == AT_DTILT){
	if(window == 1 && window_timer == 7){
		spawn_hit_fx(x - 75*spr_dir, y - (20 + random_func(1, 20, true)), vfx_steam_small)
		spawn_hit_fx(x - 25*spr_dir, y - (10 + random_func(2, 20, true)), vfx_steam_large)
		spawn_hit_fx(x - 50*spr_dir, y - (30 + random_func(3, 20, true)), vfx_steam_medium)
	}
}

if(attack == AT_FAIR){
	if(window == 2 && window_timer == 1){
		spawn_hit_fx(x + 80*spr_dir, y - 30, vfx_fair_oomph)
	}
}

if(attack == AT_BAIR){
	if(window == 2 && window_timer == 1){
		spawn_hit_fx(x + 85*spr_dir, y - 30, vfx_steam_blast_bair)
	}
}

if(attack == AT_DAIR){
	if(window == 2){
		if(window_timer == 1 ||
			window_timer == 5 ||
			window_timer == 9 ||
			window_timer == 13 ||
			window_timer == 17 ||
			window_timer == 21){
			spawn_hit_fx(x + (25 - random_func(1, 50, true)) * spr_dir, y - (10 + random_func(1, 20, true)), vfx_steam_small)
		}
		if(window_timer == 3 ||
			window_timer == 7 ||
			window_timer == 11 ||
			window_timer == 15 ||
			window_timer == 19){
			spawn_hit_fx(x + ( 25 - random_func(1, 50, true)) * spr_dir, y - (10 + random_func(3, 20, true)), vfx_steam_medium)
		}
	}
}

//Dattack Grab
if (attack == AT_DATTACK && state == PS_ATTACK_GROUND){
    if (window > 1 && grabbedid != noone){
		grabbedid.ungrab = 0;
        //grabbedid.visible = false; //UNCOMMENT THIS LINE TO MAKE THE GRABBED PLAYER INVISIBLE
        if(window == 2 || window == 3 && window_timer < 4){
		    grabbedid.x = lerp(grabbedid.x, x + 12*spr_dir, 0.2); //SET GRABBED PLAYER X TO BE RELATIVE TO PLAYER X
			grabbedid.y = lerp(grabbedid.y, y - 10, 0.1); //SET GRABBED PLAYER Y TO BE RELATIVE TO PLAYER Y
        }
        grabbedid.wrap_time = 6000;
        grabbedid.state = PS_WRAPPED;
        if(window == 3 && window_timer == 5){ //REPLACE THIS IF CONDITION WITH WHAT YOU WANT TO RELEASE THE GRAB
            grabbedid.ungrab = 1
            grabbedid.state = PS_TUMBLE;
            grabbedid = noone;
        }
    }
}

//Ustrong Grab
if (attack == AT_USTRONG && state == PS_ATTACK_GROUND){
    if (window > 1 && grabbedid != noone){
		grabbedid.ungrab = 0;
        //grabbedid.visible = false; //UNCOMMENT THIS LINE TO MAKE THE GRABBED PLAYER INVISIBLE
        if(window == 2 && window_timer < 28){
		    grabbedid.x = lerp(grabbedid.x, x, 0.2); //SET GRABBED PLAYER X TO BE RELATIVE TO PLAYER X
        }
        grabbedid.state = PS_HITSTUN;
        if(window == 3 || window == 2 && window_timer >= 28){ //REPLACE THIS IF CONDITION WITH WHAT YOU WANT TO RELEASE THE GRAB
            grabbedid.ungrab = 1
            grabbedid.state = PS_TUMBLE;
            grabbedid = noone;
        }
    }
}

//Ustrong SFX
if(attack == AT_USTRONG){
	if(window == 2 && window_timer == 1){
		sound_play(sound_get("sfx_steam_whistle1"))
		steam = 0
	}
	if(window == 2 && window_timer == 28){
		sound_play(sound_get("sfx_steam_whistle2"))
	}
}

//Char Height stuff
if(attack == AT_DSTRONG){
	if(window == 1){
		char_height = lerp(char_height, 62, 0.3)
	}else{
		char_height = lerp(char_height, 52, 0.3)
	}
	if(window == 2){
		if(window_timer == 1 && hitpause == false){
			steam -= 50
		}
	}
}else if(attack == AT_FSTRONG){
	if(window == 1){
		char_height = lerp(char_height, 62, 0.3)
	}else{
		char_height = lerp(char_height, 52, 0.3)
	}
}else if(attack == AT_USPECIAL){
	if(window == 2){
		char_height = lerp(char_height, 40, 0.3)
	}else{
		char_height = lerp(char_height, 52, 0.3)
	}
}else if (attack == AT_TAUNT_2){
		if(window == 2 || window == 3){
			char_height = lerp(char_height, 102, 0.3)
		}else{
			char_height = lerp(char_height, 52, 0.3)
		}
}else if(attack == AT_TAUNT){
	if(!masked){
		if(window < 4){
			char_height = lerp(char_height, 80, 0.3)
		}else{
			char_height = lerp(char_height, 52, 0.3)
		}
	}else{
		if(window < 5 && window > 1){
			char_height = lerp(char_height, 80, 0.4)
		}else if(window == 1){
			char_height = lerp(char_height, 40, 0.3)
		}else{
			char_height = lerp(char_height, 52, 0.3)
		}
	}
}else if (attack == AT_UAIR){
	if(window == 1 && window_timer > 6 || window == 2 && window_timer < 7){
		char_height = lerp(char_height, 90, 0.3)
	}else{
		char_height = lerp(char_height, 52, 0.3)
	}
}else{
	char_height = lerp(char_height, 52, 0.3)
}


//Fstrong Steam Wall
if(attack == AT_FSTRONG){
	if(window == 1){
		steam_wall_dismiss = false
		if(!instance_exists(steam_wall) && steam_wall_timer <= 0 || steam_wall == noone && steam_wall_timer <= 0){
			length = floor(state_timer / 6)
			full_length = floor(state_timer / 6)
			wall_dir = spr_dir
		}
	}
	if(window == 2 && window_timer == 1){
		shake_camera( 6, 4)
		if(!instance_exists(steam_wall) && steam_wall_timer <= 0 || steam_wall == noone && steam_wall_timer <= 0){
			steam_wall = instance_create(x + 70*spr_dir, y - 47, "obj_article2")
			steam_wall.length = length
			steam_wall_no_down = 10
		}
	} 
}

//Nspecial Stuff
if(attack == AT_NSPECIAL){
	steam_break_timer = 20
	if(window == 1  && window_timer <= 7){
		invincible = true
	}
	if(window == 1 && window_timer == 1){
		steam -= 50
		if(vsp > -3){
			if(free){
				vsp = -3
			}
		}
		if(!free){
			spawn_hit_fx(x, y - 20, vfx_nspec_cancel)
		}else{
			spawn_hit_fx(x, y - 40, vfx_nspec_cancel)
		}
		if(hitpause == true){
			hitstop = 0
			hitpause = false
			hitstop_full = 0
			vsp = old_vsp
			hsp = old_hsp
		}
	}
	if(state_timer > 7){
		can_special = true
		can_attack = true
		can_jump = true
		can_strong = true
		can_ustrong = true
		can_wall_jump = true
		can_shield = true
		if(!joy_pad_idle){
			if(!free){
				set_state(PS_IDLE)
			}else{
				set_state(PS_IDLE_AIR)
			}
		}
	}
}

//Fspecial stuff
if(attack == AT_FSPECIAL){
	steam_break_timer = 20
	can_fast_fall = false
	if(window == 1){
		if(vsp > 0){
			vsp = 0
		}
	}
	if(window == 1 && window_timer == 6){
		sound_play(sfx_steam_cloth)
		if(!free){
			set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 14);
			set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
			spawn_hit_fx(x - 40*spr_dir, y - 40, vfx_fspecial_steam)
		}else{
			set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 10);
			set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
			spawn_hit_fx(x - 40*spr_dir, y - 50, vfx_fspecial_steam)
		}
	}
	//Fspecial Geyser Stuff
	if(window == 2){
		if(instance_exists(geyser) || instance_exists(geyser_2)){
			if(distance_to_object(geyser) < 25 && geyser.state == 2 || distance_to_object(geyser_2) < 25 && geyser_2.state == 2){
				if(distance_to_object(geyser) < 25){
					geyser.state = 3
					geyser.state_timer = 0
					geyser.image_index = 0
					djumps = 0
					has_airdodge = true
					set_state(PS_IDLE_AIR)
					vsp = -15
					hsp = 12 *spr_dir
					if(left_down || left_pressed){
						spr_dir = -1
					}else if (right_down || right_pressed){
						spr_dir = 1
					}
				}
				if(distance_to_object(geyser_2) < 25){
					geyser_2.state = 3
					geyser_2.state_timer = 0
					geyser_2.image_index = 0
					djumps = 0
					has_airdodge = true
					set_state(PS_IDLE_AIR)
					vsp = -15
					hsp = 12 *spr_dir
					if(left_down || left_pressed){
						spr_dir = -1
					}else if (right_down || right_pressed){
						spr_dir = 1
					}
				}
			}
		}
		if(window_timer == 9){
			if(!free){
				set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, 5);
				set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 2);
			}else{
				set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, 9);
				set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 2);
			}
		}
		if(window_timer == 1 && !hitpause){
			steam -= 50
		}
		spawn_hit_fx(x, y - (10 + random_func(1, 50, true)), vfx_speed_line_x)
	}
	if(window == 3){
		if(!free){
			if(window_timer == 1){
				sound_play(asset_get("sfx_land"))
			}
			can_attack = true
			can_jump = true
			can_strong = true
			can_ustrong = true
			can_shield = true
			can_wall_jump = true
		}else if(window_timer > 5){
			can_attack = true
			can_jump = true
			can_strong = true
			can_ustrong = true
			can_shield = true
			can_wall_jump = true
		}
	}
}

//Red Indicator Timer going away
if(attack == AT_FSTRONG || attack == AT_DSTRONG || attack == AT_USTRONG || attack == AT_FSPECIAL || attack == AT_NSPECIAL && state_timer < 3){
	red_indicator_timer = 0
	sound_stop(asset_get("mfx_timertick"))
}

//Dspecial Air stuff
if(attack == AT_DSPECIAL_AIR){
	if(window == 2){
		if(state_timer > 50){
			window = 3
			window_timer = 0
		}else if(!free){
			if(left_down){
				spr_dir = -1
			}else if(right_down){
				spr_dir = 1
			}
			if(state_timer < 10){
				hsp = 9*spr_dir
			}else{
				hsp = 4*spr_dir
			}
			set_attack(AT_DSPECIAL)
			window_timer = 7
			vsp = 0
		}
		if(hsp == 0 && !hitpause){
			if(has_bounce == true){
				set_state(PS_IDLE_AIR)
				set_attack(AT_EXTRA_1)
			}
		}
		if(state_timer > 14){
			can_shield = true
			can_wall_jump = true
			can_special = true
			can_jump = true
		}
		spawn_hit_fx(x - ((30 - random_func(1, 15, true))* spr_dir), y - (30 + random_func(1, 20, true)), vfx_steam_small)
	}
}

//Dspecial Stuff
if (attack == AT_DSPECIAL){
	steam_break_timer = 20
	if (window == 2 && window_timer == 2 && !free){
		if(steam >= 30 && !(instance_exists(geyser) && instance_exists(geyser_2))){
			if(instance_exists(geyser)){
				geyser_2 = instance_create(x,y - 78, "obj_article1");
				geyser_2.number = 2
			}else{
	        	geyser = instance_create(x,y - 78, "obj_article1");
	        	geyser.number = 1
			}
	        steam -= 30
		}else if (steam < 70){
			red_indicator_timer = 30
			sound_play(asset_get("mfx_timertick"))
		}
	}
	if(window == 2 && window_timer == 1){
		shake_camera( 8, 4)
	}
}

//Fspecial snap to ledge
if(attack == AT_FSPECIAL){
	if(window == 2){
            if (place_meeting(x + hsp, y, asset_get("par_block")) && free) {
                for (var i = 1; i < 40; i++){
                    if (!place_meeting(x + hsp, y - i ,asset_get("par_block"))) {
                        y -= i;
                        break;
                    }
                }      
            }
    }
}

//Uspecial Stuff
if(attack == AT_USPECIAL){
	if(uspecial_uppie = false){
		can_fast_fall = false
	}
	if(window == 1){
		if(window_timer == 6 && uspecial_uppie = false && uspecial_no_steam == false){
			sound_play(sfx_steam_cloth)
		}
		if(window_timer > 3){
			if(shield_down || shield_pressed || steam < 50){
				if(uspecial_no_steam = false){
					if(steam < 50 && !shield_down && !shield_pressed){
						red_indicator_timer = 30
						sound_play(asset_get("mfx_timertick"))
					}
					set_num_hitboxes(AT_USPECIAL, 1);
					uspecial_no_steam = true
					set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial_air"));
				}
			}
		}else{
			set_num_hitboxes(AT_USPECIAL, 3);
			uspecial_no_steam = false
			set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial_air_steam"));
			uspecial_uppie = false
		}
	}
	if(window == 2){
		if(vsp > 0){
			can_wall_jump = true
		}
		if(window_timer == 1 && uspecial_uppie = false){
			hsp /= 2
			uspecial_uppie = true
			if(uspecial_no_steam == true){
				vsp = -10.5
				old_vsp = -10.5
			}else{
				vsp = -13
				old_vsp = -13
				steam -= 50
				uspecial_steam_grav = 15
			}
		}
		if(uspecial_steam_grav > 0 && !hitpause){
			vsp -= 0.25
			if(uspecial_steam_grav > 10){
				spawn_hit_fx(x + (20 - random_func(1, 40, true)), y - 30, vfx_steam_large)
			}else if(uspecial_steam_grav > 5){
				spawn_hit_fx(x + (20 - random_func(1, 40, true)), y - 30, vfx_steam_medium)
			}else{
				spawn_hit_fx(x + (20 - random_func(1, 40, true)), y - 30, vfx_steam_small)
			}
			uspecial_steam_grav -= 1
			set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial_air_steam"));
		}else{
			if(vsp < 0){
				set_num_hitboxes(AT_USPECIAL, 2);
			}else{
				set_num_hitboxes(AT_USPECIAL, 0);
			}
			if(uspecial_no_steam == false){
				if(state_timer mod 5 == 0){
					spawn_hit_fx(x + (20 - random_func(1, 40, true)), y - 30, vfx_steam_small)
				}
			}
		}
	}
	if(window == 2){
		if(!free && vsp >= 0 && !hitpause){
			if(was_parried){
				set_state(PS_PRATLAND)
			}else{
				set_state(PS_LANDING_LAG)
			}
		}
	}
}

//Taunt Stuff
if(!masked){
	if(attack == AT_TAUNT){
		if(window == 3){
			if(window_timer == 16){
				if(taunt_down){
					window = 2
					window_timer = 0
				}
			}
		}
		if(window == 2 || window == 3){
			if(window_timer == 5){
				random_var = random_func_2(1, 3, true)
				sound_play(sound_get("sfx_steam_quick"))
				steam_rocket = create_hitbox(AT_TAUNT, 3, x - 3 *spr_dir, y - 90)
				steam_rocket.vsp = -5 - random_var
				random_var = random_func_2(2, 4, true)
				steam_rocket.hsp = -2 + random_var
				random_var = random_func_2(3, 2, false)
				if(random_var > 1){
					random_sway = -1
				}else{
					random_sway = 1
				}
			}else{
				if(instance_exists(steam_rocket)){
					steam_rocket.hsp += 0.25 + ((random_var * random_sway) / 2)
				}
			}
		}
	}
}else{
	if(attack == AT_TAUNT){
		if(window == 1 && window_timer == 8 && (get_player_color(player) == 11 || get_player_color(player) == 13)){
			sound_play(asset_get("sfx_troupple_splash_big"))
		}
		if(window == 2 && window_timer == 15){
			if(!taunt_down){
				window = 5
				window_timer = 0
			}
		}
		if(window == 4){
			if(window_timer == 16){
				if(taunt_down){
					window = 4
					window_timer = 0
				}
			}
		}
		if(window == 3 && window_timer == 20){
			random_var = random_func_2(1, 9, true)
			sound_play(sound_get("sfx_steam_quick"))
			steam_rocket = create_hitbox(AT_TAUNT, 3, x + 30*spr_dir, y - 95)
			steam_rocket.vsp = -7.5 - random_var
			random_var = random_func_2(2, 8, true)
			steam_rocket.hsp = (2 + random_var) * spr_dir
			random_var = random_func_2(3, 2, false)
			random_sway = -1
		}
		if(window == 4){
			if(window_timer == 15){
				random_var = random_func_2(1, 9, true)
				sound_play(sound_get("sfx_steam_quick"))
				steam_rocket = create_hitbox(AT_TAUNT, 3, x + 30*spr_dir, y - 95)
				steam_rocket.vsp = -7.5 - random_var
				random_var = random_func_2(2, 8, true)
				steam_rocket.hsp = (2 + random_var) * spr_dir
				random_var = random_func_2(3, 2, false)
				random_sway = -1
				
			}else if(window_timer == 7){
				random_var = random_func_2(1, 9, true)
				sound_play(sound_get("sfx_steam_quick"))
				steam_rocket = create_hitbox(AT_TAUNT, 3, x - 38*spr_dir, y - 100)
				steam_rocket.vsp = -7.5 - random_var
				random_var = random_func_2(2, 8, true)
				steam_rocket.hsp = (-2 - random_var) *spr_dir
				random_var = random_func_2(3, 2, false)
				random_sway = 1
			}else{
				if(instance_exists(steam_rocket)){
					steam_rocket.hsp += ((random_var * random_sway) / 2)
				}
			}
		}
	}
}

//Taunt 2 stuff
if(attack == AT_TAUNT_2){
	if(window == 3){
		if(window_timer == 18){
			if(taunt_down){
				window_timer = 0
			}
		}
	}
}

//Actionable out of dspecial bounce
if(attack == AT_EXTRA_1){
	if(window == 1){
		can_move = false
		if(window_timer <= 1){
			state_timer = 0
		}
		if(window_timer > 4){
			if(special_down && state_timer < 50){
				window_timer = 4
			}
		}
		if(steam < 100){
			steam += 1
		}
	}
	if(window == 3 && window_timer > 5){
		can_jump = true
		can_special = true
		can_attack = true
		can_wall_jump = true
		can_strong = true
		can_shield = true
	}
	has_bounce = false
}

//Fstrong having kill power
if(attack == AT_FSTRONG){
	if(window == 1){
		if(steam <= 0 || instance_exists(steam_wall) || steam_wall_timer > 0){
			set_hitbox_value(AT_FSTRONG, 1, HG_FORCE_FLINCH, 0);
		}else{
			set_hitbox_value(AT_FSTRONG, 1, HG_FORCE_FLINCH, 1);
		}
	}
}

//Utilt cancel frame due to extra lag
if(attack == AT_UTILT){
	if(window == 3){
		if(window_timer > 8 && has_hit_player){
			can_attack = true
			can_special = true
			can_strong = true
			can_jump = true
			can_shield = true
			can_ustrong = true
			if(left_down || right_down){
				set_state(PS_IDLE)
			}
		}
	}
}
//Old fair thing but I didnt wanna get rid of it
/* if(attack == AT_FAIR){
	if(window > 3 || window == 2){
		can_fast_fall = false
	}
	if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){
	    if (window == 4 && grabbedid != noone){
	    grabbedid.invincible = false
	    grabbedid.invince_time = 0
		grabbedid.ungrab = 0;
		if(window_timer < 6){
	        //grabbedid.visible = false; //UNCOMMENT THIS LINE TO MAKE THE GRABBED PLAYER INVISIBLE
	        grabbedid.x = lerp(grabbedid.x, x + 40*spr_dir, 0.4); //SET GRABBED PLAYER X TO BE RELATIVE TO PLAYER X
			grabbedid.y = lerp(grabbedid.y, y, 0.5); //SET GRABBED PLAYER Y TO BE RELATIVE TO PLAYER Y
	        grabbedid.spr_dir = -spr_dir; //TURN THE GRABBED PLAYER TO FACE THE GRABBING PLAYER
	        grabbedid.wrap_time = 6000;
	        grabbedid.state = PS_WRAPPED;
	    }else if(window_timer == 6){
	    	grabbedid.state = PS_TUMBLE
	    	grabbedid = noone;
	    }
		}
	}
	if(window == 3){
		if(window_timer == 19){
			if(!was_parried){
				if(!free){
					set_state(PS_IDLE)
				}else{
					set_state(PS_IDLE_AIR)
				}
			}else{
				if(!free){
					set_state(PS_PRATLAND)
				}else{
					set_state(PS_PRATFALL)
				}
			}
		}
	}
	if(window == 4){
		if(window_timer < 6){
			vsp = 0
			hsp = 0
		}else if(window_timer == 6){
			old_vsp = -9
			old_hsp = -3*spr_dir
		}
	}
}
*/