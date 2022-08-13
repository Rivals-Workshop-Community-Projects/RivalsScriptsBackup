current_money2 = current_money;
DairBounce = 0;

takearideontherailroad = false;

if (attack == AT_NSPECIAL && move_cooldown[AT_NSPECIAL] <= 0){
    //if(!muted){
    	rand = random_func(0, 9, true);
    	//if(alt == 23){
    		if(rand == 1){
    			sound_stop(voice);voice = sound_play(sound_get("time to roll the dice"));
    		}else if(rand == 2){
    			sound_stop(voice);voice = sound_play(sound_get("lets roll"));
    		}else if(rand == 3){
    			sound_stop(voice);voice = sound_play(sound_get("time to roll"));
    		}else if(rand == 4){
    			sound_stop(voice);voice = sound_play(sound_get("i hope this is a good one"));
    		}else if(rand == 5){
    			sound_stop(voice);voice = sound_play(sound_get("im feeling lucky today"));
    		}else if(rand == 6){
    			sound_stop(voice);voice = sound_play(sound_get("feeling lucky"));
    		}else if(rand == 7){
    			sound_stop(voice);voice = sound_play(sound_get("take a chance"));
    		}
	//}
}

if (attack == AT_FSPECIAL && move_cooldown[AT_FSPECIAL] <= 0){
	if(window < 4){
    	//if(!muted){
    	rand = random_func(0, 11, true);
    	//if(alt == 23){
    		if(rand <= 1){
    			sound_stop(voice);voice = sound_play(sound_get("advance to go"));
    		}else if(rand <= 3){
    			sound_stop(voice);voice = sound_play(sound_get("move your token"));
    		}else if(rand <= 5){
    			sound_stop(voice);voice = sound_play(sound_get("you move 11 spaces"));
    		}else if(rand == 6){
    			sound_stop(voice);voice = sound_play(sound_get("i hope this is a good one"));
    		}else if(rand == 7){
    			sound_stop(voice);voice = sound_play(sound_get("im feeling lucky today"));
    		}else if(rand == 8){
    			sound_stop(voice);voice = sound_play(sound_get("feeling lucky"));
    		}else if(rand == 9){
    			sound_stop(voice);voice = sound_play(sound_get("take a chance"));
    		}
		//}
		fspec_charge = 0;
		reset_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS);
	}else{
		sound_stop(voice);voice = sound_play(sound_get("one million"));
		set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 6);
	}
}

if (attack == AT_USPECIAL && move_cooldown[AT_USPECIAL] <= 0){
	rand = random_func(0, 9, true);
    	//if(alt == 23){
    		if(rand == 1){
    			sound_stop(voice);voice = sound_play(sound_get("i hope this is a good one"));
    		}else if(rand == 2){
    			sound_stop(voice);voice = sound_play(sound_get("im feeling lucky today"));
    		}else if(rand == 3){
    			sound_stop(voice);voice = sound_play(sound_get("feeling lucky"));
    		}else if(rand <= 6){
    			sound_stop(voice);voice = sound_play(sound_get("take a chance"));
    		}
	jaildice1 = 0;jaildice2 = 0;jaildicetimer = 0;jaildiceattempts = 0;
	if(window == 20){
		set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 23);
	}else{
		reset_attack_value(AT_USPECIAL, AG_NUM_WINDOWS);
	}
	if(!free){
		//free = true;vsp = -6;
	}
}

if (attack == AT_DSPECIAL){
	dspec_charge = 0;
	reset_attack_value(AT_DSPECIAL, AG_CATEGORY);
	if(current_money >= 5000){
		set_attack_value(AT_DSPECIAL, AG_SPRITE, dspec_sprite1);
	}else{
		set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial_empty"));
	}
	if(instance_exists(property)){
	    window = 6;
	    set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 8);
	    if(!free){
			free = true;vsp = -4;
		}
	}else{
		reset_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS);
		if(!free){
			free = true;vsp = -8;
		}
	}
}

