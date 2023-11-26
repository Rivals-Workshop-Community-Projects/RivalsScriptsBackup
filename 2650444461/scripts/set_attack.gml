if(small_sprites != 1 || big && size_mult > 1 && size_mult <= 2 || mega && size_mult > 2 || mini && size_mult < 1){
	if (get_num_hitboxes(attack) && !move_cooldown[attack]){
	    for(var i = 0; i < get_num_hitboxes(attack); i++){
	        var num = i + 1;
	        reset_hitbox_value(attack, num, HG_DAMAGE);
	        reset_hitbox_value(attack, num, HG_KNOCKBACK_SCALING);
	        reset_hitbox_value(attack, num, HG_BASE_KNOCKBACK);
	        reset_hitbox_value(attack, num, HG_HITBOX_X);
	        reset_hitbox_value(attack, num, HG_HITBOX_Y);
	        reset_hitbox_value(attack, num, HG_WIDTH);
	        reset_hitbox_value(attack, num, HG_HEIGHT);
	        
	        if((size_mult > 1 && (big || mega) || size_mult < 1 && mini) && (get_hitbox_value(attack, num, HG_HITBOX_TYPE) != 2 || get_hitbox_value(attack, num, HG_HITBOX_TYPE) == 2 && (attack == AT_DATTACK || attack == AT_DSTRONG))){
	            if (big && size_mult > 1 && size_mult <= 2 || mega && size_mult > 2) {
			    	set_hitbox_value(attack, num, HG_DAMAGE, round(get_hitbox_value(attack, num, HG_DAMAGE) * (size_mult*0.65)));
		            set_hitbox_value(attack, num, HG_KNOCKBACK_SCALING, get_hitbox_value(attack, num, HG_KNOCKBACK_SCALING) * ((size_mult/4)*2.2));
			    }else{
			    	set_hitbox_value(attack, num, HG_DAMAGE, get_hitbox_value(attack, num, HG_DAMAGE) * size_mult);
			    	if (mini) {
			            set_hitbox_value(attack, num, HG_KNOCKBACK_SCALING, get_hitbox_value(attack, num, HG_KNOCKBACK_SCALING) * (size_mult*1.5));
			            set_hitbox_value(attack, num, HG_BASE_KNOCKBACK, get_hitbox_value(attack, num, HG_BASE_KNOCKBACK) * (size_mult*1.5));
			    	}else{
			            set_hitbox_value(attack, num, HG_KNOCKBACK_SCALING, get_hitbox_value(attack, num, HG_KNOCKBACK_SCALING) * ((size_mult/4)*3));
			            set_hitbox_value(attack, num, HG_BASE_KNOCKBACK, get_hitbox_value(attack, num, HG_BASE_KNOCKBACK) * ((size_mult/4)*2));
			    	}
			    }
			    if (mega && size_mult > 2) {
		            set_hitbox_value(attack, num, HG_HITBOX_X, get_hitbox_value(attack, num, HG_HITBOX_X) * ((size_mult/5)*3));
		            set_hitbox_value(attack, num, HG_HITBOX_Y, get_hitbox_value(attack, num, HG_HITBOX_Y) * ((size_mult/5)*3));
		            set_hitbox_value(attack, num, HG_HEIGHT, get_hitbox_value(attack, num, HG_HEIGHT) * ((size_mult/5)*3));
		            set_hitbox_value(attack, num, HG_WIDTH, get_hitbox_value(attack, num, HG_WIDTH) * ((size_mult/5)*3));
			    }else if(mini && size_mult < 1){
			    	set_hitbox_value(attack, num, HG_HITBOX_X, get_hitbox_value(attack, num, HG_HITBOX_X) * ((size_mult/2)*3));
		            set_hitbox_value(attack, num, HG_HITBOX_Y, get_hitbox_value(attack, num, HG_HITBOX_Y) * ((size_mult/2)*3));
		            set_hitbox_value(attack, num, HG_HEIGHT, get_hitbox_value(attack, num, HG_HEIGHT) * ((size_mult/2)*3));
		            set_hitbox_value(attack, num, HG_WIDTH, get_hitbox_value(attack, num, HG_WIDTH) * ((size_mult/2)*3));
			    }else{
			    	set_hitbox_value(attack, num, HG_HITBOX_X, get_hitbox_value(attack, num, HG_HITBOX_X) * ((size_mult/4)*3));
		            set_hitbox_value(attack, num, HG_HITBOX_Y, get_hitbox_value(attack, num, HG_HITBOX_Y) * ((size_mult/4)*3));
		            set_hitbox_value(attack, num, HG_HEIGHT, get_hitbox_value(attack, num, HG_HEIGHT) * ((size_mult/4)*3));
		            set_hitbox_value(attack, num, HG_WIDTH, get_hitbox_value(attack, num, HG_WIDTH) * ((size_mult/4)*3));
			    }
	        }
	    }
	}
}else{
	for(var i = 0; i < get_num_hitboxes(attack); i++){
        var num = i + 1;
        reset_hitbox_value(attack, num, HG_DAMAGE);
        reset_hitbox_value(attack, num, HG_KNOCKBACK_SCALING);
        reset_hitbox_value(attack, num, HG_BASE_KNOCKBACK);
        reset_hitbox_value(attack, num, HG_HITBOX_X);
        reset_hitbox_value(attack, num, HG_HITBOX_Y);
        reset_hitbox_value(attack, num, HG_WIDTH);
        reset_hitbox_value(attack, num, HG_HEIGHT);
    }
}

