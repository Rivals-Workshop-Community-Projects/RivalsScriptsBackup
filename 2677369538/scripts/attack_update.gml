//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_NAIR){
	var spawnposL = random_func( 19, 46, true);
	var spawnposR = random_func( 20, 45, true);
	if (window == 1){ confetti_R = random_func( 0, 100, true); }
	if (window == 2){ confetti_L = random_func( 1, 101, true); }
	
	var randomspawn = random_func( 1, 15, true);
	
	if (window > 7 && hitpause == true && randomspawn > 1){
		confetti_idR = instance_create(x + spawnposR + 20 * spr_dir, y-40 + spawnposR, "obj_article1");
		confetti_idR.spr_dir = spr_dir;
		confetti_idR.visual_check = confetti_R;
		
		confetti_idL = instance_create(x - spawnposL - 20 * spr_dir, y-40 + spawnposL, "obj_article1");
		confetti_idL.spr_dir = -spr_dir;
		confetti_idL.visual_check = confetti_L;
	}
}

/*UAir
if (attack == AT_UAIR){
	if (window == 2){
	if (attack_down){
		if (window_timer == 1){
		soft_armor = 10;}
	} else {
		soft_armor = 0;
		window = 3;
		window_timer = 0;
	}}
	if (window > 3){soft_armor = 0;}
}*/

//DAir
if (attack == AT_DAIR){
	can_fast_fall = false;
	if (window < 2){which_bash = 0; hsp = 0;}
	if(!free && window < 4){
		window = 4; 
		window_timer = 0; 
		destroy_hitboxes();
	}
	if (window == 2 && hitpause == 0 && has_hit == 1){
		destroy_hitboxes();
		attack = AT_FSPECIAL;
		window = 4;
		window_timer = 1;
		which_bash = 1;
	}
	if (window == 4 && free){
		window = 5;
	}
}

//Jab 3 returning to Jab 2
if (attack == AT_JAB){
    if (window == 9){
		if (!was_parried){
			if (attack_pressed){
				window = 3;
				window_timer = 0;
			}
		}
    }
	if (window == 6 || window == 9){
		if (window_timer == 10 && attack_pressed = 0){
			window = 10;
			window_timer = 0;
		}
	}
}

//Dash Attack ride
if (attack == AT_DATTACK){
	if (window == 2){
		if (window_timer == 1){
			spawn_base_dust(x, y, "dash_start");
		}
		if (window_timer == 8){
		if (!(attack_down || down_stick_down || right_stick_down || left_stick_down || up_stick_down)){
			spawn_base_dust(x, y, "dash");
			window = 3;
			window_timer = 0;
		}
		}
	}
	if (window == 2 || window == 3){
		if (has_hit == 1){
			can_attack = 1;
			can_jump = 1;
		}
	}
    if (window == 4){
		if (window_timer == 6 || window_timer == 12){
			spawn_base_dust(x, y, "dash");
		}
		if (!(attack_down || down_stick_down || right_stick_down || left_stick_down || up_stick_down)){
			window = 5;
			window_timer = 0;
		} else {
			if (window_timer == 6 || window_timer == 12){
			attack_end();
			create_hitbox(AT_DATTACK, 8, x, y); 
			}
			if (window_timer == 12){
			window_timer = 0;
			}
		}
	}
	if (window == 5){
		destroy_hitboxes();
	}
}

//DTilt hit 2
if (attack == AT_DTILT){
    if (has_hit == 1){
		if (window == 2){
			destroy_hitboxes();
		}
		if (window == 3 && ((attack_pressed && down_down) /* && down_down to prevent misnputs*/ || down_stick_pressed)){
			window = 4;
			window_timer = 0;
			has_hit = 0;
		}
	}
	if (window == 4 && window_timer == 4){
		window = 5;
		window_timer = 0;
	}
	if (window == 5 && window_timer == 2){
		window = 6;
		window_timer = 0;
	}
	if (window == 6 && window_timer == 8){
		window = 7; //doesn't exist
		window_timer = 0;
	}
}

//FStrong
if (attack == AT_FSTRONG){
	set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED, 8 + strong_charge / 12);
	set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 8 + strong_charge / 6);
	var spawnposL = random_func( 19, 46, true);
	var spawnposR = random_func( 20, 45, true);
	if (window == 1){ confetti_L = random_func( 1, 100, true); }
	if (window == 2){ confetti_L = random_func( 2, 101, true); }
	
	var randomspawn = random_func( 1, 15, true);
	
	if (window > 3 && hitpause == true && randomspawn > 1){
	if (spr_dir == -1){
		confetti_idL = instance_create(x - spawnposL + 46 * spr_dir, y-40 + spawnposL, "obj_article1");
		confetti_idL.spr_dir = -spr_dir;
		confetti_idL.visual_check = confetti_L;
	} else{
		confetti_idR = instance_create(x + spawnposR + 46 * spr_dir, y-40 + spawnposR, "obj_article1");
		confetti_idR.spr_dir = -spr_dir;
		confetti_idR.visual_check = confetti_R;
		}
	}
    if (window == 2){
		if (window_timer == 1){
		//afterImageTimer = 5;
		}
		if (has_hit = 1){
			window = 3;
			window_timer = 0;
			old_hsp = -hsp;
			destroy_hitboxes();
		}
	}
}

