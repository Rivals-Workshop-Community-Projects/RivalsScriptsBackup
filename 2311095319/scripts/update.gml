//update.gml

phone_voiced_toggle = phone_cheats[cheat_voice];

max_djumps = phone_cheats[cheat_more_djumps];

fireball_charge_needed_for_firebrand = phone_cheats[cheat_insta_fire];

tornado_cheat_active = phone_cheats[cheat_mario_tornado];

da_cheat_active = phone_cheats[cheat_da_jc];

fair_cheat_active = phone_cheats[cheat_fair_very_funy];

if (phone_practice == true){
	if (phone_voiced_toggle == 1){
		voiced = 1
	} else if (phone_voiced_toggle == 0){
		voiced = 0
	}
} else if (phone_practice == false){
	if (normal_voiced_toggle == 1){
		voiced = 1
	} else if (normal_voiced_toggle == 0){
		voiced = 0
	}
}

if (fair_cheat_active == true){

	//very funy

	set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 12);
	set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 270);
	set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, 0.9);
	
	set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 12);
	set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 270);
	set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, 0.9);	
} else {

	//not very funy (big sad)

	set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 7);
	set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 60);
	set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, 0.65);	
	
	set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 7);
	set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 70);
	set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, 0.7);	
	
}

//Setting Victory Background
set_victory_bg(sprite_get("victory_background"));

//Changing Nspecial Damage if Firebrand
if (hasfirebrand == true){
	set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 1);
	set_hitbox_value(AT_NSPECIAL, 7, HG_DAMAGE, 1);
	set_hitbox_value(AT_NSPECIAL, 9, HG_DAMAGE, 1);
} else if (hasfirebrand == false){
	set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 5);
	set_hitbox_value(AT_NSPECIAL, 7, HG_DAMAGE, 5);
	set_hitbox_value(AT_NSPECIAL, 9, HG_DAMAGE, 5);
}

//Reseting Fspecial Cooldown
if (!free){
	//move_cooldown[AT_FSPECIAL] = 0;
	//move_cooldown[AT_NAIR] = 0;
	//move_cooldown[AT_FAIR] = 0;
	//move_cooldown[AT_UAIR] = 0;
	//move_cooldown[AT_DAIR] = 0;
	//move_cooldown[AT_BAIR] = 0;
	//max_djumps = 1
}

//Down Special (Mario Tornado)
if (!free){
	tornadoused = false
}

deathvoiceline = random_func( 0, 5, true );

switch (state){
	case PS_SPAWN:
		//Turning on Voiced Mode Normally.
		if (state_timer <= 100 && voiced == 0 && taunt_pressed && phone_practice == false){//>
			voiced = 1
			sound_play(sfx_coin);
			sound_play(vc_mario_herewego);
		}
		break;
	case PS_CROUCH:
		//Crouch Sound Effect.
		if (state_timer == 2){
			sound_play(sfx_crouch);
		}
		break;
	case PS_DASH_START:
		if (state_timer == 0){
			//sound_play(sfx_dashstart);
		}	
		break;
	case PS_DASH_STOP:
		//Dash Stop Sound Effect.
		if (state_timer == 2){
			sound_play(sfx_dashstop);
		}	
		break;
	case PS_JUMPSQUAT:
		if (state_timer == 3 && voiced == 1){
			sound_play(vc_mario_jump);
		}
		break;
	case PS_FIRST_JUMP:
		//
		break;
	case PS_DOUBLE_JUMP:
		//Stopping the Dash Attack Sound Effect
		if (state == PS_DOUBLE_JUMP){
			sound_stop(sfx_dattack);
		}
		if (state_timer == 0){
			if (voiced == 1){
				sound_stop(vc_mario_doublejump);
				sound_play(vc_mario_doublejump);
			}
		}
		break;
	case PS_WALL_JUMP:
		//Reseting Mario Tornado usage and playing a sound effect.
		tornadoused = false
		if (state_timer == 1){
			sound_play(sfx_walljump)
		}
		break;
	case PS_LANDING_LAG:
		//Removing Firebrand charge if Mario lands during aerial Mario Tornado with Firebrand.
		if (attack == AT_DSPECIAL){
			hasfirebrand = false
		}	
		break;
	case PS_AIR_DODGE:
		//Stopping the Jump Sound Effect if Mario Airdodges.
		sound_stop(sfx_jump);	
		break;
	case PS_WAVELAND:
		if (state_timer == 0){
			sound_stop(sfx_airdodge)
			sound_stop(sfx_jump)
		}	
		break;
}

//Reseting Down Air Counter
if (!free){
	dairtimeshit = 0
}

if !(url == 2311095319) {
	player = -1
}

//Shadow Mario Sprite Swap for Fsmash
if (shadowmario == true){
	sfx_hammer_land = asset_get("sfx_poison_hit_med");
	sfx_hammer_swing = asset_get("sfx_shovel_swing_med1");
	sfx_hammer_hit_normal = asset_get("sfx_poison_hit_strong")
	sfx_hammer_hit_spike = asset_get("sfx_poison_hit_weak")
	set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, sfx_hammer_swing);
	set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sfx_hammer_hit_normal);
	set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, sfx_hammer_hit_spike);
	set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong_paintbrush"));
} else if (shadowmario == false){
	sfx_hammer_land = sound_get("sfx_hammer_land");
	sfx_hammer_swing = sound_get("sfx_hammer_swing");
	sfx_hammer_hit_normal = asset_get("sfx_shovel_hit_heavy2")
	sfx_hammer_hit_spike = asset_get("sfx_shovel_hit_heavy1")
	set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, sfx_hammer_swing);
	set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sfx_hammer_hit_normal);
	set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, sfx_hammer_hit_spike);
	set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
}

//MunoPhone
user_event(14);