//Spawning Afterimages on Certain Attacks
if (attack == AT_NSPECIAL && window == 2 || attack == AT_DSPECIAL && window != 1 && window != 2 && window != 5){
	afterimage = 1
} else if (attack != AT_DAIR && attack != AT_NSPECIAL && attack != AT_DSPECIAL){
	afterimage = 0
}


//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

// Fstrong
if (attack == AT_FSTRONG){
	if (window == 3 && window_timer == 1){
		sound_stop(sound_get("sfx_sonic_fstrong_spin"))
		if (voiced == 1){
			sound_play(sound_get("sfx_sonic_fstrong1"))
		}
	}
	
	
	if (window == 2){
		if (state_timer mod 10 == 0){
			spawn_base_dust( x - (32 * spr_dir), y, "walk", spr_dir);
		}
	}
	
	if (window == 3){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x - (12 * spr_dir), y, "dash_start", spr_dir);
		}
	}
}

//////////////////////
//Voiced Mode Start///
//////////////////////

//Up Strong
if (attack == AT_USTRONG){
	if (window == 2 && window_timer == 7 && voiced == 1){
		sound_play(sound_get("sfx_sonic_ustrong_vioce"))
	}
}

//Forward Special
if (attack == AT_FSPECIAL){
	if (voiced == 1){
		set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX, sound_get("sfx_sonic_somer"));
	} else if (voiced == 0){
		set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_jumpground"));
	}
}

//Normal Taunt
if (attack == AT_TAUNT){
	if (window == 2 && window_timer == 2){
		if (get_player_color( player ) == 12){
			sound_play(sound_get("sfx_sonic_taunt_cool_retro"))
		} else if (get_player_color( player ) != 12){
			if (voiced == 1){
				sound_play(sound_get("sfx_sonic_taunt_cool"))
			} else if (voiced == 0){
				sound_play(sound_get("sfx_ring_total"))
			}
		}
	}
}

//Down Taunt
if (attack == AT_TAUNT_2){
	if (voiced == 1){
		if (get_player_color( player ) == 15){
			set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, sound_get("sfx_sonic_taunt_2_obama"));
		} else if (get_player_color( player ) != 15){
			set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, sound_get("sfx_sonic_taunt_2"));
		}
	} else if (voiced == 0){
		set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, asset_get("mfx_star"));
	}
}

//Looping Down Taunt
if (attack == AT_TAUNT_2 && window == 2 && taunt_down && window_timer >= 63){
	window_timer = 0
}

//Up Taunt
if (attack == AT_EXTRA_2){
	if (voiced == 1){
		set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX, sound_get("sfx_sonic_taunt_step"));
		set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX_FRAME, 23);
	}
}

//Jump Taunt
if (attack == AT_EXTRA_3){
	if (voiced == 1){
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, sound_get("sfx_sonic_taunt_tsk"));
	}
}

//"You're too slow!" Taunt
if (attack == AT_FSPECIAL_2){
	if (voiced == 1){
		set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX, sound_get("sfx_sonic_taunt_slow"));
	} else if (voiced == 0){
		set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX, sound_get("sfx_sonic_dashstart"));
	}
}

//Old Taunt
if (attack == AT_NSPECIAL_AIR){
	if (voiced == 1){
		set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_SFX, sound_get("sfx_sonic_taunt_old"));
	} else if (voiced == 0){
		set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_SFX, sound_get("airdodge"));
	}
}

//Looping Old Taunt
if (attack == AT_NSPECIAL_AIR && window == 6 && taunt_down && window_timer >= 2){
	window_timer = 0
}

//////////////////////
//Voiced Mode Ends////
//////////////////////


//Utilt
if (attack == AT_UTILT){
	if (window == 1){
		if (window_timer == 3){
			sound_play(asset_get("sfx_jumpground"));
		}
	}
}

//Bound Jump Code

