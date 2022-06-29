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
if (custom_clone) {
	mask_index = sprite_get("empty");
	if (clone_active) {
		if (state == PS_ATTACK_AIR) {
			
		} else {
			sprite_index = sprite_get("idle");
			image_index = round(state_timer % (8 * 5) / 5);
			//print(image_index);
		}
	} else {
		hurtboxID.sprite_index = sprite_get("empty");
	}
	hurtboxID.x = x;
	hurtboxID.y = y;
}




