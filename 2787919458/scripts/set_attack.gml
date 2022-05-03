///#args attack // this line makes code editors not freak out for some reason
#macro AT_OLD_FAIR 42
if((move_cooldown[AT_FSTRONG] == 0 && move_cooldown[AT_DSTRONG] == 0 && move_cooldown[AT_USTRONG] == 0)){
	if((instance_exists(doge) || instance_exists(shrek_door) || instance_exists(dat_boi))){
		if(attack == AT_FAIR || attack == AT_BAIR || attack == AT_UAIR || attack == AT_DAIR){
			if (strong_down || right_strong_pressed || left_strong_pressed || up_strong_pressed || down_strong_pressed){
				attack = AT_FSTRONG;
			}
		}
	}
}
curspd_override = false;
if(instance_exists(shrek_door)){
	if(attack == AT_DSTRONG || attack == AT_USTRONG){
	    attack = AT_FSTRONG;
	}
	if(attack == AT_FSTRONG){
		window = 4;window_timer = 0;
	}
}
if (attack == AT_JAB){
	sound_stop(airhorn_sfx);
	switch(get_player_color(player)){
		default:
			airhorn_sfx = sound_play(sound_get("you're"));
		break;
		case 15:
			airhorn_sfx = sound_play(sound_get("you"));
		break;		
		case 16:
			airhorn_sfx = sound_play(sound_get("lamp oil"));
		break;		
	}
	sound_play(sound_get("sfx_sonic_homing_startup"))
}
if(instance_exists(dat_boi)){
	if(attack == AT_FSTRONG || attack == AT_USTRONG){
	    attack = AT_DSTRONG;
	}
	if(attack == AT_DSTRONG){
		window = 4;window_timer = 0;
	}	
}
if(instance_exists(doge)){
	if(attack == AT_FSTRONG || attack == AT_DSTRONG){
	    attack = AT_USTRONG;
	}
	if(attack == AT_USTRONG){
		window = 4;window_timer = 0;
	}	
}
if(runeH && attack == AT_FAIR){
	attack = AT_OLD_FAIR;
}
if(down_down && attack == AT_TAUNT){
	attack = AT_EXTRA_2;
	CorrectHurtboxes()
}
if(up_down && attack == AT_TAUNT){
	attack = AT_TAUNT_2;
	CorrectHurtboxes()
}
if(right_down && attack == AT_TAUNT && get_player_color(player) == 7){
	attack = 43;
}
// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines
muno_event_type = 2;
user_event(14);

#define CorrectHurtboxes()
{
    hurtboxID.sprite_index = get_attack_value(attack, (free && get_attack_value(attack, AG_HURTBOX_AIR_SPRITE) != 0) ? AG_HURTBOX_AIR_SPRITE : AG_HURTBOX_SPRITE);
}