if (attack == AT_DAIR){
	if (window == 1){
		dairloopepic = 0
		dairdj = djumps
		if (has_airdodge == true){
			dairad = 1
		} else if (has_airdodge == false){
			dairad = 0
		}
		if (move_cooldown[AT_USPECIAL_2] == 0){
			dairusp = 1
		} else if (move_cooldown[AT_USPECIAL_2] != 0){
			dairusp = 0
		}
		if (window_timer == 2){
			sound_play(asset_get("sfx_jumpground"));
		}
		if (window_timer == 6){
			sound_play(asset_get("sfx_ori_stomp_spin"));
		}
	}
	if (window == 2){
		if (window_timer == 13){
			window_timer = 0
			dairloopepic = dairloopepic + 1
		}
		if (dairloopepic > 1){
			can_jump = true
			can_shield = true
			if (special_pressed){
				set_attack(AT_USPECIAL_2);
				window = 1
				window_timer = 0
			}
		}
	}
	if (window == 3){
		//Checking to see if Sonic has used his double jump. If he has not, this allows him to still use it.
		if (dairdj == 0){
			djumps = 0
		} else djumps = 1
		//
		if (dairad == 1){
			has_airdodge = true
		} else if (dairad == 0){
			has_airdodge = false
		}
		if (dairusp == 1){
			move_cooldown[AT_USPECIAL_2] = 0
		} else if (dairusp == 0){
			move_cooldown[AT_USPECIAL_2] = 999
		}
	}
}

if (attack == AT_DAIR && !free && window == 2){
	spawn_base_dust(x, y, "n_wavedash", 0);
	spawn_base_dust( x + 16, y, "wavedash", -1)
	spawn_base_dust( x - 16, y , "wavedash", 1)
	set_attack_value(AT_DAIR, AG_CATEGORY, 2);
	window = 3;
    window_timer = 1;
    vsp = -10.5;
	old_vsp = vsp
	sound_play(sound_get("sfx_bounce"))
	destroy_hitboxes();
} else if (attack == AT_DAIR && !free && window == 1 || window == 3){
	set_attack_value(AT_DAIR, AG_CATEGORY, 1);
}
if (attack == AT_DAIR){
	if (window == 1){
		set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
	}
	hsp = hsp * 0.94;
	old_hsp = hsp;
	if (window == 1 && window_timer == 11){
		sound_play(asset_get("sfx_ori_dtilt_perform"))
	}
}

//Walljumping with Dair
if (attack == AT_DAIR){
	can_wall_jump = true;
}

/*
//Buffing Strongs with Meter
if (ichigauge == 16){
	//Down Strong
	if (attack == AT_DSTRONG && window == 1 && window_timer == 1){
		set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 999);
		set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 999);
	}
	if (attack == AT_DSTRONG && window == 5){
		ichigauge = 0;
		set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 8);
		set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 8);
	}
	//Forward Strong
	if (attack == AT_FSTRONG && window == 1 && window_timer == 1){
		set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 999);
	}
	if (attack == AT_FSTRONG && window == 5){
		ichigauge = 0;
		set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 7);
	}
	//Up Strong Strong
	if (attack == AT_USTRONG && window == 1 && window_timer == 1){
		set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 999);
		set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 999);
	}
	if (attack == AT_USTRONG && window == 4){
		ichigauge = 0;
		set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 8.1);
		set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 4);
	}
}
*/

//Up Strong: Sonic Up Draft
if (attack == AT_USTRONG){
	if (hsp > 10){
		hsp = 9.5
	}
	if (hsp < -10){//>
		hsp = -9.5
	}
	
	if (window == 2){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x + (18 * spr_dir), y, "dash_start", -spr_dir);
		}
	}
}	

// Down Strong
if (attack == AT_DSTRONG){
	if (window == 2){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x + (28 * spr_dir), y, "dattack", -spr_dir);
		}
	}
	
	if (window == 4){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x - (28 * spr_dir), y, "dattack", spr_dir);
		}
	}
}

// ftilt
if (attack == AT_FTILT){
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x + (40 * spr_dir), y, "dattack", -spr_dir);
		}
	}
}

// utilt
if (attack == AT_UTILT){
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x + (16 * spr_dir), y, "walk", -spr_dir);
		}
	}
	
	if (window == 3){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x + (16 * spr_dir), y, "dash", -spr_dir);
		}
	}
}


// dtilt
if (attack == AT_DTILT){
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x + (60 * spr_dir), y, "wavedash", -spr_dir);
		}
	}
}

// dattack
if (attack == AT_DATTACK){
	if ((window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) || (window == 2 && state_timer mod 3 == 0)){
		if (!hitpause){
			spawn_base_dust( x - (20 * spr_dir), y, "walk", spr_dir);
		}
	}
}


