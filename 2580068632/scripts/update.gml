//update.gml

//Munophone
muno_event_type = 1;
user_event(14);

//Sleep Kirby Hat Offsets
if (free){
	//Air Hat Offsets
	sleep_kirby_hat_offset_x = 0; //
	sleep_kirby_hat_offset_y = 0; //
	sleep_kirby_has_sleep_sprites = false; //Set this to true to enable custom sleep sprites.
	sleep_kirby_sleep_sprite_ground = sprite_get("hurtground")
	sleep_kirby_sleep_sprite_air = sprite_get("hurt")
} else if (!free){
	//Grounded Hat Offsets
	sleep_kirby_hat_offset_x = 0; //
	sleep_kirby_hat_offset_y = 0; //
	sleep_kirby_has_sleep_sprites = false; //Set this to true to enable custom sleep sprites.
	sleep_kirby_sleep_sprite_ground = sprite_get("hurtground")
	sleep_kirby_sleep_sprite_air = sprite_get("hurt")
}

//Voiced Mode
if (get_training_cpu_action() != CPU_FIGHT){
	if (phone_cheats[CHEAT_VOICED] == 1){
		voiced = 1
	} else if (phone_cheats[CHEAT_VOICED] == 0){
		voiced = 0
	}
} else if (get_training_cpu_action() == CPU_FIGHT){
	if (normal_voiced_toggle == 1){
		voiced = 1
	} else if (normal_voiced_toggle == 0){
		voiced = 0
	}
}

switch (state){
	case PS_SPAWN:
		//Voiced Mode
		if (state == PS_SPAWN && state_timer <= 100 && normal_voiced_toggle == 0 && taunt_pressed && get_training_cpu_action() == CPU_FIGHT){
			normal_voiced_toggle = 1
			sound_play(asset_get("mfx_star"));
			sound_play(vc_mk_taunt_1);
		}
		
		//Input Swap Toggle
		if (state == PS_SPAWN && state_timer <= 100 && inputs_swapped_toggle == false && (up_strong_pressed||down_strong_pressed||left_strong_pressed||right_strong_pressed)){
			inputs_swapped_toggle = true;
			sound_play(asset_get("mfx_star"));
		}
		break;
	case PS_IDLE:
		//
		break;
	case PS_CROUCH:
		//Crouch Sound Effect.
		if (state_timer == 2){
			sound_play(sfx_crouch);
		}
		break;
	case PS_WALK:
		//
		break;
	case PS_DASH_START:
		//
		break;
	case PS_DASH_STOP:
		//
		break;
	case PS_DASH_TURN:
		//
		break;
	case PS_JUMPSQUAT:
		//
		if (state_timer == 3){
			if (voiced == true){
				var jumpvc = random_func( 1, 3, true );
				switch (jumpvc){
					case 1:
						sound_play(vc_mk_jump)
						break;
				}
			}
		}
		break;
	case PS_FIRST_JUMP:
		//
		break;
	case PS_DOUBLE_JUMP:
		break;
	case PS_WALL_JUMP:
		//
		wings_out = false;
		sound_stop(sfx_condor_dive);
		move_cooldown[AT_FSPECIAL] = 0;
		move_cooldown[AT_USPECIAL] = 0;
		move_cooldown[AT_DSPECIAL] = 0;
		break;
	case PS_LANDING_LAG:
		//
		if (attacking_out_of_shuttle_loop == true && !has_hit){
			sound_stop(landing_lag_sound);
			set_state(PS_PRATLAND);
		}
		break;
	case PS_AIR_DODGE:
		//Stopping the Jump Sound Effect Airdodge.
		sound_stop(sfx_jump);	
		
		//
		move_cooldown[AT_JAB] = 3;
		move_cooldown[AT_FTILT] = 3;
		move_cooldown[AT_UTILT] = 3;
		move_cooldown[AT_DTILT] = 3;
		move_cooldown[AT_DATTACK] = 3;
		move_cooldown[AT_FSTRONG] = 3;
		move_cooldown[AT_USTRONG] = 3;
		move_cooldown[AT_DSTRONG] = 3;
		
		//a
		if (airdodging_out_of_shuttle_loop){
			if (window == 2 && window_timer == 11){
				set_state(PS_PRATFALL);
			}
		}
		
		break;
	case PS_WAVELAND:
		if (state_timer == 0){
			sound_stop(sfx_airdodge)
			sound_stop(sfx_jump)
		}
		if (airdodging_out_of_shuttle_loop == true){
			prat_land_time = 25;
			airdodging_out_of_shuttle_loop = false;
			set_state(PS_PRATLAND);
			sound_stop(landing_lag_sound);
		}
		break;
	case PS_PARRY:
		if (state_timer == 0){
			sound_play(sfx_parry);
			//sound_stop(asset_get("sfx_parry_use"));
		}	
		break;
}

if !(url == 2580068632) {
	player = -1
}

if (jump_pressed){
	wing_jump_timer = 2
}

if (wing_jump_timer != 0){
	wing_jump_timer--;
}

if (!free){
	move_cooldown[AT_FSPECIAL] = 0;
	move_cooldown[AT_USPECIAL] = 0;
	move_cooldown[AT_DSPECIAL] = 0;
	if (state != PS_LANDING_LAG){
		attacking_out_of_shuttle_loop = false;
	}
	if (state != PS_WAVELAND){
		airdodging_out_of_shuttle_loop = false;
	}
	
	wings_out = false;
}

if (state != PS_PRATLAND){
	prat_land_time = 20;
}

//brawl frame data rune :troll:
if (brawl_mode){

	voiced = 1

	//jab
	set_window_value(AT_JAB, 8, AG_WINDOW_LENGTH, 8);
	
	//dattack
	set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 4);
	set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, 2);
	set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 20);
	
	//ftilt
	
	//utilt
	set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 4);
	set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 2);
	set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 8);
	
	//dtilt
	set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 2);
	set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 6);
	set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 1);
	
	//nair
	set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 2);
	set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 1);
	
	//fair
	set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 5);
	set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 3);
	
	//uair
	set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 1);
	set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 0);
	set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 6);
	
	//dair
	set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 3);
	set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 8);
	set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 2);
	
	//bair
	set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 5);
	set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 3);
	
	//fstrong
	set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 9);
	
	//ustrong
	set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 3);
	set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 3);
	set_window_value(AT_USTRONG, 8, AG_WINDOW_LENGTH, 12);
	set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX_FRAME, 2);
	
	//dstrong
	set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 2);
	set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 2);
	
	//nspecial
	set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 1);
	set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.5);
	set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE_FLIPPER, 6);
	set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_GROUP, -1);
	
	set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 1);
	set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.5);
	set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE_FLIPPER, 6);
	set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_GROUP, -1);
	
	set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 1);
	set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.5);
	set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE_FLIPPER, 6);
	set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_GROUP, -1);
	
	set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, sfx_smash_ult_sword_hit_weak);
	set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, sfx_smash_ult_sword_hit_weak);
	set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, sfx_smash_ult_sword_hit_weak);
	
	set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 0.9);
	set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, .1);
	set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 0.9);
	set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, .1);
	set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 0.9);
	set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, .1);
	
	//fspecial
	
	//uspecial
	set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_brawl_hurt"));
	set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 9);
	set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 1);
	
	//dspecial
	set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 9);
	set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, .6);
}

//i can now know how much gems sk has :smiling_imp:
/*
with asset_get("oPlayer"){
	if (variable_instance_exists(id, "gems") && variable_instance_exists(id, "gems") && id != other.id){
		vsp = -4
	}
}
*/