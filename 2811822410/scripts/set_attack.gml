//

//Miku Trailer

/*
with oPlayer {
	if (player != other.player && !other.custom_clone) {
		attack = other.attack;
		window = 1;
		window_timer = 0;
		state = other.state;
	}
}
*/
b_reversed_nspecial = false;

if (instance_exists(leak_proj) && !rune_attack) {
	if !(attack == AT_TAUNT || attack == AT_FSPECIAL || attack == AT_DSPECIAL) {
		move_cooldown[attack] = 1;
	}
} 

//Bair Turn Around
if (attack == AT_BAIR) {
	if (custom_clone) {
		if (instance_exists(clone_owner.miku_clone)) {
			spr_dir *= -1;
			clone_owner.miku_clone.spr_dir *= -1;
		}
	} else {
		spr_dir *= -1;
	}
}


//Clnoe Stuff
if (custom_clone) {
	
	//Multihit Bug fix
	switch(attack) {
		//Neutrals
		case AT_JAB:		
			attack = AT_NSPECIAL_2;
			set_hitbox_value(attack, 1, HG_FORCE_FLINCH, 0);
		break;
		case AT_DATTACK:
			attack = AT_NSPECIAL_AIR;
		break;
		//Aerials
		case AT_NAIR:
			attack = AT_NTHROW;
		break;
		case AT_DAIR:
			attack = AT_DSPECIAL_AIR;
		break;
		case AT_FAIR:
			attack = AT_FSPECIAL_AIR;
		break;
		case AT_UAIR:
			attack = AT_USPECIAL_GROUND;
		break;
		case AT_BAIR:
			attack = AT_FSTRONG_2;
		break;
		//Strongs
		case AT_FSTRONG:
			attack = AT_FTHROW;
		break;
		case AT_DSTRONG:
			attack = AT_DSTRONG_2;
		break;
		case AT_USTRONG:
			attack = AT_USTRONG_2;
		break;
		//Tilts
		case AT_UTILT:
			attack = AT_UTHROW;
		break;
		case AT_DTILT:
			attack = AT_DSPECIAL_2;
		break;
		case AT_FTILT:
			attack = AT_FSPECIAL_2;
		break;

	}
	
	//Aerial Moves fix
	set_attack_value(AT_DATTACK, AG_CATEGORY, 2);
	set_attack_value(AT_DTILT, AG_CATEGORY, 2);
	set_attack_value(AT_UTILT, AG_CATEGORY, 2);
	set_attack_value(AT_FTILT, AG_CATEGORY, 2);
	set_attack_value(AT_JAB, AG_CATEGORY, 2);
} else {
	set_attack_value(AT_DATTACK, AG_CATEGORY, 0);
	set_attack_value(AT_DTILT, AG_CATEGORY, 0);
	set_attack_value(AT_UTILT, AG_CATEGORY, 0);
	set_attack_value(AT_FTILT, AG_CATEGORY, 0);
	set_attack_value(AT_JAB, AG_CATEGORY, 0);
}

if !(attack == AT_JAB || attack == AT_NAIR) {
	if (custom_clone) {
		for (i = 1; i  <= 9; i++) {
			set_hitbox_value(attack, i, HG_HITBOX_GROUP,  3);
		}
	} else {
		for (i = 1; i  <= 9; i++) {
			set_hitbox_value(attack, i, HG_HITBOX_GROUP,  1);
		}
	}
} else {
	if (attack == AT_JAB) {
		if (custom_clone) {
			set_hitbox_value(attack, 1, HG_HITBOX_GROUP,  1);
			set_hitbox_value(attack, 2, HG_HITBOX_GROUP,  2);
		} else {
			set_hitbox_value(attack, 1, HG_HITBOX_GROUP,  3);
			set_hitbox_value(attack, 2, HG_HITBOX_GROUP,  4);
		}
	} else if (attack == AT_NAIR) {
		if (custom_clone) {
			set_hitbox_value(attack, 1, HG_HITBOX_GROUP,  1);
			set_hitbox_value(attack, 2, HG_HITBOX_GROUP,  2);
			set_hitbox_value(attack, 3, HG_HITBOX_GROUP,  2);
		} else {
			set_hitbox_value(attack, 1, HG_HITBOX_GROUP,  3);
			set_hitbox_value(attack, 2, HG_HITBOX_GROUP,  4);
			set_hitbox_value(attack, 3, HG_HITBOX_GROUP,  4);
		}
	}
}

if (!is_oc) {
	if (attack == AT_TAUNT) {
		if (down_pressed || down_down) {
			attack = AT_DTHROW;
		} else if (up_pressed || up_down) {
			attack = AT_TAUNT_2;
		}
	}
}

print(attack)

//Variable Resets
if attack == AT_FSPECIAL {
	fspecial_reset = 0; //Clone Throw Rune
}

uspecial_dir = spr_dir;
uspecial_will_turn = false;
uspecial_can_turn = false;


//Runes
if (attack == AT_NAIR && rune_nair) {
	set_window_value(attack, 2, AG_WINDOW_VSPEED_TYPE, 1);
	set_window_value(attack, 2, AG_WINDOW_VSPEED, 0);
}

if (rune_recovery_boost) {
	//Uspecial
	set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2);
	set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -18 * 1.5);
	set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
	set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 6 * 1.5);
	//Fspecial
	set_num_hitboxes(AT_FSPECIAL, 1);
	set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 18);
}

if (attack == AT_USPECIAL && rune_clone_jump ) {
	if (instance_exists(miku_clone)) {
		miku_clone.vsp = -18;
	}
}

if (rune_dair_spike) {
	for (i = 1; i <= 10; i++) {
		set_hitbox_value(AT_DAIR, i, HG_ANGLE, 270);
	}
}

if (rune_clairen) {
	for (i = 1; i <= 10; i++) {
		set_hitbox_value(attack, i, HG_EFFECT, 11);
	}
}

