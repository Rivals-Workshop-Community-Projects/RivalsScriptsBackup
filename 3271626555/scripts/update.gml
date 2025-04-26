current_sprite_set = stamina_dash;


//DSpecial "Comand Grab"
if (backstab_grab == true){
    hit_player_obj.spr_dir = spr_dir;
	hit_player_obj.hitstop = 1;
	hit_player_obj.x = lerp(hit_player_obj.x, x+60*spr_dir, 0.4);
	hit_player_obj.y = lerp(hit_player_obj.y, y-5, 0.4);
}
if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR) || (attack != AT_DSPECIAL){
    backstab_grab = false;
    ustrong_grab = false;
}

if (attack == AT_DSPECIAL_AIR){
	if window == 4 && window_timer == 0{
        sound_play(asset_get("sfx_shovel_hit_med2"));
        with pHitBox {
                    if player_id == other and attack == AT_DSPECIAL_AIR and type == 1 {
                        destroyed = true;
                        instance_destroy();
                    }
                }
    }
}

if ((state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD || state == PS_TECH_BACKWARD || state == PS_TECH_FORWARD) 
&& state_timer == 4) stamina += 6.5;
//If Stamina isn't full
if (stamina > 0){
	
	if (stamina >= 29){
		roll_forward_max = 7;
		roll_backward_max = 7;
		techroll_speed = 7;
	}
	
	//If stamina is empty (Enters a cooldown period)
	if (stamina >= 30){
		if (stamina_cooldown != stamina) stamina = 40;	//Extra cooldown when the stamina empties
		//Moves enter cooldown
		move_cooldown[AT_JAB] = stamina;
		move_cooldown[AT_NAIR] = stamina;
		move_cooldown[AT_FSTRONG] = stamina;
		move_cooldown[AT_DSTRONG] = stamina;
		move_cooldown[AT_USTRONG] = stamina;
		move_cooldown[AT_NSPECIAL] = stamina;
		move_cooldown[AT_NSPECIAL_2] = stamina;
		move_cooldown[AT_FSPECIAL] = stamina+10;
		move_cooldown[AT_FSPECIAL_AIR] = stamina+10;
		move_cooldown[AT_DSPECIAL] = stamina;
		move_cooldown[AT_DSPECIAL_AIR] = stamina;
	} 
	//Stamina only fills if not perfoming attacks, rolls or dashes
	if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR && state != PS_DASH && state != PS_DASH_TURN && state != PS_PRATFALL
	&& state != PS_PRATLAND && state != PS_DASH_START && state != PS_ROLL_FORWARD && state != PS_ROLL_BACKWARD 
	&& state != PS_TECH_BACKWARD && state != PS_TECH_FORWARD && state != PS_HITSTUN){
		if (stamina_cooldown < stamina) stamina_cooldown += 0.5;
		if (stamina_cooldown >= stamina){
			stamina_cooldown = stamina;
			stamina -= 0.25;
		} 
		if (stamina_cooldown == 40){
			stamina_cooldown = 30;
			stamina = 30;
		}
	}
	if (state == PS_DASH_START || state == PS_DASH || state == PS_DASH_TURN){
		if (stamina_cooldown < stamina) stamina_cooldown += 0.25;
		if (stamina_cooldown >= stamina){
			stamina_cooldown = stamina;
			stamina -= 0.15;
		} 
	}
	/*
	else {
		if (state == PS_ATTACK_GROUND && (attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG)){
			//
		}
		else {
			if (stamina_cooldown < stamina) stamina_cooldown += 0.15;
			if (stamina_cooldown >= stamina){
				stamina_cooldown = stamina;
				stamina -= 0.1;
			} 
		}
	} */
}

if (stamina <= 22.5){
	roll_forward_max = 11;
	roll_backward_max = 11;
	techroll_speed = 11;
}

if (state == PS_SPAWN) {
	if (shield_pressed && indicator == true){
		indicator = false;
		sound_play(asset_get("mfx_place_marker"));	
	}
}

if (state == PS_RESPAWN){
    i_died = true;
}
if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR && state != PS_RESPAWN){
    i_died = false;
}