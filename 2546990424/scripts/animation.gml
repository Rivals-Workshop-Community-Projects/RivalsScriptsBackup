//Makes Maverick DJump animation play clock or anti-clockwise
if (state == PS_DOUBLE_JUMP && state_timer == 7){
	if ((spr_dir == 1 && hsp >= 2) || (spr_dir == -1 && hsp <= 2) || hsp == 0){
		djump = 1;
	}
	if ((spr_dir == -1 && hsp > 2) || (spr_dir == 1 && hsp < 2) && hsp != 0){
		djump = -1;
	}
}
if (state == PS_DOUBLE_JUMP){
	if (djump == 1){
		sprite_index = sprite_get("doublejump");
	}
	if (djump == -1){
		sprite_index = sprite_get("doublejump2");
	}
}

//HUD Icon goes back to normal
if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
	char_height = 60;
}

//UTilt SFX and VFX
if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_UTILT
&& window == 2 && window_timer == 0 && !hitpause){
	spawn_hit_fx( x, y-80, 254);
    sound_play(asset_get("sfx_birdclap"));
}

//Grab stuff, mostly changing the sprites when using it
if (cargo_grab == true){
    if (state == PS_IDLE){
        sprite_index = sprite_get("idle_hold");
        if (state_timer > 50){
            state_timer = 0;
        }
    }
    
    if (state == PS_WALK){
        sprite_index = sprite_get("walk_hold");
        if (state_timer > 58){
            state_timer = 0;
        }
    }
    if (state == PS_DASH || state == PS_DASH_START || state == PS_DASH_STOP){
        sprite_index = sprite_get("walk_hold");
        if (state_timer > 40){
            state_timer = 0;
        }
    }
    if (state == PS_WALK_TURN || state == PS_DASH_TURN){
        sprite_index = sprite_get("walkturn_hold");
    }
    if (state == PS_JUMPSQUAT){
        sprite_index = sprite_get("jumpstart_hold");
    }
    if (state == PS_FIRST_JUMP || state == PS_IDLE_AIR){
        sprite_index = sprite_get("jump_hold");
    }
    if (state == PS_LAND){
        sprite_index = sprite_get("land_hold");
    }
    if (state == PS_ATTACK_GROUND && attack == AT_TAUNT){
        sprite_index = sprite_get("taunt_hold");
        hurtboxID.sprite_index = sprite_get("taunt_hold_hurt");
    }
}
