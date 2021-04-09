 //B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//Dstrong Combo Grab
if (attack == AT_DSTRONG && state == PS_ATTACK_GROUND){
    if (window > 1 && grabbedid != noone){
		grabbedid.ungrab = 0;
        //grabbedid.visible = false; //UNCOMMENT THIS LINE TO MAKE THE GRABBED PLAYER INVISIBLE
        if(window == 2){
	        grabbedid.x = lerp(grabbedid.x, x, 0.1); //SET GRABBED PLAYER X TO BE RELATIVE TO PLAYER X
			grabbedid.y = lerp(grabbedid.y, y - 10, 0.1); //SET GRABBED PLAYER Y TO BE RELATIVE TO PLAYER Y
        }
        grabbedid.wrap_time = 6000;
        grabbedid.state = PS_WRAPPED;
        if(window == 3){ //REPLACE THIS IF CONDITION WITH WHAT YOU WANT TO RELEASE THE GRAB
            grabbedid.ungrab = 1
            grabbedid.state = PS_TUMBLE;
            grabbedid = noone;
        }
    }
}

if (attack == AT_DAIR){
	if (window == 3 && window_timer == 15){
		set_state( PS_IDLE_AIR );
	}
}

if(attack == AT_DTILT){
	if(window == 4 && window_timer == 15){
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
	if(waterLevelEmergency > 7 && !free){
		if(window == 1 || window == 2 && window_timer < 16)
		was_parried = true
	}
	if (window == 2 && window_timer == 15 && !free){
			if(waterCharges > 0 || waterLevelEmergency > 7){
	        saw_blade = instance_create(x + (spr_dir*85),y - 69, "obj_article1");
	        move_cooldown[AT_DSPECIAL] = 50
		}
	}
	if(window < 2 && saw_blade != 0){
		if(instance_exists(saw_blade)){
				set_attack(AT_EXTRA_1)
    	}
	}
	if(free){
		set_num_hitboxes(AT_DSPECIAL, 5);
	}else{
		set_num_hitboxes(AT_DSPECIAL, 2);
	}
}

if(attack == AT_EXTRA_1){
	was_parried = false
	if(window == 1 && window_timer == 21){
		if(instance_exists(saw_blade)){
		spawn_hit_fx(x, y, waterPort);
		x = saw_blade.x
		y = saw_blade.y + 69
		}
	}
}

if (attack == AT_USPECIAL){
	if(waterLevelEmergency > 7 && window == 1){
		was_parried = true
	}
	if(!free){
		if(!instance_exists(waterBomb) || waterBomb == 0){
			if (window == 2 && window_timer == 3){
					if(waterCharges > 0 || waterLevelEmergency > 7){
					waterCharges -= 1
			        waterBomb = instance_create(x + (spr_dir*25),y - 65,"obj_article2");
				}
			}
		}else if(window == 1 && waterBomb != 0){
			window = 2
			window_timer = 0
		}
		if(window == 1){
			if(waterCharges <= 0 && waterLevelEmergency <= 7){
				window = 2
				window_timer = 0
			}
		}
	if(window == 2 && window_timer == 2 && waterBomb != 0){
			if(instance_exists(waterBomb)){
				sound_play(asset_get("sfx_waterhit_weak"))
				move_cooldown[AT_USPECIAL] = 50
				spawn_hit_fx(waterBomb.x, waterBomb.y, 109)
				waterBomb.vsp = -6
				waterBomb.hsp = 2*spr_dir
			}
		}
	}else{
		set_attack(AT_USPECIAL_2)
	}
}

if(attack == AT_USPECIAL_2){
	if(waterLevelEmergency > 7 && window == 1){
		if(!forceNoWater){
			was_parried = true
		}else{
			was_parried = false
		}
	}
	if(window == 3){
		uspecVar = 0
	}
	if (waterCharges > 0 || waterLevelEmergency > 7){
		if(window == 2 && window_timer == 1 && !forceNoWater){
			waterCharges -= 1
	        waterBomb = instance_create(x - (10 * spr_dir),y - 30,"obj_article2");
		}
		if(window == 1){
			if(!forceNoWater){
				set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("uspecialair"));
				set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, -15);
				set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
				if(shield_pressed){
					forceNoWater = true
					spawn_hit_fx(x - 8*spr_dir, y - 90, 111)
					sound_play(asset_get("sfx_waterhit_weak"))
					vsp = -5
					window_timer = 1
					window = 1
				}
			}else{
				set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("uspecialairnob"));
				set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, -11);
				set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HAS_SFX, 0);
			}
		}
	}else{
		set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("uspecialairnob"));
		set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, -11);
		set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HAS_SFX, 0);
	}
	if(window == 1){
		if(window_timer == 0){
			forceNoWater = false
		}
	}
	if(free){
		if(waterCharges == 0  && waterLevelEmergency <= 7 && !forceNoWater){
			move_cooldown[AT_USPECIAL] = 35
			move_cooldown[AT_USPECIAL_2] = 35
		}else if(forceNoWater){
			move_cooldown[AT_USPECIAL] = 45
			move_cooldown[AT_USPECIAL_2] = 45
		}else{
			move_cooldown[AT_USPECIAL] = 12
			move_cooldown[AT_USPECIAL_2] = 12
		}
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
		if(instance_exists(saw_blade) && saw_blade != noone){
			if(saw_blade.fspec_turns < 2){
				saw_blade.fspec_turns += 1
				sound_play(asset_get("sfx_gus_propeller_dagger_wall"))
				spawn_hit_fx(saw_blade.x, saw_blade.y + 60, 109)
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
	}
	if(!free){
		if(window == 1 && window_timer == 5){
			hsp = 2 * spr_dir
		}
		if(window == 4 && window_timer == 1){
			hsp = 2 * spr_dir
		}
		if(window == 6 && window_timer == 1){
			hsp = 4 * spr_dir
		}
	}else if(free && fspecVar > 0){
		if(window == 1 && window_timer == 5){
			vsp = -3
			fspecVar -= 1
			spawn_hit_fx(x, y, bouncePad)
			sound_play(asset_get("sfx_watergun_fire"))
		}
		if(window == 4 && window_timer == 2){
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
	if(window == 2 || window == 3){
		create_hitbox( AT_NSPECIAL, 2, x, y)
	}
	if(window == 2){
		effect_drawangle = 0
		if(!special_down && window_timer > 6){
			window = 3
			window_timer = 20
		}
	}
	if(window == 3){
		set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 5 + state_timer / 15);
		set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 6 + state_timer / 15);
		set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.3 + state_timer / 150);
		set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 7 + state_timer / 150);
		set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 0.2 + state_timer / 150);
		
		if(window_timer == 19 && special_down){
			window = 3
			window_timer = 0
		}
		if(!special_down){
			window = 3
			window_timer = 20
		}else if(state_timer > 80){
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

if(attack == AT_DSTRONG){
	if(window == 2){
		if(hsp < 3 && hsp > -3){
			if(left_pressed || left_down){
				hsp -= 1
			}else if(right_pressed || right_down){
				hsp += 1
			}else{
				hsp /= 2
			}
		}
	}
}