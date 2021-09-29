
//Extra_1: Sweet Dreams
if (attack == AT_EXTRA_1){
	set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));
	iasa_script();
	if (window == 2){
		set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"))
		if (window_timer == 1 || window_timer == 25){
			if (get_player_damage( player ) != 0){
					sound_play(sfx_kssu_hp_up);
			}
			take_damage( player, -1, -1 + (has_rune("A") * -3) );
		}
		if (window_timer == 47){
			window_timer = 0
		}
	}
}

if (attack == AT_EXTRA_3){
	hsp = 3 * spr_dir
	if (image_index == 2 || image_index == 7){
		sleep_kabrbr_index++;
		if (sleep_kabrbr_index == 1){
			sound_play(sfx_step);
		}
	} else {
		sleep_kabrbr_index = 0
	}
	if (!left_down || right_down){
		set_state(PS_IDLE);
	}
}

//Jab
if (attack == AT_JAB){
	if (window == 1){
		set_hitbox_value(AT_JAB, 4, HG_DAMAGE, 6);
		set_hitbox_value(AT_JAB, 4, HG_ANGLE, 45);
		set_hitbox_value(AT_JAB, 4, HG_BASE_KNOCKBACK, 7);
		set_hitbox_value(AT_JAB, 4, HG_KNOCKBACK_SCALING, 0.6);
		set_hitbox_value(AT_JAB, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
		set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));
		set_hitbox_value(AT_JAB, 4, HG_VISUAL_EFFECT, pillow_hit_fx_med);
		clear_button_buffer(PC_ATTACK_PRESSED);
	}
	if (window == 2){
		set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));
	}
	if (window == 3){
		set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));
	}
	if (window == 4){
		set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));
		clear_button_buffer(PC_ATTACK_PRESSED);
	}
	if (window == 5){
		set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));
	}
	if (window == 6){
		set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));
	}
	if (window == 7){
		set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));
		if (window_timer == 5){
			spawn_base_dust( x + (30 * spr_dir), y, "dash_start", spr_dir * -1)
		}
	}
	if (window == 8){
		set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));
	}
	if (window == 9){
		set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));
	}
	if (window != 10){
		jab_is_jabbing = true
		set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));
		set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("sleep_jab3"));
	}
	if (window == 10){
		jab_is_jabbing = false
		if (window_timer > 4){
			iasa_script();
			if (attack_pressed){
				//set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));
			}
		}
		//set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));
		if (window_timer < 118){ //>
			set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("sleep_hurtbox"));
		}
		if (window_timer == 118){
			//set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("sleep_hurtbox"));
			set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));
		}
		if (window_timer == 119){
			//set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("sleep_hurtbox"));
			set_attack( AT_EXTRA_1 );
			window = 2
			window_timer = 0
		}
	}
}

if (attack != AT_JAB){
	jab_is_jabbing = false
}

//Dash Attack: Running Tackle
if (attack == AT_DATTACK){
	if (window != 4){
		dattack_sfx_timer = 0
	}
	if (window == 2){
		if (!hitpause && window_timer == 1){
			spawn_base_dust( x + (10 * spr_dir), y, "land", spr_dir)
		}
	}
	if (window == 4){
		if (image_index == 7){
			dattack_sfx_timer++;
			if (dattack_sfx_timer == 1){
				sound_play(asset_get("sfx_jumpground"));
			}
		}
	}
}	

//Up Tilt: Scorpion Kick
if (has_rune("C")){
	set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, sfx_smash64_swipe_med);
	set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, sfx_smash64_blow_med);
	set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, sfx_smash64_blow_med);
	set_hitbox_value(AT_UTILT, 1, HG_HITSTUN_MULTIPLIER, 1.5);
	set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 0);
	set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -52);
	set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 120);
	set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 145);
} else {
	set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, sfx_kirby_swipe1);
	set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
	set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
	set_hitbox_value(AT_UTILT, 1, HG_HITSTUN_MULTIPLIER, 1);
	set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 0);
	set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -52);
	set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 65);
	set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 65);
}

if (attack == AT_UTILT){
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x - (22 * spr_dir), y, "walk", spr_dir)
		}
	}
}

/*
if (attack == AT_UTILT){
	if (window == 1){
		if (window_timer == 3){
			spawn_hit_fx(x - 30, y - 60, pillow_hit_fx_sml)
			spawn_hit_fx(x + 30, y - 60, 302)
		}
	}
}
*/

