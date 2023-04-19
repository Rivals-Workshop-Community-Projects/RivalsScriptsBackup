/*
if  SC_GROUND_COMMITTED {
	if state = PS_DASH_START || state = PS_DASH || state = PS_DASH_STOP || state = PS_DASH_TURN {
	hurtboxID.sprite_index = hurtbox_dash_spr
	} 
}

if (state_cat = SC_GROUND_NEUTRAL || state_cat = SC_AIR_NEUTRAL) && state != PS_CROUCH {
hurtboxID.sprite_index = sprite_get("idle_hurt")
}
*/
if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) {
	switch(attack) {
		case AT_UTHROW:
			hurtboxID.sprite_index = sprite_get("uthrow_hurt")
		break;
		case AT_NSPECIAL_AIR:
			hurtboxID.sprite_index = sprite_get("nspecial_3_hurt")
		break;
	}
}