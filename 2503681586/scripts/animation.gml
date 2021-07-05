if custom_clone {
	if "is_bubble" !in self {
		if  (invince_time > 120 && nana_state == 5) || nana_state == 6 {
				sprite_index = sprite_get("empty")
			if nana_state == 6 {
				fall_through = true
				hurtboxID.sprite_index  = sprite_get("empty")
			}
		} else {
			if clownState = 0 {
				switch(state) {
		
					case PS_TECH_FORWARD:
					case PS_ROLL_FORWARD:
						//hurtboxID.sprite_index  = sprite_get("f_idle_hurt")
						sprite_index = sprite_get("f_rollforward")
						image_index = round(state_timer / 12) 
					break;
					case PS_TECH_BACKWARD:
					case PS_ROLL_BACKWARD:
						//hurtboxID.sprite_index  = sprite_get("f_idle_hurt")
						sprite_index = sprite_get("f_rollback")
						image_index = round(state_timer / 12) 
					break;
					
					//Ground Neutrals		
					case PS_IDLE_AIR:					
					case PS_IDLE:
						hurtboxID.sprite_index  = sprite_get("f_idle_hurt")
						sprite_index = sprite_get("f_idle")
						image_index =  round(state_timer / 10) 
					break;
					case PS_CROUCH:
						hurtboxID.sprite_index  = sprite_get("f_crouch_hurt")
						sprite_index = sprite_get("f_crouch")
					break;	
					case PS_LAND:
					case PS_TECH_GROUND:
					case PS_LANDING_LAG:
					case PS_WAVELAND:
					case PS_PRATLAND:
					case PS_JUMPSQUAT:
						hurtboxID.sprite_index  = sprite_get("f_crouch_hurt")
						sprite_index = sprite_get("f_crouch")
						image_index = 1
					break;	
								
					//Ground Movements
					case PS_WALK:
						hurtboxID.sprite_index  = sprite_get("f_idle_hurt")
						sprite_index = sprite_get("f_walk")
						image_index =  round(state_timer / 5) 
					break;				
					case PS_DASH_TURN:
					case PS_WALK_TURN:
						hurtboxID.sprite_index  = sprite_get("f_idle_hurt")
						sprite_index = sprite_get("f_turn")
						image_index = round(state_timer / 3) 
					break;
					case PS_DASH_START:
						hurtboxID.sprite_index  = sprite_get("f_idle_hurt")
						sprite_index = sprite_get("f_dash")
						image_index = 0
					break;
					case PS_DASH:
						hurtboxID.sprite_index  = sprite_get("f_idle_hurt")
						sprite_index = sprite_get("f_dash")
						image_index = round(state_timer / 5) 
					break;
					case PS_DASH_STOP:
						hurtboxID.sprite_index  = sprite_get("f_idle_hurt")
						sprite_index = sprite_get("f_dash")
						image_index = 3
					break;
					
					//Jump
					case PS_FIRST_JUMP:
					case PS_DOUBLE_JUMP:
						hurtboxID.sprite_index  = sprite_get("f_idle_hurt")
						sprite_index = sprite_get("f_jump")
						if 32 > state_timer {
						image_index = round(state_timer / 13) 
						} else {
							image_index = 2
						}
					break;
					
					//Weird
					case PS_AIR_DODGE:
						sprite_index = sprite_get("f_airdodge")
					break;
					
					case PS_PARRY:
					case PS_PARRY_START:
						hurtboxID.sprite_index  = sprite_get("f_idle_hurt")
						sprite_index = sprite_get("f_parry")
					break;
					
					case PS_WALL_TECH:
					case PS_WALL_JUMP:
						hurtboxID.sprite_index  = sprite_get("f_idle_hurt")
						sprite_index = sprite_get("f_walljump")
						if 11 > state_timer {
							image_index = round(state_timer / 5) 
						} else {
							image_index = 2
						}
					break;

					case PS_PRATFALL:
					case PS_WRAPPED:
					case PS_FROZEN:
					case PS_HITSTUN_LAND:
					case PS_HITSTUN:
						hurtboxID.sprite_index  = sprite_get("f_other_hurt")
						sprite_index = sprite_get("f_hurt")
					break;



					default:
					break;
				}
			} else {
				switch(state) {
					case PS_ATTACK_GROUND:
					case PS_ATTACK_AIR:
						if attack == 3 {
							sprite_index =  sprite_get("fx_attack")
							hurtboxID.sprite_index = sprite_get("fx_attack_hurt")
						}
					break;
					case PS_AIR_DODGE:
						sprite_index = sprite_get("fx_airdodge")
						hurtboxID.sprite_index  = sprite_get("f_crouch_hurt")
					break;
					case PS_PRATFALL:
					case PS_WRAPPED:
					case PS_FROZEN:
					case PS_HITSTUN_LAND:
					case PS_HITSTUN:
						hurtboxID.sprite_index  = sprite_get("f_other_hurt")
						sprite_index = sprite_get("f_hurt")
					break;
					case PS_WALL_TECH:
					case PS_WALL_JUMP:
						sprite_index = sprite_get("fx_walljump")
						if 11 > state_timer {
							image_index = round(state_timer / 5) 
						} else {
							image_index = 2
						}
					break;
					default:
						hurtboxID.sprite_index  = sprite_get("f_crouch_hurt")
						sprite_index = sprite_get("f_die")
						image_index =  get_gameplay_time() / 3
					break
				}

			}
		}
	} else {
		if bubbleState = 1 {
			hurtboxID.sprite_index  = sprite_get("f_idle_hurt")
			sprite_index = sprite_get("bubble")
			image_index =  get_gameplay_time() / (60 / 4)
		} else {
			hurtboxID.sprite_index  = sprite_get("empty")
			sprite_index = sprite_get("empty")
		}
	}
} else {
	if attack == AT_EXTRA_3 && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) {
		hurtboxID.sprite_index  = sprite_get("throw_hurt")
	}
}
