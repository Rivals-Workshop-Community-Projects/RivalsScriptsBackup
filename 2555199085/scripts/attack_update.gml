switch(attack) {
case AT_NSPECIAL:
	can_shield = true
	can_wall_jump = true
	can_fast_fall = false
	switch(window) {
		case 1:
			sound_play(asset_get("mfx_back"))
			nspecialTimer = 0
		break;
		case 2: 
			if nspecialTimer < 10 {
				nspecialTimer += 1
			}
			if !special_down {
				if nspecialTimer  >= 10 {
						if plantRespawn != 1 {
							window = 3
							window_timer = 0
						} else {
							sound_play(sound_get("x"))
							window = 4
							window_timer = 0
						}
				} else {
					plantAttack = 1
					window = 4
					move_cooldown[AT_NSPECIAL] = 6
				}
			} else {
				if (up_down || down_down || left_down || right_down) {
					stickDir = (
					((up_down && !down_down && !left_down && right_down) * 3) + //Up-Right
					((!up_down && !down_down && !left_down && right_down) * 4) +  //Right
					((!up_down && down_down && !left_down && right_down) * 5) + //Down-Right
					((!up_down && down_down && !left_down && !right_down) * 6) + //Down
					((!up_down && down_down && left_down && !right_down) * 7) + //Down-Left
					((!up_down && !down_down && left_down && !right_down) * 8) + //Left
					((up_down && !down_down && left_down && !right_down) * 1) + //Up-Left
					((up_down && !down_down && !left_down && !right_down) * 2) // Up
					)
				}
				if (stickDir == 0 || stickDir == -4) {
					stickDir = 2
				}
				if attack_pressed {
					if (stickDir != -4 || plant[0] == -4) {
						if plantRespawn != 1 {
							window = 3
							window_timer = 0
							//plantMaxCooldown = 30
							//plantCooldown = 30
						} else {
							sound_play(sound_get("x"))
							window = 4
							window_timer = 0
						}
					}
				}
				
				if window_timer == 20 {
					window_timer = 0
				}
			}
		break;
		case 3:
		
			if window_timer = 6 {
				if (plant[0] != -4) {
					instance_destroy(plant[0])
				} 
				sound_play(sound_get("plant"))
				plant[0] = instance_create( x + (spr_dir * 44), y, "obj_article1" );
			}
		break;

		break;
	}
	
	
	/*
	if (window == 1) {
		if window_timer = 1 {
			stickDir = -4	
		}
		if (window_timer < 6 && !special_down) {
			window_timer = 21
		} else {
			if (up_down || down_down || left_down || right_down) {
				stickDir = (
				((up_down && !down_down && !left_down && right_down) * 3) + //Up-Right
				((!up_down && !down_down && !left_down && right_down) * 4) +  //Right
				((!up_down && down_down && !left_down && right_down) * 5) + //Down-Right
				((!up_down && down_down && !left_down && !right_down) * 6) + //Down
				((!up_down && down_down && left_down && !right_down) * 7) + //Down-Left
				((!up_down && !down_down && left_down && !right_down) * 8) + //Left
				((up_down && !down_down && left_down && !right_down) * 1) + //Up-Left
				((up_down && !down_down && !left_down && !right_down) * 2) // Up
				)
			}
		}
		if (stickDir == 0 || stickDir == -4) {
			stickDir = 2
		}
		if attack_pressed {
			if (stickDir != -4 || plant[0] == -4) {
				if plantRespawn != 1 {
					if (plant[0] != -4) {
						instance_destroy(plant[0])
					} 
					sound_play(sound_get("plant"))
					plant[0] = instance_create( x + (spr_dir * 48), y, "obj_article1" );
					window_timer = plantMenuEndFrame
					//plantMaxCooldown = 30
					//plantCooldown = 30
				} else {
					sound_play(sound_get("x"))
					window_timer = 11
				}
			}
		}
		if (window_timer == (plantMenuEndFrame - 1)) {
			if (special_down) {
			window_timer = (plantMenuEndFrame - 2)
			} else {
				if plantRespawn != 1 {
					if (plant[0] == -4 && stickDir != -4) {
						sound_play(sound_get("plant"))
						plant[0] = instance_create( x + (spr_dir * 48), y, "obj_article1" );
						plantMaxCooldown = 30
						plantCooldown = 30
					}
				} else {
					sound_play(sound_get("x"))
					window_timer = 11
				}
			}
		}
	}
	*/
break;
case AT_FSPECIAL:
	if (window == 1) {
		if (window_timer == 2) {
			if plant[0] != -4 {
				plant[0].spr_dir = spr_dir
			}
		}
	}
break;
case AT_USPECIAL:
if window <= 2 {
can_fast_fall = false;
} else {
can_fast_fall = true;	
}
can_wall_jump = true;
if has_hit && window == 2 {
	if right_down && spr_dir == -1 {
		spr_dir = 1
	}
	if left_down && spr_dir == 1 {
		spr_dir = -1
	}
}
break;
case AT_DSPECIAL:
if window > 1 && window <= 3 && !hitpause {
	vsp = 0
	hsp = spr_dir * 8
}
if free {
	hsp *= .98
}
if window == 4 {
	can_wall_jump = true
}
break;
case AT_DSPECIAL_AIR:
can_fast_fall = false
if window == 1 {
	hsp = 0
	vsp = 0
}
if window > 1 && window <= 3 && !hitpause {
	vsp = 12
	hsp = spr_dir * 6
}
if window == 5 {
	destroy_hitboxes();
}
if window == 4 {
	can_wall_jump = true
}
break;
case AT_DATTACK:
char_height = 96
if window < 6 {
	if free {
		window_timer = 0		
		window = 6
	}
}
if window == 6 && window_timer == 4 {
	vsp = -8
}
break;
case AT_JAB:
	was_parried = false
break;
default:
break;
}