//Down Tilt: Slide
if (attack == AT_DTILT){
	//can_jump = true
	can_fast_fall = false;
	if (has_rune("I")){
		set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED, 26);
		//move_cooldown[AT_DAIR] = 12
	} else {
		set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED, 15);
	}
	if (window != 1){
		if (free && dtilt_started_on_ground == true){
			set_state(PS_IDLE_AIR);
			if (hsp > 9){
				hsp = 10
			}
			if (hsp < -9){ //>
				hsp = -10
			}
			hsp *= 0.6
		}
	}
	if (window == 1){
		if (window_timer == 3){
			clear_button_buffer(PC_ATTACK_PRESSED);
		}
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x - (20 * spr_dir), y, "dash_start", spr_dir)
		}
	}
	if (has_hit == true && was_parried == false){
		//can_jump = true;
	}
	if (was_parried == true){
		hsp = 0
	}
	if (has_rune("I") && dtilt_started_on_ground == false){
		vsp = 0
	}
}

if (attack == AT_EXTRA_2){
	hurtboxID.sprite_index = sprite_get("sleep_hurtbox");
	if (window == 1){
		set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("roll_backward"));
		set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, sprite_get("sleep_hurtbox"));
		if (window_timer == 0){
			hsp = 0
			vsp = 0
		}
		if (window_timer == 1){
			window = 2
			window_timer = 0
			vsp = -8
			hsp = 0
			spawn_base_dust( x + (0 * spr_dir), y, "jump", spr_dir)
		}
	} else if (window == 2){
		set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("roll_backward"));
		set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, sprite_get("sleep_hurtbox"));
		hsp = 0
		if (window_timer == 16){
			set_attack( AT_NAIR );
			window = 8
			window_timer = 0
		}
	}
}

//Neutral Air: Spinning Pillow Dive
if (attack == AT_NAIR){
	set_hitbox_value(AT_JAB, 4, HG_DAMAGE, 10);
	set_hitbox_value(AT_JAB, 4, HG_ANGLE, 45);
	set_hitbox_value(AT_JAB, 4, HG_BASE_KNOCKBACK, 9);
	set_hitbox_value(AT_JAB, 4, HG_KNOCKBACK_SCALING, 0.7);
	set_hitbox_value(AT_JAB, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
	set_hitbox_value(AT_JAB, 4, HG_VISUAL_EFFECT, pillow_hit_fx_lrg);
	if (has_rune("B")){
		can_jump = true
		set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 5);
		set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 5);
		set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 5);
		set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 10);
		set_hitbox_value(AT_NAIR, 2, HG_ANGLE_FLIPPER, 10);
		set_hitbox_value(AT_NAIR, 3, HG_ANGLE_FLIPPER, 10);
	} else {
		can_jump = false
		set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 3);
		set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 3);
		set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 3);
		set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 0);
		set_hitbox_value(AT_NAIR, 2, HG_ANGLE_FLIPPER, 0);
		set_hitbox_value(AT_NAIR, 3, HG_ANGLE_FLIPPER, 0);
	}
	if (window == 1){
		set_attack_value(AT_NAIR, AG_CATEGORY, 1);
		nair_loop = 0
	}
	if (window == 2){
		set_attack_value(AT_NAIR, AG_CATEGORY, 2);
		if (!free){
			spawn_base_dust(x, y, "land", 0);
			sound_play(sfx_landinglag);
			set_attack(AT_JAB);
			window = 7
			window_timer = 3
			destroy_hitboxes();
			set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));
			sound_stop(sfx_hammer_swipe_spin);
			sound_play(sfx_landinglag);
		}
		if (window_timer == 6){
			if (nair_loop != 2){
				nair_loop++;
				attack_end();
				window_timer = 0
			}
			if (nair_loop == 2){
				if (has_rune("B") && attack_down){
					attack_end();
					nair_loop = 0
					window_timer = 0
					sound_stop(sfx_hammer_swipe_spin)
					sound_play(sfx_hammer_swipe_spin)
				}
			}
		}
	}
	if (window == 3){
		set_attack_value(AT_NAIR, AG_CATEGORY, 1);
	}
	if (window == 8){
		state = PS_IDLE_AIR;
		hurtboxID.sprite_index = sprite_get("sleep_hurtbox");
	}
}

//Forward Air
if (attack == AT_FAIR){
	if (window == 1){
		if (window_timer == 10){
			//sound_play(sfx_kirby_swipe3, false, noone, 1.2, 1.05);
		}
	}
}

