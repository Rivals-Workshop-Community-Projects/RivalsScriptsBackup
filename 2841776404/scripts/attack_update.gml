//B - Reversals
switch(attack){
	case AT_NSPECIAL:
	case AT_FSPECIAL:
	case AT_DSPECIAL:
	case AT_USPECIAL:
		trigger_b_reverse();
		break;
}

if (attack_charged){
	//NSpecial
	/*set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 3);
	set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 0);*/
	//FSpecial
	//set_window_value(AT_FSPECIAL, 5, AG_WINDOW_SFX, sound_get("sfx_jet_big"));
	//set_window_value(AT_FSPECIAL, 5, AG_WINDOW_SFX, sound_get("sfx_jet_big"));
	set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED, 16);
	set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 21);
	//set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 12);
	set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED, 14);
	set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 25);
	set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 8);
	set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, .7);
	set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
	//USpecial
	//set_window_value(AT_USPECIAL, 5, AG_WINDOW_SFX, sound_get("sfx_jet_big"));
	set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED, -18);
	set_window_value(AT_USPECIAL, 6, AG_WINDOW_VSPEED, -16);
	set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 9);
	set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 9);
	set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, .85);
	set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
} else{
	//NSpecial
	set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 3);
	set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 0);
	//FSpecial
	reset_window_value(AT_FSPECIAL, 5, AG_WINDOW_SFX);
	reset_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED);
	reset_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START);
	reset_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH);
	reset_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED);
	reset_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START);
	reset_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE);
	reset_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK);
	reset_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING);
	reset_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX);
	//USpecial
	reset_window_value(AT_USPECIAL, 5, AG_WINDOW_SFX);
	reset_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED);
	reset_window_value(AT_USPECIAL, 6, AG_WINDOW_VSPEED);
	reset_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE);
	reset_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK);
	reset_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING);
	reset_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX);
	
}

if (attack == AT_DSTRONG){
	if (window == 2 && window_timer == 1){
		spawn_hit_fx(x + 52*spr_dir, y - 18, 21);
		sound_play(asset_get("sfx_absa_new_whip1"));
	}
}

if (attack == AT_DSPECIAL_AIR){
	if (window == 1){
		suit_detonated = false;
	}
	if (window == 2){
		if (!special_down or suit_power == 0){
			window = 3;
			window_timer = 0;
		}
		if (window_timer >= 20){
			//suit_detonated = true;
			if (window_timer == 20){
			sound_play(sound_get("sfx_suit_button"));
			}
			standby_suit.suit_power -= 8;
			standby_suit.recent_player = player;
		}
	}
	if (window == 3){
		if (instance_exists(standby_suit)){
			/*if (suit_detonated == true){
				standby_suit.suit_power = 0;
			}*/
		}
		if !suit_cooldown{
			if (window_timer > 10 && shield_down){
				set_attack(AT_DSPECIAL);
				window = 2;
				window_timer = 0;
			}
		}
	}
}

if (attack == AT_DSTRONG){
	if (window == 4 && has_hit){
		can_attack = true;
		can_special = true;
	}
}

if (attack == AT_USPECIAL_2){
	if (window == 1){
		flight_timer = 0;
		if (window_timer == 11){
			if (voice_chance < 2 or voice_chance > 7){
			sound_play(sfx_susie_yell);
			}
			sound_play(spin, true, noone, 1, 1);
		}
	}
	if (window == 2){
		if (left_down or right_down){
			window = 3;
			window_timer = 0;
		}
	}
	if (window == 3){
		if (left_down){
			spr_dir = -1;
			if (hsp > -5){
				hsp --;
			}
		}
		if (right_down){
			spr_dir = 1;
			if (hsp < 5){
				hsp ++;
			}
		}
		if (!left_down && !right_down){
			window = 2;
			window_timer = 0;
		}
	}
	if (window == 2 or window == 3){
		flight_timer ++;
		suit_power -= .5;
		if (shield_pressed == true or flight_timer >= 80 or suit_power <= 0){
			if (shield_pressed == true){
				sound_stop(sfx_susie_yell1);
				sound_stop(sfx_susie_yell2);
			}
			window = 4;
			window_timer = 0;
			sound_play(sound_get("sfx_spin_stop"));
		}
		if (free == true && vsp > 3 && down_down == false){
			vsp = 3;
		}
		/*if (free == true && jump_down or free == true && up_down){
			if (vsp > -8){
				vsp --;
			}
		}*/
		if (free == false){
			if (jump_pressed or up_down){
				vsp -= 12;
			}
		}
	}
	if (window == 4){
		sound_stop(spin);
	}
	if (window == 4 && window_timer == 11){
		if (has_hit or flight_timer < 60){
		if (free){
		set_state(PS_IDLE_AIR);
		} else set_state(PS_IDLE);
	}
	if !has_hit && flight_timer >= 60{
		set_state(PS_PRATFALL);
	}
	}
}

