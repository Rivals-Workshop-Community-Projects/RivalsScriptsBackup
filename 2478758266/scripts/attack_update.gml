
if (attack == AT_USPECIAL){
        if (window == 2 && window_timer == 1){
            take_damage(player, -19, -19)
            move_cooldown[AT_USPECIAL] = 900
        }
}

if (attack == AT_NSPECIAL_AIR){
        if (window == 3 && window_timer == 1){
            take_damage(player, 32, 32)
        }
}

if (attack == AT_USPECIAL_GROUND){
	if (window == 2 && shield_pressed)
	{
		window = 3;
		window_timer = 0;
	}
	can_wall_jump = true;
}

//fspecial charge
if (attack == AT_FSPECIAL){
	can_fast_fall = false;
	
    if (window == 2){ //CHARGING
		if (shield_pressed) { //Shield storing
			window = 8;
			window_timer = 6;
		}
		if (special_down) {
			if (window_timer == 10){ //loop
				window_timer = 1;
			}
			if (55 > pkfire) { //Adding charge
			pkfire += .5;
				if pkfire == 1 || pkfire == 15 || pkfire == 35 {
					sound_play(sound_get("ding"), false, noone, 1, 1+(pkfire/200));		
					}		
			}
		}
		else { //Releasing special to use the move
				if (pkfire >= 35) { //fully charged
						window = 5;
						window_timer = 0;
				}
				else if (pkfire >= 15){ //partially charged
						window = 4;
						window_timer = 0;
					}
					else { //uncharged
						window = 3;
						window_timer = 0;
					}
				}
			}
	if (window == 3 || window == 4 || window == 5) {
		if window_timer == 6 {
			pkfire = 0;
		}
		if window_timer > 9 { //endlag
			window = 7;
			window_timer = 3;
		}
	}
}

//spell selection code take from cuphead.
if (attack == AT_DSPECIAL_AIR){
	if(window == 2){
	can_jump = true;
	can_shield = true;
	can_move = true;
	}
}

if (attack == AT_DSPECIAL){ //Spell Selection
	if (window == 1) {
		clear_button_buffer(PC_SPECIAL_PRESSED);
	}
	if (!shot_can_cancel) {
		shot_cancel_timer++;
	}
	if (shot_cancel_timer >= 30) {
		shot_can_cancel = true;
	}
    can_fast_fall = false;
    can_move = false;
    if (window == 1) {
    	can_shield = true;
        if (window_timer == 1 && menu_open == false) {
            sound_play(sound_get("openmenu"));
            menu_open = true;
	        shot_menu = sprite_get("shot_select");
	        shot_cursor = sprite_get("select_cursor");
	        sprite_change_offset( "shot_select", 35, -14 );
	        sprite_change_offset( "select_cursor", 7, -14 );
        }
    }
    if (window == 2) {
    	can_shield = true;

     
        if (down_pressed) {
            sound_play(sound_get("up"));
            current_shot += 1;
            if (current_shot >= 8) {
                current_shot = 1;
            }
        }
        if (up_pressed) {
            sound_play(sound_get("up"));
            current_shot += -1;
            if (current_shot <= 0) {
                current_shot = 7;
            }
        }
        
        if (special_pressed && shot_can_cancel) {
        	sound_play(sound_get("yeahh"));
        	sound_play(sound_get("yeahh"));
            window = 3;
            window_timer = 0;
            menu_open = false;
            shot_cancel_timer = 0;
            shot_can_cancel = false;
        }
        if (attack_pressed && shot_can_cancel) {
        	sound_play(sound_get("yeahh"));
        	sound_play(sound_get("yeahh"));
            window = 3;
            window_timer = 0;
            menu_open = false;
            shot_cancel_timer = 0;
            shot_can_cancel = false;
        }
        if (shield_pressed && shot_can_cancel) {
        	shot_menu = -1;
	        shot_cursor = -1;
	        menu_open = false;
            window = 4;
            window_timer = 0;
            menu_open = false;
            shot_cancel_timer = 0;
            shot_can_cancel = false;
        }
        if (hitpause) {
        	shot_menu = -1;
	        shot_cursor = -1;
	        menu_open = false;
            shot_cancel_timer = 0;
            shot_can_cancel = false;
        }
    }

}