//Down Air: Spin Drill
if (attack == AT_DAIR){
	if (window == 1){
		if (shield_pressed && has_rune("I")){
			hsp = 0
			vsp = 0
			dtilt_started_on_ground = false
			clear_button_buffer(PC_SHIELD_PRESSED);
			set_attack(AT_DTILT);
		}
	}
}

//Back Air: Backward Dropkick
if (has_rune("C")){
	set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -42);
	set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -24);
	set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 143);
	set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 80);
} else {
	set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -40);
	set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -16);
	set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 34);
	set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 20);
}

//Forward Strong
if (attack == AT_FSTRONG){
	if (has_rune("F")){
		set_attack_value(AT_FSTRONG, AG_CATEGORY, 2);
		set_attack_value(AT_FSTRONG, AG_OFF_LEDGE, 1);
	} else if (has_rune("F") == false){
		set_attack_value(AT_FSTRONG, AG_CATEGORY, 0);
		set_attack_value(AT_FSTRONG, AG_OFF_LEDGE, 0);
	}
	if (window == 1){
		fstrong_charge = (strong_charge / 4)
		//fstrong_charge = fstrong_charge * -1
	}
	if (window == 2){
		if (window_timer == 3){
			if (has_rune("F")){
				hsp = (40 + (fstrong_charge * 3)) * spr_dir
			} else if (has_rune("F") == false){
				hsp = (7 + fstrong_charge) * spr_dir
			}
		}
		if (has_rune("F")){
			can_jump = true
		}
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) {
			sound_play(asset_get("sfx_jumpground"));
			if (fstrong_charge > 12.5){
				spawn_base_dust( x + (0 * spr_dir), y, "dash_start", spr_dir)
			} else if (fstrong_charge < 12.5 && fstrong_charge > 5.5){
				spawn_base_dust( x + (0 * spr_dir), y, "dash", spr_dir)
			} else if (fstrong_charge < 5.5){//>
				spawn_base_dust( x + (0 * spr_dir), y, "walk", spr_dir)
			}
		}
	}
	if (window == 3){
		if (has_rune("F")){
			can_jump = true
		}
	}
	if (window == 4){
		fstrong_charge = 0
	}
}

//Up Strong
if (attack == AT_USTRONG){
	if (window == 2){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x + (18 * spr_dir), y, "jump", spr_dir * -1)
		}
	}
	if (window == 4){
		if (has_hit == true){
			if (window_timer == 8){
				sound_play(sfx_bounce);
				spawn_base_dust( x + (4 * spr_dir), y, "dash", spr_dir * -1)
				spawn_base_dust( x - (10 * spr_dir), y, "dash", spr_dir * 1)
			}
		} else {
			if (window_timer == 14){
				sound_play(sfx_bounce);
				spawn_base_dust( x + (4 * spr_dir), y, "dash", spr_dir * -1)
				spawn_base_dust( x - (10 * spr_dir), y, "dash", spr_dir * 1)
			}
		}
	}
}

