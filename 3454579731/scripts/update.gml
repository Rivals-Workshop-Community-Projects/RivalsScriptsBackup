//update.gml

//float shenanigans
//has_mech = false;

if (!has_mech){
	floating = -1;
	if (!hit_mechless){
	djumps = 2;
	} else {
		djumps = 0;
	}
	move_cooldown[AT_FAIR] = 10;
	move_cooldown[AT_NAIR] = 10;
	move_cooldown[AT_UAIR] = 10;
	move_cooldown[AT_DAIR] = 10;
	move_cooldown[AT_BAIR] = 10;
	move_cooldown[AT_NSPECIAL] = 10;
	move_cooldown[AT_FSPECIAL] = 10;
	move_cooldown[AT_USPECIAL] = 10;
	move_cooldown[AT_DSPECIAL] = 10;
	knockback_adj = 1.1;
	
	if (free && collision_circle(x, y, 24, cannon, false, false) && cannon.state != 3 && !cannon.player_stuck){
	    sound_play(sound_get("sfx_succ"));
	    spawn_hit_fx(cannon.x, cannon.y, 302);
		cannon.state = 3;
		cannon.state_timer = 0;
		cannon.cannon_index = 0;
		cannon.player_stuck = true;
		cannon.fired = false;
		in_cannon = true;
	}
} else {
	hit_mechless = false;
	knockback_adj = 1;
}

if (!can_fspecial){
	move_cooldown[AT_FSPECIAL] = 30;
}

if (!free){
	can_fspecial = true;
}

if (cannon_cooldown > 0){
	cannon_cooldown --;
}
if (cannonball_cooldown > 0){
	cannonball_cooldown --;
}
if (cannonball_cooldown < 0){
	cannonball_cooldown = 0;
}

if (in_cannon){
	state = PS_HITSTUN;
	visible = false;
	x = cannon.x;
	y = cannon.y - 24;
	hsp = 0;
	vsp = 0;
	free = true;
} else visible = true;

if (!has_mech && hit_mechless){
	if (state_cat == SC_AIR_NEUTRAL || state == PS_TUMBLE){
	if (attack_pressed || special_pressed || jump_pressed){
		floating = 0;
	spawn_hit_fx(x, y - 16, 144 );
	if (jump_pressed && state != PS_WALL_JUMP){
		djumps = 1;
	}
	has_mech = true;
	}
	}
}

if (!free && !has_mech){
	if (state == PS_LAND || state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND || PS_PRATLAND){
	landing_lag_time = 30;
	set_state(PS_LANDING_LAG);
	}
	spawn_hit_fx(x, y - 16, 144 );
	has_mech = true;
}

if (state == PS_DOUBLE_JUMP){
	if (prev_state == PS_ATTACK_AIR && attack == AT_FSPECIAL){
		if (spr_dir == 1 && hsp > air_max_speed){
			hsp = air_max_speed;
		}
		if (spr_dir == -1 && hsp < -air_max_speed){
			hsp = -air_max_speed;
		}
	}
}
var air = (state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP && state_timer > 4 || state == PS_WALL_JUMP || state == PS_IDLE_AIR);
if(air || state == PS_ATTACK_AIR){
	jumpTimer++;
}
if((state == PS_IDLE_AIR || (air && vsp > 0)) && jump_down && floating == 0 || (state == PS_IDLE_AIR || (air && jumpTimer > jumpMax)) && (jump_down && down_down) && floating == 0){
	floating = 1;
	floatTimer = floatMax;
	if (floatTimer == floatMax){
		sound_play(hover_sound, true, noone, 1, 1);
	}
}
if(floating){
	
    var stage_left = get_stage_data( SD_X_POS ) - 19;
    var stage_right = (room_width - get_stage_data( SD_X_POS )) + 19;
    var stage_y = get_stage_data( SD_Y_POS );
    if (x == stage_left || x == stage_right){
        if (y > stage_y && y < stage_y + 32){
            y = stage_y - 12;
        }
    }
    
	if (hsp > float_max_speed){
		hsp = lerp(hsp, float_max_speed, 0.5);
	}
	if (hsp < -float_max_speed){
		hsp = lerp(hsp, -float_max_speed, 0.5);
	}
	if(gravSet != -1){
		grav = gravSet;
	}
	if(vspSet != -1){vsp = vspSet;}
	if(hspSet != -1){hsp = hspSet * spr_dir;}
	if(!((jump_down || up_down) && (state == PS_ATTACK_AIR || air))){
		floating = -1;
	}
	if(floatTimer > 0){
		floatTimer--;
	}else{
		floating = -1;
	}
} else sound_stop(hover_sound);
if(state == PS_IDLE || state == PS_CROUCH || state == PS_JUMPSQUAT || state == PS_WALK || state == PS_DASH){
	floating = 0;
	jumpTimer = 0;
}

if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND){
	dir_flipped = false;
	car_start_time = 0;
	sound_stop(chargesound);
	chargesound = noone;
}

voice_chance = random_func_2(2, 10, false);