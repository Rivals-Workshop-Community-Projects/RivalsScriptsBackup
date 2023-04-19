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
	if (clone_active && !clone_owner.clone_hit_timer) {
		if (state == PS_ATTACK_AIR) {
			
		} else {
			sprite_index = sprite_get("idle");
			image_index = round(state_timer % (8 * 5) / 5);
			hurtboxID.sprite_index = sprite_get("clone_idle_hurt");
			//print(image_index);
		}
	} else {
		sprite_index = sprite_get("hurt");
		hurtboxID.sprite_index = sprite_get("empty");
	}
	hurtboxID.x = x;
	hurtboxID.y = y;
} else {
	if (instance_exists(leak_proj) && is_oc) {
		switch(state) {
			case PS_IDLE:
				sprite_index = sprite_get("no_idle");
				image_index = ((state_timer * idle_anim_speed) % 8)
			break;
			case PS_WALK_TURN:
			case PS_DASH_TURN:
				sprite_index = sprite_get("no_walkturn");
			break;
			case PS_WALK:
				sprite_index = sprite_get("no_walk");
				image_index = ((state_timer * walk_anim_speed) % 4)
			break;
			case PS_DASH:
				sprite_index = sprite_get("no_dash");
				image_index = ((state_timer * dash_anim_speed) % 4)
			break;
			case PS_DASH_STOP:
				sprite_index = sprite_get("no_dashstop");
			break;
			case PS_DASH_START:
				sprite_index = sprite_get("no_dashstart");
			break;
			case PS_LAND:
			case PS_PRATLAND:
			case PS_LANDING_LAG:
			case PS_TECH_GROUND:
			case PS_WAVELAND:
				sprite_index = sprite_get("no_land");
			break;
			case PS_JUMPSQUAT:
				sprite_index = sprite_get("no_jumpstart");
			break;
			/*
			case PS_WAVELAND:
				sprite_index = sprite_get("no_waveland");
			break;
			*/
			case PS_FIRST_JUMP:
			case PS_IDLE_AIR:
				sprite_index = sprite_get("no_jump");
			break;
			case PS_DOUBLE_JUMP:
			case PS_WALL_JUMP:
			case PS_WALL_TECH:
			case PS_AIR_DODGE:
				sprite_index = sprite_get("no_doublejump");
			break;
			case PS_HITSTUN:
			case PS_HITSTUN_LAND:
			case PS_TUMBLE:
			case PS_PRATFALL:
			case PS_WRAPPED:
			case PS_FROZEN:
					if sprite_index == sprite_get("hurt") {
						sprite_index = sprite_get("no_hurt");
					}
					if sprite_index == sprite_get("hurtground") {
						sprite_index = sprite_get("no_hurtground");
					}
					if sprite_index == sprite_get("bighurt") {
						sprite_index = sprite_get("no_bighurt");
					}
					if sprite_index == sprite_get("uphurt") {
						sprite_index = sprite_get("no_uphurt");
					}
					if sprite_index == sprite_get("downhurt") {
						sprite_index = sprite_get("no_downhurt");
					}
					if sprite_index == sprite_get("bouncehurt") {
						sprite_index = sprite_get("no_bouncehurt");
					}
					if sprite_index == sprite_get("spinhurt") {
						sprite_index = sprite_get("no_spinhurt");
						image_index = ((state_timer / 8) % 4)
					}
			break;
			case PS_ROLL_FORWARD:
			case PS_ROLL_BACKWARD:
			case PS_TECH_FORWARD:
			case PS_TECH_BACKWARD:
				sprite_index = sprite_get("no_roll");
			break;
			case PS_PARRY:
			case PS_PARRY_START:
				sprite_index = sprite_get("no_parry");
			break;
			case PS_CROUCH:
				sprite_index = sprite_get("no_crouch");
			break;
			case PS_ATTACK_AIR:
			case PS_ATTACK_GROUND:
				switch(attack) {
					case 40: //Grab
						sprite_index = sprite_get("no_grab");
					break;
					case 41: //Hold
						sprite_index = sprite_get("no_grab_hold");
					break;
					case 42: //Pummel
						sprite_index = sprite_get("no_pummel");
					break;
					case 43: //Forward Throw
						sprite_index = sprite_get("no_fthrow");
					break;
					case 44: //Down Throw
						sprite_index = sprite_get("no_dthrow");
					break;
					case 45: //Back Throw
						sprite_index = sprite_get("no_bthrow");
					break;
					case 46: //Up Throw
						sprite_index = sprite_get("no_uthrow");
					break;
				}
			break;
		}	
	}
	
	if (state == PS_IDLE && !is_oc && state_timer >= fspecial_once_cooldown) {
		sprite_index = sprite_get("old_idle");
		image_index = ((state_timer * idle_anim_speed) % 8)
	}
	
	if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {
		switch(attack) {
			case 40: //Grab
				hurtboxID.sprite_index = sprite_get("grab_hurt");
			break;
			case 41: //Hold
				hurtboxID.sprite_index = sprite_get("grab_hold_hurt");
			break;
			case 42: //Pummel
				hurtboxID.sprite_index = sprite_get("pummel_hurt");
			break;
			case 43: //Forward Throw
				hurtboxID.sprite_index = sprite_get("fthrow_hurt");
			break;
			case 44: //Down Throw
				hurtboxID.sprite_index = sprite_get("dthrow_hurt");
			break;
			case 45: //Back Throw
				hurtboxID.sprite_index = sprite_get("bthrow_hurt");
			break;
			case 46: //Up Throw
				hurtboxID.sprite_index = sprite_get("uthrow_hurt");
			break;
		}
	}
}



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








