///#args attack // this line makes code editors not freak out for some reason

b_reversed = false;

//aerial strong stuff
if(phone_cheats[CHEAT_Air_Strongs]){
	if ((attack == AT_FAIR || attack == AT_BAIR) && (strong_down || right_strong_pressed || left_strong_pressed))attack = AT_FSTRONG;
	if (attack == AT_UAIR && (strong_down || up_strong_pressed))attack = AT_USTRONG;
	if (attack == AT_DAIR && (strong_down || down_strong_pressed))attack = AT_DSTRONG;
	if (attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG){
	    if((right_down || right_strong_pressed) && !left_strong_pressed)spr_dir = 1;
	    else if((left_down || left_strong_pressed) && !right_strong_pressed)spr_dir = -1;
	}
	if (attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG){
		/*if(!free){
			vsp -= 2;hsp *= 0.75;
			if (attack == AT_USTRONG)vsp -= 3;
		}*/strong_free = free;
	}
}

if (attack == AT_BAIR){
	reset_attack_value(AT_BAIR, AG_NUM_WINDOWS);reset_attack_value(AT_BAIR, AG_CATEGORY);
	reset_hitbox_value(AT_BAIR, 1, HG_WIDTH);reset_hitbox_value(AT_BAIR, 1, HG_HEIGHT);
	reset_hitbox_value(AT_BAIR, 2, HG_WIDTH);reset_hitbox_value(AT_BAIR, 2, HG_HEIGHT);
	reset_hitbox_value(AT_BAIR, 3, HG_WIDTH);reset_hitbox_value(AT_BAIR, 3, HG_HEIGHT);
	reset_hitbox_value(AT_BAIR, 4, HG_WIDTH);reset_hitbox_value(AT_BAIR, 4, HG_HEIGHT);
}

if (attack == AT_UAIR){
	reset_hitbox_value(AT_UAIR, 1, HG_WIDTH);reset_hitbox_value(AT_UAIR, 1, HG_HEIGHT);
	reset_hitbox_value(AT_UAIR, 6, HG_WIDTH);reset_hitbox_value(AT_UAIR, 6, HG_HEIGHT);
}

if (attack == AT_DATTACK)reset_attack_value(AT_DATTACK, AG_NUM_WINDOWS);

if (attack == AT_DSTRONG)reset_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH);

if(!inside_mech){
	if(attack != AT_NSPECIAL && attack != AT_FSPECIAL && attack != AT_USPECIAL && attack != AT_DSPECIAL && attack != AT_TAUNT){
		move_cooldown[attack] = 1;
		if(right_strong_pressed || left_strong_pressed || up_strong_pressed || down_strong_pressed){
			attack = AT_KICK;
		}else{
			attack = AT_SLAP;
		}
		if(attack == AT_KICK || attack == AT_SLAP){
			if(right_down){
				spr_dir = 1;
			}else if(left_down){
				spr_dir = -1;
			}
			if(right_strong_pressed || right_stick_pressed){
				spr_dir = 1;
			}else if(left_strong_pressed || left_stick_pressed){
				spr_dir = -1;
			}
		}
		
	}else{
		if((attack == AT_USPECIAL || !can_summon_mech && (attack == AT_NSPECIAL || attack == AT_FSPECIAL)) && move_cooldown[AT_USPECIAL] <= 0){
			window = 4;window_timer = 0;
		}else if(attack == AT_TAUNT && move_cooldown[AT_TAUNT] <= 0){
			//window = 4;window_timer = 0;
		}else if(attack == AT_DSPECIAL){
			
		}else{
			if(can_summon_mech){
				move_cooldown[AT_USPECIAL] = 0;attack = AT_USPECIAL;
				window = 5;window_timer = 0;inside_mech = true;
			}else if(move_cooldown[attack] <= 0){
				move_cooldown[attack] = 1;
			}
		}
	}
}

if (attack == AT_FSPECIAL)fspec_hit = false;

if (attack == AT_TAUNT){
	voicecooldown = 0;
	reset_attack_value(AT_TAUNT, AG_NUM_WINDOWS);
	if(up_down || down_down || "temp_level" in self && silly == 5){
		window = 4;window_timer = 0;
		set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 6);
		clear_button_buffer(PC_TAUNT_PRESSED);
	}
}

/*if("big" not in self){size_mult = 1;size_stutter = 0;big = false;mega = false;mini = false;}
if(small_sprites != 1 || big && size_mult > 1 && size_mult <= 2 || mega && size_mult > 2 || mini && size_mult < 1){
if (get_num_hitboxes(attack) && !move_cooldown[attack]){
    for(var i = 0; i < get_num_hitboxes(attack); i++){
        var num = i + 1;
        reset_hitbox_value(attack, num, HG_DAMAGE);
        reset_hitbox_value(attack, num, HG_KNOCKBACK_SCALING);reset_hitbox_value(attack, num, HG_BASE_KNOCKBACK);
        reset_hitbox_value(attack, num, HG_HITBOX_X);reset_hitbox_value(attack, num, HG_HITBOX_Y);
        reset_hitbox_value(attack, num, HG_WIDTH);reset_hitbox_value(attack, num, HG_HEIGHT);
        
        if((size_mult > 1 && (big || mega) || size_mult < 1 && mini) && get_hitbox_value(attack, num, HG_HITBOX_TYPE) != 2){
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
        reset_hitbox_value(attack, num, HG_DAMAGE);
        reset_hitbox_value(attack, num, HG_KNOCKBACK_SCALING);reset_hitbox_value(attack, num, HG_BASE_KNOCKBACK);
        reset_hitbox_value(attack, num, HG_HITBOX_X);reset_hitbox_value(attack, num, HG_HITBOX_Y);
        reset_hitbox_value(attack, num, HG_WIDTH);reset_hitbox_value(attack, num, HG_HEIGHT);
    }
}*/

muno_event_type = 2;
user_event(14);