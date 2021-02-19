 //B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_DAIR){
	if (window == 3 && window_timer == 15){
		set_state( PS_IDLE_AIR );
	}
}

if(attack == AT_DTILT){
	if(window == 4 && window_timer == 12){
		set_state(PS_IDLE);
	}
	if(window == 6 && window_timer > 3){
		can_attack = true
		can_jump = true
		can_special = true
		can_ustrong = true
		can_strong = true
	}
}

if(attack == AT_DSPECIAL_2){
	if(window == 1 && !free || window == 2 && !free){
		window = 3
		window_timer = 0
	}
	if(window == 2 && window_timer == 40 && free){
		window = 5
		window_timer = 8
	}
	if(window == 4){
		if(jump_pressed && !free){
			vsp = -7
		}
		if(!special_down || window_timer == 30){
			window = 5
			window_timer = 0
		}
		if(hsp > 8){
			hsp = 8
		}
		can_move = false
	}
}

if (attack == AT_JAB && window == 3){
	can_jump = true
	if (right_pressed || left_pressed){
		set_state(PS_IDLE)
	}
}

if (attack == AT_DSPECIAL){
	if (window == 2 && window_timer == 15 && !free){
			if(waterCharges > 0){
	        saw_blade = instance_create(x + (spr_dir*85),y - 69, "obj_article1");
	        move_cooldown[AT_DSPECIAL] = 50
		}
	}
	if(window < 2 && saw_blade != 0){
		if(instance_exists(saw_blade)){
				spawn_hit_fx(x, y, waterPort);
				x = saw_blade.x
				y = saw_blade.y + 69
				set_attack(AT_EXTRA_1)
    	}
	}
	
}

if (attack == AT_USPECIAL){
	if(!free){
		if(!instance_exists(waterBomb) || waterBomb == 0){
			if (window == 2 && window_timer == 3){
					if(waterCharges > 0){
					waterCharges -= 1
			        waterBomb = instance_create(x + (spr_dir*25),y - 65,"obj_article2");
				}
			}
		}else if(window == 1 && waterBomb != 0){
			window = 2
			window_timer = 0
		}
		if(window == 1){
			if(waterCharges <= 0){
				window = 2
				window_timer = 0
			}
		}
	if(window == 2 && window_timer == 2 && waterBomb != 0){
			if(instance_exists(waterBomb)){
				sound_play(asset_get("sfx_waterhit_weak"))
				move_cooldown[AT_USPECIAL] = 50
				waterBomb.vsp = -8 + (waterBomb.hsp*waterBomb.spr_dir)
				waterBomb.hsp += 0.5*waterBomb.spr_dir
			}
		}
	}else{
		set_attack(AT_USPECIAL_2)
	}
}

if(attack == AT_USPECIAL_2){
	if(window == 3){
		uspecVar = 0
	}
	if (waterCharges > 0){
		if(window == 2 && window_timer == 1){
		waterCharges -= 1
        instance_create(x - (10 * spr_dir),y - 30,"obj_article2");
		}
		set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("uspecialair"));
		set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, -14);
		set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
	}else{
		set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("uspecialairnob"));
		set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, -8);
		set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HAS_SFX, 0);
	}
	if(free){
		move_cooldown[AT_USPECIAL] = 20
		move_cooldown[AT_USPECIAL_2] = 20
	}else{
		move_cooldown[AT_USPECIAL] = 0
		move_cooldown[AT_USPECIAL_2] = 0
	}
}

if(attack == AT_UTILT){
    if(window == 4 && window_timer == 39){
        set_state(PS_PRATFALL)
    }
    if(window == 4 && !free){
    	window = 5
    	window_timer = 0
    }
}

if(attack == AT_NSPECIAL_2 || attack == AT_USPECIAL || attack == AT_UTILT){
	can_fast_fall = false
}else{
	can_fast_fall = true
}

if(attack == AT_FSPECIAL){
	if(window == 2 && window_timer == 1){
		if(instance_exists(obj_article1)){
			obj_article1.spr_dir = spr_dir
			if(obj_article1.spr_dir == -1){
				obj_article1.hsp = -0.1
				move_cooldown[AT_FSPECIAL] = 25
			}else{
				obj_article1.hsp = 0.1
				move_cooldown[AT_FSPECIAL] = 25
			}
		}
	}
	if(!free){
		if(window == 2 && window_timer == 1){
			hsp = 2 * spr_dir
		}
		if(window == 4 && window_timer == 1){
			hsp = 2 * spr_dir
		}
		if(window == 6 && window_timer == 1){
			hsp = 4 * spr_dir
		}
	}else if(free && fspecVar > 0){
		if(window == 2 && window_timer == 1){
			vsp = -3
			fspecVar -= 1
			spawn_hit_fx(x, y, bouncePad)
			sound_play(asset_get("sfx_watergun_fire"))
		}
		if(window == 4 && window_timer == 1){
			vsp -= 3
			fspecVar -= 1
			spawn_hit_fx(x, y, bouncePad)
			sound_play(asset_get("sfx_watergun_fire"))
		}
	}
}

if(attack == AT_USTRONG){
	if(window == 4){
		if(window_timer == 20){
			window_timer = 0
		}
		if(!free){
			window = 5
			window_timer = 0
		}
	}
}

if(attack == AT_JAB){
	if(window == 6){
		if(!attack_down){
			window = 7
			window_timer = 0
		}
	}
	if(window == 6 && window_timer == 12){
		if(attack_down){
		window = 5
		window_timer = 0
		}
	}
}

if(attack == AT_NSPECIAL){
	if(window == 2){
		if(!special_down && window_timer > 6){
			window = 3
			window_timer = 20
		}
	}
	if(window == 3){
		if(window_timer == 19 && special_down){
			window = 3
			window_timer = 0
		}
		if(!special_down){
			window = 3
			window_timer = 20
		}
	}
	combatTimer = 5
}

if(attack == AT_DATTACK){
	if(free && window == 1){
	window = 2
	window_timer = 0
	}
	off_edge = true
}

if(attack == AT_TAUNT){
	if(window == 4 && window_timer > 5 && window_timer < 10){
		if(special_down){
			window_timer = 5
		}
	}
	if(spr_dir == -1){
		set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt_reversed"));
	}else if(spr_dir == 1){
		set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
	}
}