//********************************************************************
//New
//Homing Attack

if attack == AT_NSPECIAL && window == 3  {
	homing_x = -1000000000000;
	homing_y = -1000000000000;
}

if (attack == AT_NSPECIAL){
	fall_through = true;
	can_wall_jump = true;
	if (!has_hit){
		if window == 1 { //targets the opponent during startup
			set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 7);
			set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 3);
			if (window_timer == 1){
				homingpose++;
				if (homingpose > 2){
					homingpose = 0
				}
			}
			longest_id = noone;
			var longest_dist = 280; //maximum targetable distance
			with (asset_get("oPlayer")) {
				if (player != other.player) {
					var curr_dist = point_distance(x,y,other.x,other.y);
					var curr_angle = point_direction(other.x, other.y, x, y);
					if (curr_dist < longest_dist && !(abs(curr_angle - 90) < 50)) { //The 60 is the deadzone angle from diagonally up. So, Sonic can't target more than 30 degrees above him
						longest_dist = curr_dist;
						other.longest_id = id;
						other.homing_x = x;
						other.homing_y = y - char_height / 2;
						other.homing_vsp = lengthdir_y(25, curr_angle); //25 is Sonic's max speed while homing.
						other.homing_hsp = lengthdir_x(25, curr_angle); //These two are the vsp/hsp sonic will move at
					}
				}
			}
		}
		if (window == 3) { //slows down sonic after homing without a sudden interrupt. Useful for stopping SDs too.
			hsp *= 0.8;
			vsp *= 0.8;
			if (window_timer == 13) move_cooldown[AT_NSPECIAL] = 240;
		}
		if (longest_id != noone) { //Code inside only activates if there is a targeted enemy
			if (window == 1) {
				with (longest_id) {
					draw_reticle = true;	
				}
			}
			if window == 2 { //
					vsp = homing_vsp * 0.85;
					hsp = homing_hsp * 0.85;
				with (longest_id) {
					draw_reticle = true;
					if other.window_timer <= 1 {
					if other.x > x other.spr_dir = -1;
					else if other.x < x other.spr_dir = 1;
					}
				}
				if ((x - homing_x) * spr_dir) > 8 { //The 10 is how far Sonic can go from the homing reticle before the attack ends
					window = 3;
					window_timer = 0;
					destroy_hitboxes();
				}
			}
		} else if window == 2 { //Code for if there is no target homed-on
			draw_reticle = false;
			if (window == 2){
				vsp = 7;
				hsp = 9 * spr_dir;
			}
			if !free {//if Sonic hits the ground or a plat, he bounces
				spawn_base_dust(x, y, "n_wavedash", 0);
				spawn_base_dust( x + 16, y, "wavedash", -1)
				spawn_base_dust( x - 16, y , "wavedash", 1)
				set_attack_value(AT_DAIR, AG_CATEGORY, 2);
				set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 7);
				set_attack(AT_DAIR);
				window = 3;
			    window_timer = 1;
			    vsp = -9;
				old_vsp = vsp;
				hsp *= 0.85
				sound_play(sound_get("sfx_bounce"))
				destroy_hitboxes();
				move_cooldown[AT_NSPECIAL] = 160;
			}
		}
	} else if has_hit && window != 3 {//If Sonic hits, this code lets him bounce
		window = 3; window_timer = 4;
		set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 1);
		draw_reticle = false;
		
		old_hsp = 0 * spr_dir;
		old_vsp = -7;
		hsp = 0;
		vsp = 0;
		move_cooldown[AT_NSPECIAL] = 160;
		destroy_hitboxes();
		reset_num_hitboxes(AT_NSPECIAL);
		if (voiced == 1){
			sound_play(sound_get("sfx_sonic_homing_land"))
		}
	}
	
	if (has_hit && window == 3 && !hitpause){
		
		window = 5;
		window_timer = 0;
		
		vsp = -7.5;
		hsp = 0;
		
		has_hit = false;
		
		state_timer = 0;
	}
	
	if (window >= 5){
		if (state_timer > 11){
			attack_end();
			iasa_script();
		}
	}
}	

//*********************************************************************