//Down Strong
if (attack == AT_DSTRONG){
	if (window == 2){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x + (42 * spr_dir), y, "dash", spr_dir * -1)
		}
	}
	if (window == 4){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x - (36 * spr_dir), y, "dash", spr_dir)
		}
	}
}

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//Neutral Special: Burst Bubble
if (attack == AT_NSPECIAL){
	if (window == 1){
		burst_bubble_hit = false
		burst_bubble_can_move = false
		set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 3);
		if (window_timer == 8 && burst_bubble_is_charged == true){
			burst_bubble_is_charged = false
			sound_play(sfx_charge_max);
			spawn_hit_fx( x, y - 12, burst_bubble_charged_vfx );
			window = 6
			window_timer = 0
			set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 7);
		}
	}
    if (window == 2){
		burst_bubble_can_move = true
		if (window_timer == 2){
			if (has_rune("G")){
				window = 4
				window_timer = 0
				sound_stop(sfx_charge);
			}
		}
        if (window_timer == 25){
			if (burst_bubble_charge_count != 0){		
				burst_bubble_charge_count++;
				window_timer = 0
			} else {
				window = 4
				window_timer = 0
				sound_stop(sfx_charge);
			}
	    }
		if (!special_down){
			window = 3
			window_timer = 0
			sound_stop(sfx_charge);
			burst_bubble_charge_count = 0
			set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 7);
		}
    }
	if (window == 3){
		burst_bubble_can_move = false
		set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 3);
	}
	if (window == 4){
		burst_bubble_can_move = false
		burst_bubble_charge_count = 0
		if (window_timer == 6){
			sound_play(sfx_charge_max);
			spawn_hit_fx( x, y - 12, burst_bubble_charged_vfx );
			burst_bubble_is_charged = true
			window = 5
			window_timer = 0
		}
	}
	if (window == 5){
		burst_bubble_can_move = true
		if (!special_down){
			window = 6
			window_timer = 0
		}
		if (shield_pressed || shield_down){
			window = 3
			window_timer = 0
			sound_play(sfx_charge_mid);
			spawn_hit_fx( x, y - 12, burst_bubble_charged_vfx );
		}
		if (window_timer == 25){
			window_timer = 0
		}
	}
	if (window == 6){
		burst_bubble_can_move = false
		if (window_timer == 3){
			window++;
			window_timer = 0
			hsp = -2.5 * spr_dir
		}
	}
	if (window == 7){
		burst_bubble_is_charged = false
		burst_bubble_can_move = false
		move_cooldown[AT_NSPECIAL] = 80;
		if (window_timer < 8){
			if ((spr_dir == 1 && left_down && !right_down) || (spr_dir == -1 && !left_down && right_down)){
				//Speed boost!!!
				hsp = -7 * spr_dir
			} else {
				//No speed boost :sadsponge:
				hsp = -3 * spr_dir
			}
			can_move = true;
		}
		if (free){
			can_move = true;
		}
		if (!free && window_timer == 8){
			sound_play(sfx_waveland);
			spawn_base_dust( x - (40 * spr_dir), y, "walk", spr_dir * 1)
		}
	}
	if (burst_bubble_can_move == true){
		if (left_down){
			hsp = -1
		}
		if (right_down){
			hsp = 1
		}
		if (jump_pressed && !free){
			vsp = -6.5
			sound_play(sfx_jump);
		}
	}
}

if (attack == AT_FSPECIAL){
	if (window == 1){
		set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);
		if (window_timer == 4){
			sound_play(asset_get("sfx_jumpground"));
		}
		if (window_timer == 19 && !free && !has_rune("L")){
			spawn_base_dust( x + (52 * spr_dir), y, "dash_start", spr_dir * -1)
		} else if (window_timer == 1 && !free && has_rune("L")){
			spawn_base_dust( x + (52 * spr_dir), y, "dash_start", spr_dir * -1)
		}
	}
    if (window == 3){
        if (window_timer == 20){
			spawn_hit_fx( x + 50  * spr_dir, y - 12, pillow_hit_fx_sml );
		}
    }
	if (window == 5){
		if (window_timer == 6){
			set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 2);
		}
	}
}

//Up Special
if (attack == AT_USPECIAL){
	prat_land_time = 10;
	if (!free){
		y = y - 24
	}
	can_wall_jump = true;
	if (window == 1){
		set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
		if (window_timer == 1 || window_timer == 0){
			sound_play(asset_get("sfx_forsburn_cape_swipe"));
			if (!free){
				//y = y - 24
			}
		}
		if (window_timer == 11){
			sound_play(asset_get("sfx_swipe_medium2"));
		}
		if (window_timer == 12){
			y = y - 12
			x = x + 10 * spr_dir
			create_hitbox(AT_USPECIAL, 2, x - 10 * spr_dir, y + 12);
			window++;
			window_timer = 1
			vsp = -11
			hsp = 2.5 * spr_dir
		}
	}
	if (window == 2){
		set_attack_value(AT_USPECIAL, AG_CATEGORY, 1);
		if (window_timer == 9){
			window = 3
			window_timer = 1
		}
	}
	if (window == 3){
		set_attack_value(AT_USPECIAL, AG_CATEGORY, 1);
		if (window_timer == 1){
			//vsp = 0
		}
	}
}

//Down Special: Sleep Copy Essence
if (attack == AT_DSPECIAL){
	copy_essence_hit = 0
    if (window == 1){
		if (window_timer == 4 && !free){
			vsp = -3
		}
		if (window_timer == 12){
			if (essences_in_use !=  essences_max_limit){
				window = 2
				window_timer = 0
				y = y - 26
				vsp = -7
				sound_play(sfx_teleport);
				essence_out = true
				instance_create(x + 0 * spr_dir, y + 18, "obj_article1");
			}
		}
	}
}

//Taunt
if (attack == AT_TAUNT){
	if (window == 2){
		if (window_timer == 22){
			spawn_base_dust( x + (22 * spr_dir), y, "walk", 1)
			spawn_base_dust( x + (22 * spr_dir), y, "walk", -1)
			window = 3
			window_timer = 0
		}
	}
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