if(runeH){
	if (get_num_hitboxes(attack) && !move_cooldown[attack]){
	    for(var i = 0; i < get_num_hitboxes(attack); i++){
	        var num = i + 1;
	        reset_hitbox_value(attack, num, HG_DAMAGE);
	        reset_hitbox_value(attack, num, HG_KNOCKBACK_SCALING);
	    }
	}
	
	var rng = random_func(0, 100, true);
	if(rng < 8){
		crit = true;
		if (get_num_hitboxes(attack) && !move_cooldown[attack]){
		    for(var i = 0; i < get_num_hitboxes(attack); i++){
		        var num = i + 1;
		        set_hitbox_value(attack, num, HG_DAMAGE, get_hitbox_value(attack, num, HG_DAMAGE) * 2);
		        set_hitbox_value(attack, num, HG_KNOCKBACK_SCALING, get_hitbox_value(attack, num, HG_KNOCKBACK_SCALING) * 1.3);
		    }
		}
	}else{
		crit = false;
	}
}

if (attack == AT_FSPECIAL){
	reset_attack_value(AT_FSPECIAL, AG_SPRITE);
	reset_attack_value(AT_FSPECIAL, AG_AIR_SPRITE);
	reset_hitbox_value(AT_FSPECIAL, 8, HG_DAMAGE);reset_hitbox_value(AT_FSPECIAL, 8, HG_BASE_HITPAUSE);reset_hitbox_value(AT_FSPECIAL, 8, HG_ANGLE);
	reset_hitbox_value(AT_FSPECIAL, 8, HG_BASE_KNOCKBACK);reset_hitbox_value(AT_FSPECIAL, 8, HG_KNOCKBACK_SCALING);
	reset_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH);reset_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT);
	reset_hitbox_value(AT_FSPECIAL, 8, HG_WIDTH);reset_hitbox_value(AT_FSPECIAL, 8, HG_HEIGHT);
	
	if(has_rune("E") || runeE){
		set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial_muddy"));
		set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial_air_muddy"));
		set_hitbox_value(AT_FSPECIAL, 8, HG_DAMAGE, 8);set_hitbox_value(AT_FSPECIAL, 8, HG_BASE_HITPAUSE, 15);set_hitbox_value(AT_FSPECIAL, 8, HG_ANGLE, 361);
		set_hitbox_value(AT_FSPECIAL, 8, HG_BASE_KNOCKBACK, 9);set_hitbox_value(AT_FSPECIAL, 8, HG_KNOCKBACK_SCALING, 1.1);
	}
}

if (attack == AT_USPECIAL){
	upb_dir = -spr_dir;
	spr_dir = upb_dir;
}

if (attack == AT_DSPECIAL){
	if (free){
		attack = AT_DSPECIAL_AIR;
		if (move_cooldown[AT_DSPECIAL_AIR] <= 0){
			attack = AT_DSPECIAL_AIR;hsp *= 0.25;sound_play(sound_get("Dive"));
			reset_window_value(AT_DSPECIAL_AIR, 7, AG_WINDOW_LENGTH);
		}
	}else{
		vsp = -2;
	}
}

if (attack == AT_DTILT){
	dtiltmud = false;
}

muno_event_type = 2;
user_event(14);