//Forward Special: Light Speed Dash
if (attack == AT_FSPECIAL){
	can_wall_jump = true;
	if (window == 1){
	
		if (window_timer == 1){
			sound_play(sound_get("sfx_sonic_light_speed_charge"), false, noone, 1, 1.1);
			sound_play(sound_get("sfx_sonic_homing"), false, noone, 0.25, 1.25);
		}
	
		lightspeed_hitwithstronghitbox = false
		set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 7);
		lightspeed_bounce = 0
		can_move = false
		if (window_timer == 0){
			if (!free){
				lightspeed_started_on_ground = true
			} else {
				lightspeed_started_on_ground = false
			}
			y = y + 20
		} else {
			//vsp = 0
			if (hsp > 0){
				hsp = hsp - 1.25
			} else if (0 > hsp){
				hsp = hsp + 1.25
			}
			if (vsp > 0){
				vsp = vsp - 0.4
			} else if (0 > vsp){
				vsp = vsp + 0.8
			}
		}
		//1 is up, 2 is down, 0 is neutral.
		if (up_down && !down_down){
			lightspeed_dir = 1
			lightspeed_dir_y = -80
		} else if (!up_down && down_down && lightspeed_started_on_ground == false){
			lightspeed_dir = 2
			lightspeed_dir_y = 80
		} else if (up_down && down_down || !up_down && !down_down){
			lightspeed_dir = 0
			lightspeed_dir_y = 0
		}
		//afterimage = 0
		if (window_timer == 17){
			//spawn_hit_fx( x, y - 34, 126 );
			//spawn_hit_fx( x + (65 * 4) * spr_dir, y - 34 + lightspeed_dir_y, 256 );
		}
		
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_stop(sound_get("sfx_sonic_light_speed_charge"));
			
			sound_play(sound_get("sfx_sonic_homing"), false, noone, 0.75, 1);
			sound_play(sound_get("sfx_sonic_light_speed"), false, noone, 0.35, 3);
			sound_play(sound_get("sfx_sonic_downspecial"), false, noone, 0.65, 1.55);
			
			if (lightspeed_dir == 0){
				var lightspeeddustDirMod = 0;
			} else if (lightspeed_dir == 1){
				var lightspeeddustDirMod = 34;
			} else if (lightspeed_dir == 2){
				var lightspeeddustDirMod = -34;
			}
			
			spawn_base_dust( x - (5 * spr_dir), y - 40, "doublejump", spr_dir, (270 * spr_dir) + lightspeeddustDirMod*spr_dir);
		}
	}
	if (window == 2){
		can_move = false
		x = x + 50 * spr_dir
		if (lightspeed_dir == 1){
			y = y - 20
			instance_create(x - 50 * spr_dir, y + 25, "obj_article1");
		} else if (lightspeed_dir == 2){
			y = y + 20
			instance_create(x - 50 * spr_dir, y - 25, "obj_article1");
		} else if (lightspeed_dir == 0){
			instance_create(x - 50 * spr_dir, y, "obj_article1");
		}
		if (place_meeting(x+spr_dir,y,asset_get("par_block"))){
			window = 4
			window_timer = 0
			sound_play(sound_get("sfx_bounce"))
			if (lightspeed_dir != 2){
				x = x - 5 * spr_dir
				hsp = 0 * spr_dir
				vsp = -7
				lightspeed_bounce = 1
			} else if (lightspeed_dir == 2){
				vsp = -6.5
				lightspeed_bounce = 0
			}
		}
		//create_hitbox(AT_FSPECIAL, 1, x - 45 * spr_dir, y);
		//afterimage = 1
	}
	if (window == 3){
		can_move = true
		//afterimage = 0
	}
	if (window == 4){
		if (lightspeed_bounce == 1){
			can_move = false
		} else {
			can_move = true
		}
		//afterimage = 0
		if (!free){
			if (has_hit){
				landing_lag_time = get_attack_value( attack, AG_LANDING_LAG );
				set_state( PS_LANDING_LAG );
			} else {
				set_state( PS_PRATLAND );
			}
		}
		if (has_hit == true){
			if (window_timer == 1){
				if (lightspeed_hitwithstronghitbox == true){
					set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 1);
					vsp = -8
					hsp = 6 * spr_dir
				} else {
					set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 1);
					vsp = -4
					hsp = 3 * spr_dir
				}
			}
		} else if (has_hit == false && window_timer == 1){
			if (lightspeed_dir == 1){
				vsp = -3
			} else {
				vsp = -0.5
			}
		}
	}
}