//UStrong
if (attack == AT_USTRONG){
	/* if (window == 3 && window_timer == 12){
		sound_stop(asset_get("sfx_zetter_fireball_fire"));
		sound_play(asset_get("sfx_zetter_fireball_fire"));
	} */
	if (window > 2){ 
		can_move = true; 
		can_wall_jump = true;
	}
	if (window == 4 && window_timer == 6){
		window = 4;
		window_timer = 0;
	}
	if (window == 5 && window_timer == 0){
		spawn_dust_fx( x + 64 * spr_dir, y, sprite_get("large_flame"), 25 ); shake_camera( 2, 8 ); destroy_hitboxes();
	}
}

//DStrong
if (attack == AT_DSTRONG){
	var spawnposL = random_func( 19, 26, true);
	var spawnposR = random_func( 20, 25, true);
	if (window == 1){ confetti_R = random_func( 0, 100, true); }
	if (window == 2){ confetti_L = random_func( 1, 101, true); }
	
	var randomspawn = random_func( 1, 15, true);
	
	if (has_hit == true){
	if ((window == 2 || window == 3) && randomspawn > 1){
		confetti_idR = instance_create(x + spawnposR + 46*2 * spr_dir, y-40 + spawnposR, "obj_article1");
		confetti_idR.spr_dir = spr_dir;
		confetti_idR.visual_check = confetti_R;
		
		confetti_idL = instance_create(x - spawnposL - 39*2 * spr_dir, y-40 + spawnposL, "obj_article1");
		confetti_idL.spr_dir = -spr_dir;
		confetti_idL.visual_check = confetti_L;
		}
	}
}

//NSpecial
if (attack == AT_NSPECIAL){
	if (window == 2 && window_timer == 1){ move_cooldown[AT_NSPECIAL] = 15; }
	if (window > 1){ can_jump = true; }
}

//FSpecial
if (attack == AT_FSPECIAL){
	if (window == 7 && window_timer > 1){ move_cooldown[AT_FSPECIAL] = 1; can_dash = true; can_jump = true; }
	if ( window == 6 ){ can_fast_fall = true; } else { can_fast_fall = false; }
	move_cooldown[AT_FSPECIAL] = 10;
	if (window == 1){ attack_end(); }
	if (window == 2){
		which_bash = 0
		if (has_hit == true && hitpause == true){
		if !(my_hitboxID.attack == AT_NSPECIAL || my_hitboxID.attack == AT_DSPECIAL || my_hitboxID.attack == AT_DSPECIAL_AIR){ window = 4; window_timer = 0; }
		}
	}
	if (window == 2){
		if (special_pressed && window_timer > 5 && hitpause == false){ 
			window = 8;
			window_timer = 0;
			destroy_hitboxes();
			sound_play(sound_get("sfx_roll"));
		}
		if (place_meeting( x+1 * spr_dir, y, asset_get("par_block"))) { 
			spawn_base_dust(x + (22 * spr_dir), y - 32, "walljump", spr_dir * -1); 
			which_bash = 1;
			spin_hit = false; 
			window = 4; window_timer = 1; 
			hitstop = 10; hitstop_full = 7; 
			shake_camera( 2, 6 );
			hitpause = true;
			destroy_hitboxes();
		}
	}
	if (window == 3){
		can_wall_jump = 1;
		if (has_hit_player == false && window_timer >= 9){ window = 9; }
		//There is no window 9, it's so he won't go into window 4.
	}
	if (window == 4){ //Stopper sends him into the spin starter
		window = 5;
		window_timer = 0;
		sound_play(sound_get("sfx_bash_hit"));
	} 
	if (window == 5){ //Spin start goes into the looping spin
		if (window_timer > 2){
		window = 6;
		window_timer = 0;
		}
		if (window_timer == 1 && spin_hit == false){
			//sound_play(sound_get("sfx_spinjump"));
			which_bash = 2;
		}
		else {if (window_timer == 0){spawn_base_dust(x, y, "djump");}}
	}
	if (window < 6){ 
		can_move = true; 
	}
	if (window == 6){
		if (has_hit == true && hitpause == true){
		if !(my_hitboxID.attack == AT_NSPECIAL || my_hitboxID.attack == AT_DSPECIAL || my_hitboxID.attack == AT_DSPECIAL_AIR){ window = 5; window_timer = 0; }
		}
		//can_jump = 1;
		can_wall_jump = 1;
		var stick_dir = right_stick_pressed or down_stick_pressed or left_stick_pressed or up_stick_pressed
		//Stick inputs should also be possible
		if (spin_hit == true){
			//var player_input = attack_stick;
			if (special_pressed == true){
			state = PS_IDLE;
			can_special = true;
			move_cooldown[AT_FSPECIAL] = 0;
			//clear_button_buffer( PC_SPECIAL_PRESSED );
			}
			if (attack_pressed || stick_dir ){
			state = PS_IDLE;
			can_attack = true;
			move_cooldown[AT_FSPECIAL] = 1;
			//clear_button_buffer( PC_ATTACK_PRESSED );
			}
		}
	}
	if (window == 7){ 
		destroy_hitboxes();
		if (free == false){
			if (window_timer = 20){ state = PS_IDLE; }
			if (window_timer = 0){ 
				spawn_base_dust(x, y, "land"); 
				sound_play(asset_get("sfx_gus_land"));
			}
		}
	}
	if (window == 8){
		sound_stop(sound_get("sfx_king_dash"));
		if (window_timer < 1){
		destroy_hitboxes();
		attack_end();
		}
		if (window_timer == 1){
		create_hitbox(AT_FSPECIAL, 4, x, y); }
		if (window_timer >= 16){ window = 9; window_timer = 0; }
		can_wall_jump = 1;
		if (place_meeting( x+1 * spr_dir, y, asset_get("par_block"))) { 
			sound_play(sound_get("sfx_roll_hit")); hsp = -3 * spr_dir; vsp = -2;
		}
		off_edge = false;
	}
/*	if (window == 9){ create_hitbox(AT_FSPECIAL, 4, x, y);  }*/
}

