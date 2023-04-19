if  SC_GROUND_COMMITTED {
	if state = PS_DASH_START || state = PS_DASH || state = PS_DASH_STOP || state = PS_DASH_TURN {
	hurtboxID.sprite_index = sprite_get("dash_hurt");
	} 
}

if (state_cat = SC_GROUND_NEUTRAL || state_cat = SC_AIR_NEUTRAL) && state != PS_CROUCH {
hurtboxID.sprite_index = sprite_get("idle_hurt");
}

if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) {
	switch(attack) {
		case AT_NTHROW:
			hurtboxID.sprite_index = sprite_get("bthrow_hurt");
		break;
		case AT_FTHROW:
			hurtboxID.sprite_index = sprite_get("fthrow_hurt");
		break;
		case AT_DTHROW:
			hurtboxID.sprite_index = sprite_get("dthrow_hurt");
		break;
		case AT_UTHROW:
			hurtboxID.sprite_index = sprite_get("uthrow_hurt");
		break;
		case AT_FSTRONG_2:
			hurtboxID.sprite_index = sprite_get("doublejump_hurt");
		break;
	}
}

if (state == PS_PRATFALL) {
	hurtboxID.sprite_index = sprite_get("idle_hurt");
}