if (jet_hit == true){
    //set_attack_value(AT_FAIR, AG_CATEGORY, 2);
}

// per-attack logic

switch(attack){
	
	// give your moves some "pop" by spawning dust during them!
	
	case AT_JAB:
		was_parried = false; // easy method for single-hit jabs
		if (window == 3){
			can_attack = true;
			move_cooldown[AT_JAB] = 10;
			if (attack_pressed && window_timer > 6 && !up_down && !down_down && !left_down && !right_down){
				window = 4;
				window_timer = 0;
			}
			if (!attack_pressed && window_timer >= 12){
				set_state(PS_IDLE);
			}
		}
	break;
	case AT_FTILT:
	break;
	case AT_DTILT:
		if window == 2{
			if (window_timer == 1 or window_timer == 3 or window_timer == 5 or window_timer == 7){
			spawn_base_dust(x - 4*spr_dir, y, "dash", 0);
			}
			if (has_hit){
				can_jump = true;
				move_cooldown[AT_DTILT] = 19;
				move_cooldown[AT_JAB] = 19;
				can_attack = true;
			}
		}
		if (window == 3){
			if (window_timer == 9){
				move_cooldown[AT_DTILT] = 0;
				move_cooldown[AT_JAB] = 0;
			}
		}
		break;
	case AT_UTILT:
		if window == 1 && window_timer == get_window_value( attack, window, AG_WINDOW_LENGTH ){
			//array_push(phone_dust_query, [x, y, "dash", spr_dir]);
			spawn_base_dust(x, y, "dash", spr_dir);
		}
		break;
	case AT_FSTRONG:
	if (window == 2){
		if (window_timer == 1){
			sound_play(asset_get("sfx_swipe_medium1"));
		}
	}
		/*if window == 2 && window_timer == phone_window_end{
			array_push(phone_dust_query, [x, y, "dash_start", spr_dir]);
		}*/
		if (window == 2){
			if (window_timer == 2){
			sound_play(asset_get("sfx_ell_small_missile_fire"));
			}
			if (window_timer == 4){
			sound_play(asset_get("sfx_zetter_fireball_fire"));
			}
		}
		if (window == 3 && window_timer == 16 && !hitpause){
			sound_play(asset_get("sfx_burnapplied"));
		}
		break;
	case AT_USTRONG:
	if (window == 2 && window_timer == 5){
		sound_play(asset_get("sfx_bird_upspecial"));
		sound_play(asset_get("sfx_bird_nspecial2"));
	}
		/*if window == 2 && window_timer == phone_window_end{
			array_push(phone_dust_query, [x, y, "dash_start", spr_dir]);
			array_push(phone_dust_query, [x, y, "dash_start", -spr_dir]);
		}*/
		break;
	
	
	
	case AT_NSPECIAL:
	if (window == 1){
		if (window_timer == 8){
			//sound_stop(sfx_charge_start);
			window = 3;
			window_timer = 0;
			//}
			if (!attack_charged){
				sound_play(sfx_charge_loop, true, noone, 1, 1);
			}
		}
	}
	if (window == 2){
		can_shield = true;
		if (attack_charge < max_charge){
		attack_charge ++;
		}
		if (!special_down){
			window = 3;
			window_timer = 0;
		}
	}
	if (window == 3){
		sound_stop(sfx_charge_loop);
	}
	if (window == 4){
		if (attack_charge > 0){
			/*attack_charged = false;
			attack_charge = 0;*/
		}
		if (window_timer > 5){
			if (special_pressed){
				window = 3;
				window_timer = 0;
			}
		}
	}
	break;
	
	case AT_NSPECIAL_2:
	
	can_fast_fall = false;
	if (window == 1){
		can_wall_jump = true;
		if (window_timer == 6){
			if (voice_chance < 5){
			sound_play(sound_get("sfx_susie_grunt1"));
			}
		}
		nspecial_land_sound = false;
		sound_override = false;
	}
	if (window > 1 && window < 4){
		suit_power -= .5;
		can_wall_jump = true;
	}
	if (window == 2 or window == 3){
		if (left_down && hsp > -6){
			hsp -= .5;
		}
		if (right_down && hsp < 6){
			hsp += .5;
		}
	}
	if (window == 4){

	spawn_hit_fx(x - 16*spr_dir, y - 44, drill_trail).draw_angle = darctan2(-vsp*spr_dir, hsp*spr_dir);
	spawn_hit_fx(x, y - 44, drill_trail).draw_angle = darctan2(-vsp*spr_dir, hsp*spr_dir);
	spawn_hit_fx(x + 16*spr_dir, y - 44, drill_trail).draw_angle = darctan2(-vsp*spr_dir, hsp*spr_dir);
		
		if (down_down){
			fall_through = true;
			spawn_hit_fx(x + 32*spr_dir, y - 44, drill_trail).draw_angle = darctan2(-vsp*spr_dir, hsp*spr_dir);
			spawn_hit_fx(x - 32*spr_dir, y - 44, drill_trail).draw_angle = darctan2(-vsp*spr_dir, hsp*spr_dir);
		} else fall_through = false;
	}
	if (window == 5){
		if (free == false && nspecial_land_sound == false && sound_override == false){
			sound_play(asset_get("sfx_kragg_rock_shatter"));
			sound_play(sfx_drill_land);
			shake_camera( 12, 16 );
			nspecial_land_sound = true;
		}
	}
	break;
	
	case AT_FSPECIAL:
	if (window < 5){
		if (up_down){
		set_window_value(AT_FSPECIAL, 5, AG_WINDOW_VSPEED, -3);
		set_window_value(AT_FSPECIAL, 6, AG_WINDOW_VSPEED, -3);
		jet_fx_angle = 70;
		}
		if (down_down){
		set_window_value(AT_FSPECIAL, 5, AG_WINDOW_VSPEED, 3);
		set_window_value(AT_FSPECIAL, 6, AG_WINDOW_VSPEED, 3);
		jet_fx_angle = 110;
		}
		if (!up_down && !down_down){
			reset_window_value(AT_FSPECIAL, 5, AG_WINDOW_VSPEED);
			reset_window_value(AT_FSPECIAL, 6, AG_WINDOW_VSPEED);
			jet_fx_angle = 90;
		}
	}
		if (has_hit && jet_hit == false){
			jet_hit = true;
		}
		if (has_hit && free){
				move_cooldown[AT_FSPECIAL] = 9999;
		}
		can_move = false;
		can_fast_fall = false;
		switch(window){
			case 1:
			attack_charge ++;
			if (window_timer == 4){
				if (attack_charged == true){
				sound_play(sound_get("sfx_jet_big"));
					window = 5;
					window_timer = 0;
				spawn_base_dust(x - 30*spr_dir, y - 30, "jet djump", 0);
				}
			}
				break;
			case 2:
			can_shield = true;
			attack_charge ++;
			if (attack_charged){
				window = 3;
				window_timer = 0;
			}
			if (!special_down){
				sound_play(sound_get("sfx_jet"));
				window = 5;
				window_timer = 0;
			}
				break;
			case 3:
			if (!special_down){
				sound_play(sound_get("sfx_jet_big"));
				spawn_base_dust(x - 30*spr_dir, y - 30, "jet djump", 0);
				window = 5;
				window_timer = 0;
			}
				break;
			case 4:
			can_shield = true;
			if (!special_down){
				sound_play(sound_get("sfx_jet_big"));
				spawn_base_dust(x - 30*spr_dir, y - 30, "jet djump", 0);
				window = 5;
				window_timer = 0;
			}
			break;
			case 5:
			if (window_timer > 5 && has_hit){
				can_attack = true;
				can_jump = true;
				can_shield = true;
			 	attack_charged = false;
			 	attack_charge = 0;
			}
			 if (window_timer == 2 or window_timer == 4 or window_timer == 6 or window_timer == 8 or window_timer == 10 or window_timer == 12){
			spawn_dust_fx( x - 40*spr_dir, y - 40, sprite_get("jet_trail"), 16 );
			 }
			break;
			case 6:
			 if (window_timer == 2 or window_timer == 4 or window_timer == 6 or window_timer == 8 or window_timer == 10 or window_timer == 12){
			spawn_dust_fx( x - 40*spr_dir, y - 40, sprite_get("jet_trail"), 16 );
			 }
			 if (window_timer > 1){
			 	attack_charged = false;
			 	attack_charge = 0;
			 	if (has_hit){
			 		can_attack = true;
			 		can_jump = true;
			 		can_shield = true;
			 	}
			 }
			break;
			case 7:
			if (has_hit){
				can_attack = true;
				can_jump = true;
				can_shield = true;
			}
			
			if (free){
				move_cooldown[AT_FSPECIAL] = 9999;
			}
			if (window_timer >= 13 && !has_hit){
				state = PS_PRATFALL;
			}
			break;
		}
		break;
	case AT_FSPECIAL_2:
	if (window == 2){
		if (window_timer < 9){
			suit_power -= 1.5 ;
		}
	}
	break;
	
	
	
	case AT_USPECIAL:
		can_wall_jump = true;
		can_move = false;
		can_fast_fall = false;
		if (window < 5){
			if (left_down or right_down){
			set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED, 4.5);
			set_window_value(AT_USPECIAL, 6, AG_WINDOW_HSPEED, 4.5);
			set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 75);
			if (left_down){
			spr_dir = -1;
			}
			if (right_down){
				spr_dir = 1;
			}
			} else {
				
			set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED, 0);
			set_window_value(AT_USPECIAL, 6, AG_WINDOW_HSPEED, 0);
			set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 90);
			}
		}
		switch(window){
			case 1:
			attack_charge ++;
			if (window_timer == 4){
				if (attack_charged == true){
				sound_play(sound_get("sfx_jet_big"));
					window = 5;
					window_timer = 0;
				spawn_base_dust(x - 10*spr_dir, y, "djump", 0);
				}
			}
				break;
			case 2:
			can_shield = true;
			attack_charge ++;
			if (attack_charged){
				window = 3;
				window_timer = 0;
			}
			if (!special_down){
				sound_play(sound_get("sfx_jet_up"));
				window = 5;
				window_timer = 0;
			}
				break;
			case 3:
			if (!special_down){
				sound_play(sound_get("sfx_jet_big"));
				spawn_base_dust(x - 10*spr_dir, y, "djump", 0);
				window = 5;
				window_timer = 0;
			}
				break;
			case 4:
			can_shield = true;
			if (!special_down){
				sound_play(sound_get("sfx_jet_big"));
				spawn_base_dust(x - 10*spr_dir, y, "djump", 0);
				window = 5;
				window_timer = 0;
			}
			break;
			case 5:
			 if (window_timer == 2 or window_timer == 4 or window_timer == 6 or window_timer == 8 or window_timer == 10 or window_timer == 12){
			spawn_dust_fx( x - 20*spr_dir, y - 8, sprite_get("jet_trail"), 16 );
			 }
			break;
			case 6:
			 if (window_timer == 2 or window_timer == 4 or window_timer == 6 or window_timer == 8 or window_timer == 10 or window_timer == 12){
			spawn_dust_fx( x - 20*spr_dir, y - 8, sprite_get("jet_trail"), 16 );
			 }
			 if (window_timer > 1){
			 	attack_charged = false;
			 	attack_charge = 0;
			 }
			break;
			case 7:
			
			if (free){
				move_cooldown[AT_FSPECIAL] = 9999;
			}
			break;
		}
		break;
	
	
	
	case AT_DSPECIAL:
	if (window == 1){
		if (window_timer > 24 && shield_down && instance_exists(standby_suit)){
			window = 3;
			window_timer = 0;
		}
	}
		if (window == 2){
			if (window_timer < 5){
				attack_invince = true;
			}
			if (has_rock == false){
				has_rock = true;
			}
		}
		break;
		
		case AT_DSPECIAL_2:
		if (window == 2){
			if (window_timer > 2 && parried){
	            suit_out = true;
			    hurtbox_spr = asset_get("ex_guy_hurt_box");
				has_rock = false;
				standby_suit = instance_create(x, y, "obj_article1");
				cockpit_detector = instance_create(x, y, "obj_article2");
				y -= 32;
				spawn_hit_fx(x, y - 16, 144);
				sound_play(asset_get("sfx_ell_eject"));
				set_state(PS_IDLE_AIR);
				vsp -= 12;
				if (left_down){
					hsp -= 6;
				}
				if (right_down){
					hsp += 6;
				}
				dodge_cooloff = 20;
			}
		}
		if (window == 3){
			
			if (has_rock == true){
				has_rock = false;
			}
		}
		break;
	
	
	
	case AT_TAUNT:
		if window == 3 && !taunt_down{
			window = 4;
			window_timer = 0;
		}
		break;
	
	
	
	case AT_TAUNT_2:
		break;
	case AT_FAIR:
	if (window == 1){
		if (window_timer == get_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH)){
			if (voice_chance < 3){
			sound_play(sound_get("sfx_jet_cracker"));
			}
			spawn_hit_fx(x + 42*spr_dir, y - 30, flare);
			sound_play(asset_get("sfx_mol_flash_explode"));
		}
	}
	if (window == 2){
		if (window_timer == 4){
			spawn_hit_fx(x + 66*spr_dir, y - 36, flare);
			sound_play(asset_get("sfx_mol_flash_explode"));
		}
		if (window_timer == 8){
			spawn_hit_fx(x + 88*spr_dir, y - 28, flare);
			sound_play(asset_get("sfx_mol_flash_explode"));
		}
	}
	break;
	case AT_NAIR:
	if (has_hit){
		move_cooldown[AT_NAIR] = (window_time - window_timer) + next_window_time;
		can_attack = true;
		//can_special = true;
		can_jump = true;
	}
	break;
	case AT_NTHROW:
	if (window == 1 && window_timer == 7){
		if (free){
			vsp -= 2;
		}
	}
	break;
	case AT_FTHROW:
	if (window == 1 && window_timer == 15){
		if (free){
			vsp -= 2;
		}
	}
	break;
	case AT_DTHROW:
	if (window == 1){
		if (window_timer == 8 && !hitpause){
			sound_play(asset_get("sfx_ell_drill_loop"));
		}
		if (free && window_timer == 8){
			vsp -= 2;
		}
	}
	if (window == 2){
		if (window_timer == 4 && !hitpause){
			sound_play(asset_get("sfx_ell_drill_loop"));
		}
		if (window_timer == 8 && !hitpause){
			sound_play(asset_get("sfx_ell_drill_loop"));
		}
		if (window_timer == 12 && !hitpause){
			//sound_play(asset_get("sfx_ell_drill_loop"));
		}
		if (window_timer == 15 && !hitpause){
			//sound_play(asset_get("sfx_ell_drill_loop"));
		}
	}
	break;
	case AT_UTHROW:
	if (window == 1){
		if (window_timer == 11){
			sound_play(asset_get("sfx_swipe_weak1"));
		}
		if (free && window_timer == 11){
			vsp -= 2;
		}
	}
	if (window == 2){
		if (window_timer == 4){
		sound_play(asset_get("sfx_swipe_weak1"));
		}
		if (window_timer == 8){
		sound_play(asset_get("sfx_swipe_weak2"));
		}
		if (window_timer == 12){
		sound_play(asset_get("sfx_swipe_weak1"));
		}
		if (window_timer == 16){
		sound_play(asset_get("sfx_swipe_med1"));
		}
	}
	break;
}



