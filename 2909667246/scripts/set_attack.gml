//set_attack

b_reversed = false;
tauntcancel = false;

grabbedtarget = noone;grabbedobject = false;grabbedarticle = false;

//reset bonus dmg stuff
if(bonus_damage){bonus_damage = false;damage_scaling = 1;outline_color = [0, 0, 0];init_shader();}

if(attack == AT_NSPECIAL){
	pocket_release = 0;
	if(instance_exists(Pocketed_Projectile)){
		set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 7);
		window = 5;window_timer = 0;
		sound_play(sound_get("pocket3"),false,noone,1);
	}else{
		//reset_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS);
		set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 3);
	}
}

if(attack == AT_FSPECIAL){
	fspec_spawned = false;
	//reset_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS);
	set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 3);
}

if(attack == AT_USPECIAL){
	uspec_fuel = max(uspec_fuel,45);
	uspec_fall = 60;
}

if(attack == AT_DSPECIAL){
	set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 2);
	//reset_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS);
	if(instance_exists(tree) || shield_down){
		set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 9);
		window = 6;window_timer = 0;
	}else if(instance_exists(sapling) || free){
		set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 5);
		window = 3;window_timer = 0;dspec_walk = 0;
	}
}

if (attack == AT_FAIR){
	reset_attack_value(AT_FAIR, AG_LANDING_LAG);
}

if (attack == AT_UAIR){
	var rng = random_func(0,100,true);
	if(canon || op)rng = 99;
	reset_window_value(AT_UAIR, 1, AG_WINDOW_SFX);
	reset_attack_value(AT_UAIR, AG_SPRITE);
	reset_hitbox_value(AT_UAIR, 1, HG_WIDTH);reset_hitbox_value(AT_UAIR, 1, HG_HEIGHT);
	reset_hitbox_value(AT_UAIR, 1, HG_DAMAGE);reset_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK);reset_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING);
	reset_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE);reset_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING);
	reset_hitbox_value(AT_UAIR, 1, HG_HIT_SFX);
	reset_hitbox_value(AT_UAIR, 2, HG_WIDTH);
	if(rng < 30){ //1
		set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 50);set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 60);
		set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 8);set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, .85);
		set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 8);set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, 0.8);
		set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
		set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 45);
	}else if(rng < 60){ //2
		set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair2"));set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, sound_get("turnip2"));
	}else{ //3
		set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair3"));set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, sound_get("turnip3"));
		set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 12);/*set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 7);*/set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, .95);
		set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 12);set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, 1.3);
		set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
	}
}

if (attack == AT_DAIR){
	var rng = random_func(0,100,true);
	if(canon || op)rng = 99;
	reset_window_value(AT_DAIR, 1, AG_WINDOW_SFX);
	reset_attack_value(AT_DAIR, AG_SPRITE);
	reset_hitbox_value(AT_DAIR, 1, HG_WIDTH);reset_hitbox_value(AT_DAIR, 1, HG_HEIGHT);
	reset_hitbox_value(AT_DAIR, 1, HG_DAMAGE);reset_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING);
	reset_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE);reset_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING);
	reset_hitbox_value(AT_DAIR, 1, HG_HIT_SFX);
	reset_hitbox_value(AT_DAIR, 3, HG_WIDTH);reset_hitbox_value(AT_DAIR, 3, HG_HEIGHT);
	reset_hitbox_value(AT_DAIR, 3, HG_DAMAGE);reset_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK);reset_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING);
	reset_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE);reset_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING);
	reset_hitbox_value(AT_DAIR, 3, HG_HIT_SFX);
	if(rng < 30){ //1
		set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 38);set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 38);
		set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 7);set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, .9);
		set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 8);set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, .8);
		set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
		set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 30);set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 30);
		set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 8);set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 5);set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, .5);
		set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 8);set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, .8);
		set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
	}else if(rng < 60){ //2
		set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair2"));set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, sound_get("turnip2"));
	}else{ //3
		set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair3"));set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, sound_get("turnip3"));
		set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 12);set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 7);set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 1.0);
		set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 10);set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 1);
		set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 12);set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 6);set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, .6);
		set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 12);set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, 1.3);
		set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
	}
}

