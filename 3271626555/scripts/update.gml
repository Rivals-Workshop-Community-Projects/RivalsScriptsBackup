current_sprite_set = stamina_dash;

if (instance_exists(hit_player_obj)){
	enemy_window = hit_player_obj.window;
	with (pHitBox){
		if (player_id = other.hit_player_obj) other.enemy_hitbox_out = true;
		else other.enemy_hitbox_out = false;
	}
	if (enemy_window == 1) enemy_hitbox_out = false;
}

with (oPlayer){
    if (player != other.player){
        if (state != PS_PRATFALL && state != PS_PRATLAND && prat_land_time = 60){
            prat_land_time = other.enemy_pratland;
        }
        if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)){
            var enemy_last_window = get_attack_value(attack, AG_NUM_WINDOWS); 
            if (other.enemy_window >= 2 && (other.enemy_window < enemy_last_window || other.i_got_hit == true)) other.enemy_attacks = true;
            else other.enemy_attacks = false;
        }
        else {
            other.enemy_attacks = false;
        }
        if (other.spr_dir == spr_dir){
            other.backstab = true;
        }
        else {
            other.backstab = false;
        }
    }
}
if (i_got_hit && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && (attack == AT_JAB || attack == AT_NAIR)) can_still_parry = true;
else {
	i_got_hit = false;
	can_still_parry = false;
}
if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR) i_got_hit = false;

if ((enemy_hitbox_out == true && enemy_attacks == true) || can_still_parry == true){
    set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 0);
    set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 1);
    set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 18);
    set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 0);
    set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 1);
    set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, 0);
    set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 18);
    set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, 0);
    set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 0);
    set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 1);
    set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 0);
    set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 18);
    set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, 0);
    set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_DAMAGE, 0);
    set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 1);
    set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, 0);
    set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 18);
    set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, 0);
//    set_hitbox_value(AT_JAB, 1, HG_EXTRA_HITPAUSE, 90);
}
else {
    reset_hitbox_value(AT_JAB, 1, HG_DAMAGE);
    reset_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK);
    reset_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE);
    reset_hitbox_value(AT_NAIR, 1, HG_DAMAGE);
    reset_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK);
    reset_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING);
    reset_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE);
    reset_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING);
    reset_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE);
    reset_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK);
    reset_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING);
    reset_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE);
    reset_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING);
    reset_hitbox_value(AT_FSPECIAL_AIR, 1, HG_DAMAGE);
    reset_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_KNOCKBACK);
    reset_hitbox_value(AT_FSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING);
    reset_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_HITPAUSE);
    reset_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITPAUSE_SCALING);
//    reset_hitbox_value(AT_JAB, 1, HG_EXTRA_HITPAUSE);
}

if (suppress_music > 0){
	suppress_stage_music(0.1, 0.5 );
	suppress_music--;
	if (suppress_music <= 0) suppress_music = 0;
}

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