#define beam_clash_logic

if !beam_clash_buddy.doing_goku_beam{
	beam_clash_buddy.beam_clash_buddy = noone;
	beam_clash_buddy = noone;
}
else{
	if beam_clash_timer >= beam_clash_timer_max{
		var winner = noone;
		if beam_length > beam_clash_buddy.beam_length{
			winner = self;
		}
		if beam_length < beam_clash_buddy.beam_length{
			winner = beam_clash_buddy;
		}
		if winner == self{
			window = 5;
			window_timer = 0;
		}
		else{
			beam_juice = 0;
		}
		if winner == beam_clash_buddy{
			
		}
		else{
			beam_clash_buddy.beam_juice = 0;
		}
	}
	else{
		beam_clash_timer++;
		if special_pressed{
			clear_button_buffer(PC_SPECIAL_PRESSED);
			beam_length += 32;
			beam_clash_buddy.beam_length -= 32;
			beam_juice = min(beam_juice + 20, beam_juice_max);
			beam_clash_buddy.beam_juice = max(beam_clash_buddy.beam_juice - 10, 10);
			sound_play(sfx_dbfz_kame_charge, false, noone, 1, 1 + beam_juice * 0.001);
		}
	}
}


#define spawn_base_dust // written by supersonic
/// @param {undefined} x
/// @param {undefined} y
/// @param {undefined} name
/// @param {undefined} dir = 0
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
	case "jet djump": dlen = 21; dfx = 2; dfg = 2624;  dfa = dir != 0 ? -jet_fx_angle*dir : -jet_fx_angle*spr_dir; break;
	case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
	case "land": dlen = 24; dfx = 0; dfg = 2620; break;
	case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
	case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
	case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
if newdust == noone return noone;
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;