//Up Special Shit
if (attack == AT_USPECIAL){
	if (window == 1 && window_timer == 0){
		springlockout = 30
	}
	can_hitfall = false;
	can_fast_fall = false;
	can_wall_jump = true;
	if (window == 1 && window_timer == 9){
		window = 2
		window_timer = 0
		y = y - 20
		instance_create(x, y + 20, "obj_article2");
	}
	if (window == 2) {
		move_cooldown[AT_USPECIAL] = 99999;
		move_cooldown[AT_USPECIAL_2] = 99999;
		move_cooldown[AT_FSPECIAL] = 99999;
		move_cooldown[AT_DSPECIAL] = 99999;
	}
}

//Up Special 2 Shit
if (attack == AT_USPECIAL_2){
	if (window == 1){
		set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 3);
	}
	can_hitfall = false;
	can_fast_fall = false;
	can_wall_jump = true;
	if window == 2 {
		move_cooldown[AT_USPECIAL] = 99999;
		move_cooldown[AT_USPECIAL_2] = 99999;
		move_cooldown[AT_FSPECIAL] = 99999;
		move_cooldown[AT_DSPECIAL] = 99999;
	}
	if (window == 6){
		set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 3);
	}
}

//Spindash
//Changing the sfx for charging based on the alt
if (get_player_color( player ) == 12){
		set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, sound_get("sfx_sonic_spindash_charge_retro"));
	} else if (get_player_color( player ) != 12){
		set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, sound_get("sfx_sonic_spindash_charge"));
	}
if (attack == AT_DSPECIAL){
	if (spindash_jumptimer > 0){
		spindash_jumptimer--;
	}
	can_wall_jump = true;
    if (window == 1){
		spindash_jumptimer = 0
        spindash_loop = 0
        set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 5);
		move_cooldown[AT_FSPECIAL] = 99999;
		move_cooldown[AT_DSPECIAL] = 99999;
    }
    if (window == 2 && window_timer == 4 && spindash_loop <= 10) spindash_loop++;
	if (window == 2 && (!special_down || spindash_loop == 10)){
		destroy_hitboxes();
		window = 3
		window_timer = 0
		hsp = 11 * spr_dir
		spawn_base_dust(x, y, "dash_start", 0);
		if (get_player_color( player ) == 12){
			sound_play(sound_get("sfx_sonic_downspecial_retro"))
		} else if (get_player_color( player ) != 12){
			sound_play(sound_get("sfx_sonic_downspecial"))
		}
		sound_stop(sound_get("sfx_sonic_spindash_charge"))
		sound_stop(sound_get("sfx_sonic_spindash_charge_retro"))//throwing this here just in case the player has a retro alt
	}
	if (window == 2 && window_timer == 1 && !free){
		spawn_base_dust(x, y, "dash", 0);
	}
	if (window == 3 || window == 4){
		sound_stop(sound_get("sfx_sonic_spindash_charge"))
		sound_stop(sound_get("sfx_sonic_spindash_charge_retro"))//throwing this here just in case the player has a retro alt
	}
	//Decreasing the loop timer
    if (window == 4 && window_timer == 7 && spindash_loop != 0){
        spindash_loop--;
        window_timer = 0
    }
	if (window == 4 && state_timer mod 3 == 0 && !hitpause && !free){
		spawn_base_dust(x, y, "walk", 0);
	}
	//fastfall idk
	if (free && down_pressed && window == 4){
		vsp = 5
	}
	//Speed Things
	if (!free && window == 4){
		can_move = false
		hsp = 11 * spr_dir
	} else if (free){
		can_move = true
		if (joy_pad_idle && window = 4){
			hsp = hsp * 0.97
		}
	}
	//Jumping out of Spindash
    if (jump_pressed == true && window == 4 && !free){
		spawn_base_dust(x, y, "jump", 0);
		vsp = -10
		spindash_jumptimer = 12
		if (get_player_color( player ) == 12){
			sound_play(sound_get("sfx_sonic_doublejump_retro"))
		} else if (get_player_color( player ) != 12){
			sound_play(sound_get("sfx_sonic_doublejump"))
		}
		//set_state(PS_FIRST_JUMP);
		//hsp = 4 * spr_dir
    }
	if (jump_pressed == true && window == 4 && spindash_jumptimer == 0 && free){
		set_state(PS_DOUBLE_JUMP);
		state_timer = 0
		move_cooldown[AT_DSPECIAL] = 99999;
		sound_stop(sound_get("sfx_sonic_doublejump"))
		sound_stop(sound_get("sfx_sonic_doublejump_retro"))
    }
	//Attacking while Airborne
	if (free && attack_pressed && window == 4){
		can_attack = true
		move_cooldown[AT_DSPECIAL] = 99999;
		sound_stop(sound_get("sfx_sonic_spindash_charge"))
		sound_stop(sound_get("sfx_sonic_spindash_charge_retro"))
	}
	//Instant Dash Attack
	if (attack_pressed == true && window == 4 && !free){
		set_attack(AT_DATTACK);
        window = 1
		window_timer = 0
		hsp = 9 * spr_dir
		//sound_play(sound_get("sfx_sonic_dattack"))
    }
	//Parry Cancel
	if (shield_pressed == true && window == 4){
		can_shield = true
		move_cooldown[AT_DSPECIAL] = 99999;
    }
	//Turn to the Left
	if (window == 4 && spr_dir == 1 && left_pressed && !free){
		window = 6
		window_timer = 0
		spr_dir = -1
		spindash_loop--;
		spawn_base_dust(x, y, "dash_start", -1);
    }
	//Turn to the Right
	if (window == 4 && spr_dir == -1 && right_pressed && !free){
		window = 6
		window_timer = 0
		spr_dir = 1
		spindash_loop--;
		spawn_base_dust(x, y, "dash_start", 1);
    }
	//test to see if you go to walljump
	if (window == 3 && free && place_meeting(x+spr_dir,y,asset_get("par_block")) || window == 4 && free && place_meeting(x+spr_dir,y,asset_get("par_block"))){
		if (wallrunallowed == false){	
			//set_attack(AT_EXTRA_1);
			window = 5;
			window_timer = 0;
			vsp = 2
			hsp = -3 * spr_dir
			sound_play(sound_get("sfx_bounce"))
		}
	}	
	//Going to window 5
	if (spindash_loop == 0 && window == 4){
		window = 5
		window_timer = 0
		move_cooldown[AT_DSPECIAL] = 99999;
	}
	//turning
	if (window == 6){
		hsp = hsp - (-2.4*spr_dir)
		if (window_timer == 8){
			window = 4
			window_timer = 0
		}
	}
}

