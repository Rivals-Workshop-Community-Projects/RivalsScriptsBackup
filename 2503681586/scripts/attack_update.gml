//
if !is_nana {
	switch(attack) {
	//case AT_JAB:
	//	was_parried = false
	//break;		
	case AT_TAUNT:
		clownSet = 0
		can_fast_fall = false
		can_move = false
		switch(tauntMode) {
			case 0:
				if taunt_down {
					if window_timer == 31 && !invincible  {
						window_timer = 0
					}
				}
			break;
			case 1:
				if window_timer == 1 {
					tauntRep = 0
				}
				if !taunt_down && !taunt_pressed {
					tauntRep = 1
				}
				if taunt_pressed && tauntRep == 1 {
					window_timer = 32
					move_cooldown[AT_TAUNT] = 10
				}
				if window_timer == 31 {
					window_timer = 2
				}
			break;
		}
	
	if instance_exists(army) {
		army.clownControl = 1
	}	

	break;
	case AT_DAIR:
		if !free {
			destroy_hitboxes()
		}
	break;
	case AT_USPECIAL:
		can_wall_jump = true
		if window == 1 {
			if free {
			set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 6); //2
			} else {
			set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 2); //2
			}
			uspecialSpin = 2 //5
		}
		if window == 2 {
			if !hitpause {
				if free {
					vsp = -4 // -2 on 5
					set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 7);
				}  else {
					hsp = spr_dir * 2
					set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
				}
			}
			if window_timer == 11 && uspecialSpin > 0 {
				window_timer = 0
				uspecialSpin -= 1
			}
		}
	break;
	case AT_FSPECIAL:
		if window == 1 {
			fspecialDidHold = 0
			fspecialGrab = 0
		}
		if has_hit  {
			if hitpause && fspecialGrab == 0  {
				fspecialGrab = 1
				old_hsp += spr_dir * 10
			} 
			if !hitpause && fspecialGrab == 1 && fspecialDidHold == 0 {
				can_jump = true
				djumps = 0
			}

		}
		with pHitBox {
			if orig_player == other.player && attack == AT_FSPECIAL && hbox_num == 1 && other.fspecialGrab == 0 &&
			(
				(place_meeting(x, y, asset_get("par_block"))) 
				|| (place_meeting(x, y, asset_get("par_jumpthrough"))) 
			)
				{
					other.fspecialGrab = 1
					other.hsp += other.spr_dir * 10
					other.can_jump = true
					instance_destroy(self)
				}
		}

	break;
	case AT_NSPECIAL:
		if free {
			army.move_cooldown[AT_FSPECIAL] = 2
			army.move_cooldown[AT_DSPECIAL] = 2
			army.move_cooldown[AT_USPECIAL] = 2
		}
	
		if window == 1 && window_timer = 1 {
			armySpecial = 1
		}
		if instance_exists(army) {
			army.clownControl = 1
		}
		if window == 2 {
			if (special_pressed){
				
				//B-Reverse
				if right_down  && !left_down && spr_dir == -1 {
					spr_dir = 1
				}
				if !right_down  && left_down && spr_dir == 1 {
					spr_dir = -1
				}		

				if shield_down {
					spr_dir *= -1
				}
			
	
				window = 3
				window_timer = 0
			}

		with oPlayer {
			if player != other.player {
				if point_distance(x, y, other.x + other.spr_dir * 24, other. y) < 32 {
					other.window = 3
					other.window_timer = 0
				}
			}
		}
		window_timer = 0
		
		//Something frame datay
		
		}
		
		if window == 3 && window_timer == 1 {

			if free {
				hsp += spr_dir * 6
			} else {
				hsp += spr_dir * 2
			}
		}

	break;
	case AT_DSPECIAL:
		if window == 1 && window_timer == 24 {
			if (object_index != oTestPlayer){
				if !instance_exists(bubble) {
					bubble = instance_create(x,y, "oPlayer");
					bubble.army_leader = self;		
					bubble.is_bubble = 1
				}			
				bubble.y = y - 64
				bubble.x = x
				bubble.bubbleState = 1
			} 
		}
	break;
	case AT_UTILT:
		if window == 1 {
			utiltHold =  utiltHoldLimit
		}
		if window == 3 && attack_down && window_timer == 5 && utiltHold > 0 {
			utiltHold -= 1
			window_timer = 0
		}
		if has_hit {
			hsp = hsp * .99
		}
	break;
	case AT_EXTRA_3: 
		switch(image_index) {
			case 0: 
				invincible = 1
				invince_time = 1
				anemoneGrab.invincible = 1
				anemoneGrab.invince_time = 1
				anemoneGrab.x = x
				anemoneGrab.y = y - 12
				break;
			case 1:
				invincible = 1
				invince_time = 1
				anemoneGrab.invincible = 1
				anemoneGrab.invince_time = 1
				anemoneGrab.x = x
				anemoneGrab.y = y -24
				break;
			case 2:
				invincible = 1
				invince_time = 1
				if anemoneGrab != -4 {
					anemoneGrab.invincible = 0
					anemoneGrab.invince_time = 0
					anemoneGrab.x = x
					anemoneGrab.y = y - 96
				}
				if instance_exists(army) {
					if anemoneGrab == army.id {
						move_cooldown[AT_NSPECIAL] = 30
						if jump_down {
							army.vsp = -16
						} else {
							army.vsp = -8
						}
					}
				}		
				anemoneGrab = -4
				break;	
			case 3:
				//
			break;
			
			
		}
	break;
	}
} else {
	switch(attack) {
		case AT_USPECIAL_2:
			if window == 1 {
				hsp = 0
				vsp = 0 
			}
			if window == 2 {
				clownState = 1
				vsp = -18
				state = PS_PRATFALL
			}
		break;
		case AT_FSPECIAL_AIR:
			if has_hit && !(right_down || left_down) {
				hsp *= .8
			}
		break;
		case AT_FSPECIAL_2:
			if window == 5 {
				clownState = 1
				state = PS_PRATFALL
			}
		break;
		case 3:
			can_wall_jump = true
			if window == 1 {
				vsp = -5
			}
		break;
		case AT_NSPECIAL_2:
			if window == 1 {
				hsp = 0
				speedCharge = 8
			}

			if window == 2 {
				hsp = 0
				if special_down {
					if window_timer == 24  {
						if speedCharge >= 24 {
							speedCharge = 24
							sound_play(asset_get("sfx_bubblespray"))
						} else {
							speedCharge += 2
						}
						window_timer = 0
					}
				} else {
					destroy_hitboxes();
					window = 3
					window_timer = 0					
				}
			}
			if window == 3 {
				hsp = (speedCharge * spr_dir)
				if !free {
					can_jump = 1
				}
			}
		break;
		case AT_DSPECIAL_2:
			can_fast_fall = false
			if window == 1 && window_timer == 1 {
				if free {
					hsp = 0
					vsp = 0
				} else {
					vsp = -8
					hsp = spr_dir * 4
				}
			}
			if window == 2 {
				hsp = 0
				vsp = 0
			}
			if window == 3 {
				can_wall_jump = true
				vsp = 12
				if (has_hit || !free) {
					destroy_hitboxes();
					window = 4
					window_timer = 0
				}
				if window_timer == 10 {
					window_timer = 2
				}
			}
			if window == 4 {
				hsp = 0
				vsp = 0
			}
			if window == 5 {
				vsp = -6
			}
		break;
	}
	
	
}

if shouldThrow != 0 && !is_nana {
	if 
		(
			(attack == AT_USTRONG && window = 3)
	|| 	(attack == AT_NSPECIAL && window = 4)
	|| 	(attack == AT_UAIR && window = 3)
	//|| 	(attack == AT_FSPECIAL && window = 3 && fspecialDidHold = 1) //FSPECIAL GRAB (No Worky)
		)
		{
			shouldThrow = 0
			set_attack(AT_EXTRA_3)
		} else {
			invincible = 1
			invince_time = 1
			anemoneGrab.invincible = 1
			anemoneGrab.invince_time = 1
			anemoneGrab.x = x
			anemoneGrab.y = y - 12
		}
} 