if (attack == AT_USTRONG){
	//if(!muted){
    	if(current_money >= 15000 && current_money <= 30000){
    		
    	}else if(current_money >= 30000){
    		rand = random_func(0, 4, true);
    		if(rand == 1){
    			sound_stop(voice);voice = sound_play(sound_get("more power"));
    		}else if(rand == 2){
    			sound_stop(voice);voice = sound_play(sound_get("look at all that cash"));
    		}else if(rand == 3){
    			sound_stop(voice);voice = sound_play(sound_get("were swimming in it now"));
    		}else if(rand == 4){
    			sound_stop(voice);voice = sound_play(sound_get("power on"));
    		}else if(rand == 5){
    			sound_stop(voice);voice = sound_play(sound_get("feel the power"));
    		}
    	}
	//}
	
	if(current_money <= 15000){
		set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong_light"));
		set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 6);set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 4);
		set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 2);set_window_value(AT_USTRONG, 4, AG_WINDOW_SFX_FRAME, 1);set_window_value(AT_USTRONG, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
		set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 4);set_window_value(AT_USTRONG, 6, AG_WINDOW_LENGTH, 10);
		
		set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 6);set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 100);
		set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 8);set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, .5);set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 10);set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, .7);
		set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
		
		set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 7);
		set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 8);set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, .5);set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 10);set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, .7);
		set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
		
		set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 6);
		set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 5);set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 0.4);set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 10);set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, .7);
		set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
		
		set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 7);
		set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 6);set_hitbox_value(AT_USTRONG, 4, HG_KNOCKBACK_SCALING, 0.6);set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 10);set_hitbox_value(AT_USTRONG, 4, HG_HITPAUSE_SCALING, .7);
		set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
		
		set_hitbox_value(AT_USTRONG, 5, HG_DAMAGE, 6);set_hitbox_value(AT_USTRONG, 5, HG_ANGLE, 70);
		set_hitbox_value(AT_USTRONG, 5, HG_BASE_KNOCKBACK, 8);set_hitbox_value(AT_USTRONG, 5, HG_KNOCKBACK_SCALING, .5);set_hitbox_value(AT_USTRONG, 5, HG_BASE_HITPAUSE, 10);set_hitbox_value(AT_USTRONG, 5, HG_HITPAUSE_SCALING, .7);
		set_hitbox_value(AT_USTRONG, 5, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
	}else if(current_money <= 30000){
		reset_attack_value(AT_USTRONG, AG_SPRITE);
		reset_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH);reset_window_value(AT_USTRONG, 2, AG_WINDOW_SFX);reset_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH);
		reset_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH);reset_window_value(AT_USTRONG, 4, AG_WINDOW_SFX_FRAME);reset_window_value(AT_USTRONG, 4, AG_WINDOW_SFX);
		reset_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH);reset_window_value(AT_USTRONG, 6, AG_WINDOW_LENGTH);
		
		reset_hitbox_value(AT_USTRONG, 1, HG_DAMAGE);reset_hitbox_value(AT_USTRONG, 1, HG_ANGLE);
		reset_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK);reset_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING);reset_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE);reset_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING);
		reset_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX);
		
		reset_hitbox_value(AT_USTRONG, 2, HG_DAMAGE);
		reset_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK);reset_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING);reset_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE);reset_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING);
		reset_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX);
		
		reset_hitbox_value(AT_USTRONG, 3, HG_DAMAGE);
		reset_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK);reset_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING);reset_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE);reset_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING);
		reset_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX);
		
		reset_hitbox_value(AT_USTRONG, 4, HG_DAMAGE);
		reset_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK);reset_hitbox_value(AT_USTRONG, 4, HG_KNOCKBACK_SCALING);reset_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE);reset_hitbox_value(AT_USTRONG, 4, HG_HITPAUSE_SCALING);
		reset_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX);
		
		reset_hitbox_value(AT_USTRONG, 5, HG_DAMAGE);reset_hitbox_value(AT_USTRONG, 5, HG_ANGLE);
		reset_hitbox_value(AT_USTRONG, 5, HG_BASE_KNOCKBACK);reset_hitbox_value(AT_USTRONG, 5, HG_KNOCKBACK_SCALING);reset_hitbox_value(AT_USTRONG, 5, HG_BASE_HITPAUSE);reset_hitbox_value(AT_USTRONG, 5, HG_HITPAUSE_SCALING);
		reset_hitbox_value(AT_USTRONG, 5, HG_HIT_SFX);
	}else{
		set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong_heavy"));
		set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 16);set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));reset_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH);
		set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 8);set_window_value(AT_USTRONG, 4, AG_WINDOW_SFX_FRAME, 7);set_window_value(AT_USTRONG, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
		reset_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH);set_window_value(AT_USTRONG, 6, AG_WINDOW_LENGTH, 20);
		
		set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 12);reset_hitbox_value(AT_USTRONG, 1, HG_ANGLE);
		set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 9);set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 1.15);reset_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE);reset_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING);
		set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
		
		set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 14);
		set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 9);set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 1.25);reset_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE);reset_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING);
		reset_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX);
		
		set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 12);
		set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 7);set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 0.7);reset_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE);reset_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING);
		set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
		
		set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 14);
		set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 8);set_hitbox_value(AT_USTRONG, 4, HG_KNOCKBACK_SCALING, 0.8);reset_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE);reset_hitbox_value(AT_USTRONG, 4, HG_HITPAUSE_SCALING);
		reset_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX);
		
		set_hitbox_value(AT_USTRONG, 5, HG_DAMAGE, 12);reset_hitbox_value(AT_USTRONG, 5, HG_ANGLE);
		set_hitbox_value(AT_USTRONG, 5, HG_BASE_KNOCKBACK, 9);set_hitbox_value(AT_USTRONG, 5, HG_KNOCKBACK_SCALING, 1.15);reset_hitbox_value(AT_USTRONG, 5, HG_BASE_HITPAUSE);reset_hitbox_value(AT_USTRONG, 5, HG_HITPAUSE_SCALING);
		set_hitbox_value(AT_USTRONG, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
	}
}