if(attack == AT_GRAB){
	reset_attack_value(AT_GRAB, AG_NUM_WINDOWS);
}


if(small_sprites != 1 || big && size_mult > 1 && size_mult <= 2 || mega && size_mult > 2 || mini && size_mult < 1){
if (get_num_hitboxes(attack) && !move_cooldown[attack]){
    for(var i = 0; i < get_num_hitboxes(attack); i++){
        var num = i + 1;
        if (attack != AT_UAIR && attack != AT_DAIR || attack == AT_DAIR && num == 2 || attack == AT_UAIR && num == 2){
	        reset_hitbox_value(attack, num, HG_DAMAGE);
	        reset_hitbox_value(attack, num, HG_KNOCKBACK_SCALING);reset_hitbox_value(attack, num, HG_BASE_KNOCKBACK);
	        reset_hitbox_value(attack, num, HG_WIDTH);reset_hitbox_value(attack, num, HG_HEIGHT);
        }
        reset_hitbox_value(attack, num, HG_HITBOX_X);reset_hitbox_value(attack, num, HG_HITBOX_Y);
        
        if((size_mult > 1 && (big || mega) || size_mult < 1 && mini || phone_cheats[CHEAT_BeegKewtian] > 0 || runeK) && get_hitbox_value(attack, num, HG_HITBOX_TYPE) != 2){
            set_hitbox_value(attack, num, HG_DAMAGE, round(get_hitbox_value(attack, num, HG_DAMAGE) * (size_mult/2+.5)));
            if (big && size_mult > 1 && size_mult <= 2 || mega && size_mult > 2 || has_rune("K") || runeK) {
	            set_hitbox_value(attack, num, HG_KNOCKBACK_SCALING, get_hitbox_value(attack, num, HG_KNOCKBACK_SCALING) * ((size_mult/4)*2.2));
		    }else{
		    	if (mini) {
		            set_hitbox_value(attack, num, HG_KNOCKBACK_SCALING, get_hitbox_value(attack, num, HG_KNOCKBACK_SCALING) * (size_mult*1.75));
		            set_hitbox_value(attack, num, HG_BASE_KNOCKBACK, get_hitbox_value(attack, num, HG_BASE_KNOCKBACK) * (size_mult*1.5));
		    	}else{
		            set_hitbox_value(attack, num, HG_KNOCKBACK_SCALING, get_hitbox_value(attack, num, HG_KNOCKBACK_SCALING) * ((size_mult/4)*3));
		            set_hitbox_value(attack, num, HG_BASE_KNOCKBACK, get_hitbox_value(attack, num, HG_BASE_KNOCKBACK) * ((size_mult/4)*2));
		    	}
		    }
		    set_hitbox_value(attack, num, HG_HITBOX_X, get_hitbox_value(attack, num, HG_HITBOX_X) * (size_mult/2+.5));
	        set_hitbox_value(attack, num, HG_HITBOX_Y, get_hitbox_value(attack, num, HG_HITBOX_Y) * (size_mult/2+.5));
	        set_hitbox_value(attack, num, HG_HEIGHT, get_hitbox_value(attack, num, HG_HEIGHT) * (size_mult/2+.5));
	        set_hitbox_value(attack, num, HG_WIDTH, get_hitbox_value(attack, num, HG_WIDTH) * (size_mult/2+.5));
        }
    }
}
}else{
	for(var i = 0; i < get_num_hitboxes(attack); i++){
        var num = i + 1;
        if (attack != AT_UAIR && attack != AT_DAIR || attack == AT_DAIR && num == 2 || attack == AT_UAIR && num == 2){
	        reset_hitbox_value(attack, num, HG_DAMAGE);
	        reset_hitbox_value(attack, num, HG_KNOCKBACK_SCALING);reset_hitbox_value(attack, num, HG_BASE_KNOCKBACK);
	        reset_hitbox_value(attack, num, HG_WIDTH);reset_hitbox_value(attack, num, HG_HEIGHT);
        }reset_hitbox_value(attack, num, HG_HITBOX_X);reset_hitbox_value(attack, num, HG_HITBOX_Y);
    }
}

muno_event_type = 2;
	user_event(14);