if (attack == AT_USPECIAL){
	if (window == 1){
		rats = 1;
		rat_timer = 0;
		if (state == PS_ATTACK_GROUND){ vsp = -3; }
	}
	if (window >= 3){
		can_wall_jump = true;
	}
	if (window >= 3 && window < 5){
		sound_play(asset_get("sfx_ell_propeller_loop_med"));
	}
	if (window == 5 && window_timer == 1){
		create_hitbox(AT_DSPECIAL, 2, x+10 * spr_dir, y-65);
		if (rats > 0){
		if (rats == 1){ create_hitbox(AT_DSPECIAL, 3, x+10 * spr_dir, y-65); }
		if (rats == 2){ create_hitbox(AT_DSPECIAL, 3, x+10 * spr_dir, y-65); create_hitbox(AT_DSPECIAL, 3, x+30 * spr_dir, y-40); }
		if (rats == 3){ create_hitbox(AT_DSPECIAL, 3, x+10 * spr_dir, y-65); create_hitbox(AT_DSPECIAL, 3, x+30 * spr_dir, y-40); create_hitbox(AT_DSPECIAL, 3, x-20 * spr_dir, y-85); }
		}
	}
	can_move = true;
	can_fast_fall = false;
}

/*
if (attack == AT_USPECIAL){
    if (window == 1 && window_timer == 1){
        times_through = 0;
    }
    if (window == 2){
        if (window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH)){
            if (times_through < 10){
                times_through++;
                window_timer = 0;
            }
        }
        if (!joy_pad_idle){
            hsp += lengthdir_x(1, joy_dir);
            vsp += lengthdir_y(1, joy_dir);
        } else {
            hsp *= .6;
            vsp *= .6;
        }
        var fly_dir = point_direction(0,0,hsp,vsp);
        var fly_dist = point_distance(0,0,hsp,vsp);
        var max_speed = 12;
        if (fly_dist > max_speed){
            hsp = lengthdir_x(max_speed, fly_dir);
            vsp = lengthdir_y(max_speed, fly_dir);
        }
        if (special_pressed && times_through > 0){
            window = 4;
            window_timer = 0;
        }
        if (shield_pressed){
            window = 3;
            window_timer = 0;
        }
    }
    if (window > 3 && window < 6 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
        window++;
        window_timer = 0;
    }
}
*/

if (attack == AT_DSPECIAL){
    can_fast_fall = false;
    can_move = false
	if (window == 1 && window_timer == 1){
	//propeller_rats += 1;
	//attack_end();
	}
	if (has_hit_player){
	//propeller_rats += 1;
	attack_end();
	}
}
//SuperSonic base dust code
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