//Spell code framework taken from Cuphead.
if (attack == AT_NSPECIAL){ //Spells

	//if (jump_pressed && !free) {
	//	clear_button_buffer(PC_JUMP_PRESSED);
	//	vsp = -10;
	//	sound_play(asset_get("sfx_jumpground"));
//	}
	
	//if (hsp > 6) {
	//	hsp = 6;
//	}
	
	//if (hsp < -6) {
	//	hsp = -6;
//	}
	
	//fall_through = down_down;
	
	//if (down_pressed && !free) {
	//	y += 8;
   // }

	//if (left_down) {
		//spr_dir = -1;
	//}
	
	//if (left_down && !free && special_down) {
	//	if (hsp > -5) {
	//		hsp += -0.8;
	//	}
	//}
	
//	if (right_down && !free && special_down) {
//		if (hsp < 5) {
//			hsp += 0.8;
//		}
//	}
	
	//if (right_down) {
	//	spr_dir = 1;
	//}
	//if (up_down) {
	//	clear_button_buffer(PC_UP_HARD_PRESSED);
	//	clear_button_buffer(PC_UP_STICK_PRESSED);
	//	attack = AT_NSPECIAL_2;
	//}
    if (window == 3) {
        if (current_shot == 7) {
            if (window_timer == 30) {
                
            }
        }
        if (current_shot == 6) {
            if (window_timer == 30) {
                
            }
        }
        
        if (current_shot == 5) {
            if (window_timer == 30) {
                
            }
        }
        
        if (current_shot == 4) {
            if (window_timer == 27) {
                
            }
        }
        if (current_shot == 3) {
            if (window_timer == 12) {
                
            }
        }
        if (current_shot == 1 || current_shot == 2) {
	        if (window_timer == 4){
	            
	        }
		}
    }
    if (window == 1 && window_timer == 1) {  // pkground
        if (current_shot == 1) {
        	set_attack(AT_UTHROW);
            move_cooldown[AT_NSPECIAL] = 350 
        }
        if (current_shot == 2) { // pkfreeze
        	set_attack(AT_DSPECIAL_2);
            move_cooldown[AT_NSPECIAL] = 200
         
        }
         if (current_shot == 3) {
        	set_attack(AT_NSPECIAL_AIR); // pkthunder
            move_cooldown[AT_NSPECIAL] = 400
                
        }
        if (current_shot == 4) {
        	set_attack(AT_NSPECIAL_2); // pkstarstorm
            move_cooldown[AT_NSPECIAL] = 800
        }
        
        if (current_shot == 5) {
        	set_attack(AT_FSPECIAL_AIR); // offense
            move_cooldown[AT_NSPECIAL] = 600
        }
        
        
        if (current_shot == 6) {
        	set_attack(AT_DSPECIAL_AIR); // defense
            move_cooldown[AT_NSPECIAL] = 600
        }
        
        if (current_shot == 7) {
        	set_attack(AT_USPECIAL_2); //ropesnake
            move_cooldown[AT_NSPECIAL] = 0
        }
    }
}


if (attack == AT_UTHROW && free){
    attack = AT_DTHROW;
}

if (attack == AT_FSPECIAL_AIR){

    if (window == 3) {
			
			psi_active = 1;
			psi_check = 1;
			psi_timer = 600; 
			move_cooldown[AT_FSPECIAL_AIR] = 1500;
			
			offenseup = 2;
			
			set_player_damage(player, InitialDamage)
		
 			init_shader();
		}
	}

if (attack == AT_DSPECIAL_AIR){
    if (window == 3) {
			psi_active = 1;
			psi_check = 1;
			psi_timer = 600;
			move_cooldown[AT_DSPECIAL_AIR] = 1500;
			
			defenseup = true;
			
			set_player_damage(player, InitialDamage)
		
 			init_shader();
		}
	}
