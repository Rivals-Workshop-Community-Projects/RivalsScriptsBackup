//set_attack

if (attack == AT_FSPECIAL){
	reset_attack_value(AT_FSPECIAL, AG_SPRITE);
	reset_attack_value(AT_FSPECIAL, AG_AIR_SPRITE);
	reset_hitbox_value(AT_FSPECIAL, 8, HG_DAMAGE);reset_hitbox_value(AT_FSPECIAL, 8, HG_BASE_HITPAUSE);reset_hitbox_value(AT_FSPECIAL, 8, HG_ANGLE);
	reset_hitbox_value(AT_FSPECIAL, 8, HG_BASE_KNOCKBACK);reset_hitbox_value(AT_FSPECIAL, 8, HG_KNOCKBACK_SCALING);
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