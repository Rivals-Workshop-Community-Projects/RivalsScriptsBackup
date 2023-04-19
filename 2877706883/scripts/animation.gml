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



if has_item {
	switch(state) {
		case PS_IDLE:
			sprite_index = sprite_get("item_idle");
			image_index = ((state_timer * idle_anim_speed) % 8)
			item_hold_sprite = 0;
		break;
		case PS_WALK_TURN:
		case PS_DASH_TURN:
			sprite_index = sprite_get("item_walkturn");
			item_hold_sprite = 2;
		break;
		case PS_WALK:
			sprite_index = sprite_get("item_walk");
			image_index = ((state_timer * walk_anim_speed) % 4)
			item_hold_sprite = 1;
		break;
		case PS_DASH:
			sprite_index = sprite_get("item_dash");
			image_index = ((state_timer * dash_anim_speed) % 4)
			item_hold_sprite = 4;
		break;
		case PS_DASH_STOP:
			sprite_index = sprite_get("item_dashstop");
			item_hold_sprite = 4;
		break;
		case PS_DASH_START:
			sprite_index = sprite_get("item_dashstart");
			item_hold_sprite = 4;
		break;
		case PS_LAND:
		case PS_PRATLAND:
		case PS_JUMPSQUAT:
		case PS_LANDING_LAG:
		case PS_TECH_GROUND:
			sprite_index = sprite_get("item_land");
			item_hold_sprite = 10;
		break;
		case PS_WAVELAND:
			sprite_index = sprite_get("item_waveland");
			item_hold_sprite = 10;
		break;
		case PS_FIRST_JUMP:
		case PS_IDLE_AIR:
			sprite_index = sprite_get("item_jump");
			item_hold_sprite = 8;
		break;
		case PS_DOUBLE_JUMP:
		case PS_WALL_JUMP:
		case PS_WALL_TECH:
		case PS_AIR_DODGE:
			sprite_index = sprite_get("item_doublejump");
			item_hold_sprite = 9;
		break;
		case PS_HITSTUN:
		case PS_HITSTUN_LAND:
		case PS_TUMBLE:
		case PS_PRATFALL:
		case PS_WRAPPED:
		case PS_FROZEN:
				if sprite_index == sprite_get("hurt") {
					sprite_index = sprite_get("item_hurt");
					item_hold_sprite = 12;
				}
				if sprite_index == sprite_get("hurtground") {
					sprite_index = sprite_get("item_hurtground");
					item_hold_sprite = 13;
				}
				if sprite_index == sprite_get("bighurt") {
					sprite_index = sprite_get("item_bighurt");
					item_hold_sprite = 5;
				}
				if sprite_index == sprite_get("uphurt") {
					sprite_index = sprite_get("item_uphurt");
					item_hold_sprite = 14;
				}
				if sprite_index == sprite_get("downhurt") {
					sprite_index = sprite_get("item_downhurt");
					item_hold_sprite = 15;
				}
				if sprite_index == sprite_get("bouncehurt") {
					sprite_index = sprite_get("item_bouncehurt");
					item_hold_sprite = 16;
				}
				if sprite_index == sprite_get("spinhurt") {
					sprite_index = sprite_get("item_spinhurt");
					image_index = ((state_timer / 8) % 4)
					item_hold_sprite = 17;
				}
		break;
		case PS_ROLL_FORWARD:
		case PS_ROLL_BACKWARD:
		case PS_TECH_FORWARD:
		case PS_TECH_BACKWARD:
			sprite_index = sprite_get("item_roll");
			item_hold_sprite = 7;
		break;
		case PS_PARRY:
		case PS_PARRY_START:
			sprite_index = sprite_get("item_parry");
			item_hold_sprite = 6;
		break;
		case PS_CROUCH:
			sprite_index = sprite_get("item_crouch");
			item_hold_sprite = 3;
		break;
	}
	if (state_cat == SC_AIR_NEUTRAL && in_flight) {
		sprite_index = sprite_get("item_float");
		image_index = ((state_timer * idle_anim_speed) % 4)
		item_hold_sprite = 11;
	}
} else {
	if (state_cat == SC_AIR_NEUTRAL && in_flight) {
		sprite_index = sprite_get("float");
		image_index = ((state_timer * idle_anim_speed) % 4)
	}
}