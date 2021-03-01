//update.gml

max_djumps = phone_cheats[cheat_more_djumps];

fireball_charge_needed_for_firebrand = phone_cheats[cheat_insta_fire];

tornado_cheat_active = phone_cheats[cheat_mario_tornado];

da_cheat_active = phone_cheats[cheat_da_jc];

fair_cheat_active = phone_cheats[cheat_fair_very_funy];

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

if (state == PS_LANDING_LAG){
	if (attack == AT_DSPECIAL){
		hasfirebrand = false
	}
}

//Actually playing the Jump Sound Effect
if (state == PS_FIRST_JUMP && state_timer == 1){
	sound_play(sfx_jump);
}

//Stopping the Jump Sound Effect if Mario Airdodges
if (state == PS_AIR_DODGE && state_timer == 1){
	sound_stop(sfx_jump);
}

//Crouch Sound Effect
if (state == PS_CROUCH){
	if (state_timer == 2){
		sound_play(sfx_crouch);
	}
}

//Dash Stop Sound Effect
if (state == PS_DASH_STOP){
	if (state_timer == 2){
		sound_play(sfx_dashstop);
	}
}

//Stopping the Dash Attack Sound Effect
if (state == PS_DOUBLE_JUMP){
	sound_stop(sfx_dattack);
}

//walljump stuff
if (state == PS_WALL_JUMP){
	tornadoused = false
	if (state_timer == 1){
		sound_play(sfx_walljump)
	}
}

//Reseting Down Air Counter
if (!free){
	dairtimeshit = 0
}

if !(url == 2311095319) {
	player = -1
}

//Stopping Airdodge Sound on Wavedash
if (state == PS_WAVELAND){
	sound_stop(sfx_airdodge)
	sound_stop(sfx_jump)
}

if (state == PS_WALL_JUMP){
	tornadoused = false
}

//MunoPhone
user_event(14);