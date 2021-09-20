//animation.gml

//intro
if (state == PS_SPAWN) {
    if (introTimer < 21 && introTimer >= 0) {
        sprite_index = sprite_get("intro");
        image_index = introTimer;
    } else if (introTimer < 0) {
        sprite_index = sprite_get("intro");
        image_index = 0;
    } else {
        sprite_index = sprite_get("idle");
    }
	if (state_timer == 20){
		sound_play(sfx_inhale);
	}
	if (state_timer == 59){
		sound_stop(sfx_inhale);
		sound_play(sfx_inhale_yes);
	}
	if (state_timer == 72){
		sound_play(sfx_swallow);
	}
	if (state_timer == 83){
		spawn_hit_fx( x, y - 32, 304 );
		sound_play(sfx_ability_get);
	}
	if (state_timer == 119){
		set_attack(AT_EXTRA_1);
	}
}

if (sprite_index != sprite_get("landinglag")){
	//prat_land_time = 10;
}

if (TrailerAssets_IsBeingUsed == true){
	if (state == PS_IDLE){
		sprite_index = sprite_get("idle_special");
	}
}

if (state == PS_WAVELAND){
	sprite_index = sprite_get("crouch")
	if (state_timer == 0 || state_timer == 1 || state_timer == 2 || state_timer == 3){
		image_index = 2
	} else if (state_timer == 4 || state_timer == 5){
		image_index = 3
	} else if (state_timer == 6 || state_timer == 7){
		image_index = 4
	}
}

if (attack == AT_EXTRA_2){
	if (attack == AT_EXTRA_2 && window == 1){
		//image_index = 4
	}
	if (attack == AT_EXTRA_2 && window == 2){
		if (window_timer == 0){
			//sprite_index = sprite_get("roll_backward");
		}
	}
	//hurtboxID.sprite_index = sprite_get("sleep_hurtbox");
}

if (attack == AT_JAB && window == 1){
	//hurtboxID.sprite_index = sprite_get("jab_hurt");
}

if (attack == AT_EXTRA_1){
	//hurtboxID.sprite_index = sprite_get("sleep_hurtbox");
}

with (oPlayer){
	if (is_in_playtest == false){
		if (NotSleepKirby_IsSleeping){
			if (url == 2284823424){
				sprite_index = (sprite_get("taunt_2")); image_index = 5;
			}
		}
	}
}