if (attack == AT_DATTACK){
    if (move_cooldown[AT_DATTACK] <= 0){
    //if(!muted){
    	if(alt == 18){
    		rand = random_func(0, 3, true);
    		if(rand == 1){
    			sound_stop(voice);voice = sound_play(sound_get("wario go"));
    		}else if(rand == 2){
    			sound_stop(voice);voice = sound_play(sound_get("wario here we go"),false,noone,1.5);
    		}
		}else if(alt == 21){
    		rand = random_func(0, 2, true);
    		if(rand == 1){
    			sound_stop(voice);voice = sound_play(sound_get("squadala"));
    		}
		}else{
    		rand = random_func(0, 8, true);
    		if(rand == 1){
    			sound_stop(voice);voice = sound_play(sound_get("choo choo"));
    		}else if(rand == 2){
    			sound_stop(voice);voice = sound_play(sound_get("i love my choo choo"));
    		}else if(rand == 3){
    			sound_stop(voice);voice = sound_play(sound_get("take a ride on the railroad"));
    		}else if(rand == 4){
    			sound_stop(voice);voice = sound_play(sound_get("were on the right track"));
    		}else if(rand == 5){
    			sound_stop(voice);voice = sound_play(sound_get("lets go"));
    		}else if(rand == 6){
    			sound_stop(voice);voice = sound_play(sound_get("lets take a ride"));
    		}else if(rand == 7){
    			sound_stop(voice);voice = sound_play(sound_get("yeehaw"));
    		}
		}
	}else{
		attack = AT_FTILT;
	}
}

if (attack == AT_BAIR){
	//if(!muted){
    	if(current_money >= 15000 && current_money <= 30000){
    		rand = random_func(0, 3, true);
    		if(rand == 1){
    			sound_stop(voice);voice = sound_play(sound_get("woo"));
    		}
    	}else if(current_money >= 30000){
    		rand = random_func(0, 5, true);
    		if(rand == 1){
    			sound_stop(voice);voice = sound_play(sound_get("woo"));
    		}else if(rand == 2){
    			sound_stop(voice);voice = sound_play(sound_get("more power"));
    		}else if(rand == 3){
    			sound_stop(voice);voice = sound_play(sound_get("look at all that cash"));
    		}else if(rand == 4){
    			sound_stop(voice);voice = sound_play(sound_get("were swimming in it now"));
    		}else if(rand == 5){
    			sound_stop(voice);voice = sound_play(sound_get("power on"));
    		}else if(rand == 6){
    			sound_stop(voice);voice = sound_play(sound_get("feel the power"));
    		}
    	}
	//}
	
	reset_num_hitboxes(AT_BAIR);
	if(current_money <= 15000){
		set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair_light"));
		set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 7);set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 6);
		set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 10);set_attack_value(AT_BAIR, AG_LANDING_LAG, 5);
		
		set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 5);
		set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 6);set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, .5);
		set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 10);set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, .7);
		set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
		
		set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 6);
		set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 6);set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, .5);
		set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 10);set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, .7);
		set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
	}else if(current_money <= 30000){
		reset_attack_value(AT_BAIR, AG_SPRITE);
		reset_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH);reset_window_value(AT_BAIR, 1, AG_WINDOW_SFX);reset_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME);
		reset_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH);reset_attack_value(AT_BAIR, AG_LANDING_LAG);
		
		reset_hitbox_value(AT_BAIR, 1, HG_DAMAGE);
		reset_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK);reset_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING);
		reset_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE);reset_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING);
		reset_hitbox_value(AT_BAIR, 1, HG_HIT_SFX);
		
		reset_hitbox_value(AT_BAIR, 2, HG_DAMAGE);
		reset_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK);reset_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING);
		reset_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE);reset_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING);
		reset_hitbox_value(AT_BAIR, 2, HG_HIT_SFX);
	}else{
		set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair_heavy"));
		set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 15);set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 14);
		set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 20);set_attack_value(AT_BAIR, AG_LANDING_LAG, 14);
		
		set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 12);
		set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 8);set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, 1.1);
		reset_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE,);reset_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING);
		set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
		
		set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 13);
		set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 8);set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, 1.15);
		reset_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE,);reset_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING);
		set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
	}
}

if (attack == AT_TAUNT){
	if(down_down){
		window = 4;set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 6);
		sound_stop(voice);voice = sound_play(sound_get("i see you"));
	}else if((right_down || left_down) && current_money >= 10000){
		attack = AT_FSPECIAL;window = 4;set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 6);move_cooldown[AT_FSPECIAL] = 0;
		sound_stop(voice);voice = sound_play(sound_get("one million"));
	}else{
		reset_attack_value(AT_TAUNT, AG_NUM_WINDOWS);
	}
}

muno_event_type = 2;
	user_event(14);