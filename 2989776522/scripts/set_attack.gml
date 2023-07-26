///#args attack // this line makes code editors not freak out for some reason

b_reversed = false;

if (attack == AT_BAIR){
	reset_attack_value(AT_BAIR, AG_NUM_WINDOWS);reset_attack_value(AT_BAIR, AG_CATEGORY);
}

if (attack == AT_DATTACK){
	reset_attack_value(AT_DATTACK, AG_NUM_WINDOWS);
}

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

if (attack == AT_FSPECIAL){
	fspec_hit = false;
}

if (attack == AT_TAUNT){
	voicecooldown = 0;
	reset_attack_value(AT_TAUNT, AG_NUM_WINDOWS);
	if(up_down || down_down || "temp_level" in self && silly == 5){
		window = 4;window_timer = 0;
		set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 6);
		clear_button_buffer(PC_TAUNT_PRESSED);
	}
}

muno_event_type = 2;
user_event(14);