//Wall Run Code
if (attack == AT_EXTRA_1){
	has_walljump = false
	can_move = false;
	set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("hurtbox_ground"));
	if (window == 1){
		if (window_timer == 0){
			sound_play(sound_get("sfx_sonic_land"))
		}
		vsp = 0
		wallrunloop = 0
		if (window_timer == 3){
			sound_play(sound_get("sfx_sonic_wallrun"))
		}
	}
	if (window == 2){
		vsp = -8
		//Looping
		if (window_timer == 15 && wallrunloop != 2){
			window_timer = 0
			wallrunloop++;
		}
		//Jumping out of this stuff lmao
		if (jump_pressed){
			window = 3
			window_timer = 0
			vsp = -11
			hsp = -4 * spr_dir
			sound_stop(sound_get("sfx_sonic_wallrun"))
		}
		//Checking if Sonic isn't on the wall
		if (!place_meeting(x+spr_dir,y,asset_get("par_block"))){
			window = 3
			window_timer = 0
			sound_stop(sound_get("sfx_sonic_wallrun"))
		}
	}
}

//--------------------------------------------

//Supersonic's Base Cast Dust Function
#define spawn_base_dust
///spawn_base_dust(x, y, name, ?dir)
// use this to be awesome
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;
var angle = argument_count > 4 ? argument[4] : 0;

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
    
    //
    //bar-kun additions (note: idk how fg_sprite work)
    //
    case "dattack": dlen = 22; dfx = 12; dfg = 0; break;
    case "b_bounce_bg": dlen = 10; dfx = 7; dfg = 0; break;
    case "b_bounce_fg": dlen = 14; dfx = 8; dfg = 0; break;
    case "s_bounce_bg": dlen = 18; dfx = 7; dfg = 0; break;
    case "s_bounce_fg": dlen = 19; dfx = 8; dfg = 0; break;
    case "doublejump_small": 
    case "djump_small": dlen = 21; dfx = 16; dfg = 0; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = angle;