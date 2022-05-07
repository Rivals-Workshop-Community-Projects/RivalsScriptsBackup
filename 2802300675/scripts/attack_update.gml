//B - Reversals
switch(attack){
	case AT_NSPECIAL:
	case AT_FSPECIAL:
	case AT_DSPECIAL:
	case AT_USPECIAL:
		trigger_b_reverse();
		break;
}

if(attack == AT_FSTRONG){
	if(window == 2 && window_timer = 2 && !hitpause){ 
		sound_play(asset_get("sfx_forsburn_consume_full"));
	}if(window == 2 && window_timer = 7 && !hitpause){
		sound_play(asset_get("sfx_ell_fist_fire"));
		/*if(strong_charge > 30){
			instance_create(x + spr_dir * 112, y-45, ("obj_article1"));
		}*/
	}
}

if(attack == AT_USTRONG){
	if(window == 2 && window_timer = 2 && !hitpause){ 
		sound_play(asset_get("sfx_forsburn_consume_full"));
	}if(window == 2 && window_timer = 8 && !hitpause){
		sound_play(asset_get("sfx_ell_fist_fire"));
		/*if(strong_charge > 30){
			instance_create(x, y-125, ("obj_article1"));
		}*/
	}if(window == 1){
		if(window_timer = 1){
			set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_HSPEED, 0);
			set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_VSPEED, -9);			
		}
		if(joy_pad_idle || up_pressed || up_down){
			set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_HSPEED, 0);
			set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_VSPEED, -9);
		}if(spr_dir == 1){
			if(right_pressed || right_down){
			set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_HSPEED, 1.5);
			set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_VSPEED, -8);				
			}if(left_pressed || left_down){
			set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_HSPEED, -1.5);
			set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_VSPEED, -8);				
			}
		}if(spr_dir == -1){
			if(right_pressed || right_down){
			set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_HSPEED, -1.5);
			set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_VSPEED, -8);				
			}if(left_pressed || left_down){
			set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_HSPEED, 1.5);
			set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_VSPEED, -8);				
			}
		}
	}
}

/*
if(attack == AT_DSTRONG){
  if(window == 2 && window_timer = 3 && !hitpause){ 
  			if(strong_charge > 30){
			instance_create(x, y-75, ("obj_article1"));
		}
	}
}
*/

if(attack == AT_NSPECIAL){
    can_fast_fall = false;
    if(window == 2 && window_timer = 1 && !hitpause){
        //gain charge
        if(nspecial_charge_amount < 10){
            nspecial_charge_amount += 1;
        }
        //small charge
        if(nspecial_charge_amount = 2){
           sound_play(asset_get("sfx_ori_seinhit_weak"));  
           spawn_hit_fx(x + spr_dir * 40, y - 0, hitsmoke);
        }
        //medium charge
        if(nspecial_charge_amount = 5){
           sound_play(asset_get("sfx_ori_seinhit_medium"));  
           spawn_hit_fx(x + spr_dir * 40, y - 0, hitsmoke);
        }
        //large charge
        if(nspecial_charge_amount = 9){
           sound_play(asset_get("sfx_ori_seinhit_heavy")); 
           sound_play(asset_get("sfx_frog_fspecial_charge_full")); 
           spawn_hit_fx(x + spr_dir * 40, y - 18, 19);
           spawn_hit_fx(x + spr_dir * 40, y - 0, hitsmoke);
        }
    }
		
		if (window >= 3 && window != 7){
			if (window_timer == 4){
				move_cooldown[AT_NSPECIAL] = 30;
				nspec_charge = 0;
           
        }
    }if(window == 2 && window_timer = get_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH)-1 && !hitpause){
    if(special_pressed || special_down){
        window = 2;
        window_timer = 0;
        }
    }if(window == 3 && window_timer = 1 && !hitpause){
        if(nspecial_charge_amount != 10){
            sound_play(asset_get("sfx_swish_weak")); 
            create_hitbox(AT_NSPECIAL, 1, x + spr_dir * 40, y - 20);
        }if(nspecial_charge_amount == 10){
            sound_play(asset_get("sfx_swish_medium")); 
            create_hitbox(AT_NSPECIAL, 2, x + spr_dir * 40, y - 20);
        }
        nspecial_charge_amount = 0;
    }if(window == 2){
        if(shield_pressed){
        	nspecial_charge_amount = 0;
            set_state(PS_IDLE);
        }if(jump_pressed){
        	if(free && djumps = 0){
        		nspecial_charge_amount = 0;
            set_state(PS_DOUBLE_JUMP);   
        	}if(!free){
        		nspecial_charge_amount = 0;
            set_state(PS_FIRST_JUMP);   
        	}
        }
    }if(window = 1 && window_timer = 1){
    	clear_button_buffer(PC_SPECIAL_PRESSED);
    	spec_reverse = false;
    	if(!spec_reverse && (spr_dir==1?left_down:right_down) && window_timer < 6){
    	hsp = 5;
    	spr_dir *= -1;
    	hsp *= spr_dir;
    	vsp = -4;
    	spec_reverse = true;
    	}
    }
}

if(attack == AT_FSPECIAL){
    can_fast_fall = false;
    can_move = false;
    can_wall_jump = true;
    if(window == 3 && window_timer = 1){
        if(!free){
            window = 4;
            window_timer = 0;
        }
    }
    
    if(window == 1 && window_timer = get_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH)-1){
        move_cooldown[AT_FSPECIAL] = 99999;
    }
    if(window == 1 && window_timer = 1){
        set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 7);
    }
    
	//ledge cancel
	if(window == 1 && window_timer = 1 && !hitpause){
	    sound_play(asset_get("sfx_frog_jab"));
		fspecial_ledge_cancel = 0;
		moved_up = false;
	}if(window == 2 && !free && !has_hit && !was_parried){
		fspecial_ledge_cancel = 1;
	}	else {
		can_move = false;
	}
	
	// MOVE UP AT LEDGE
    if ((window == 2) && !moved_up && free && place_meeting(x+hsp,y,asset_get("par_block"))) {
        for (var i = 0; i < 30; i++){
            if (!place_meeting(x+hsp,y-(i+1),asset_get("par_block"))) {
                y -= i;
                moved_up = true;
                break;
            }
        }
    }
}

if(attack == AT_DSPECIAL){
    can_fast_fall = false;
    can_move = true;
    can_wall_jump = true;
    hsp = clamp(hsp,-6,6);
    if(window = 1 && window_timer = 1 && !hitpause){
        hsp = 0;
        vsp = 0;
        if(free){
            window = 2;
            window_timer = 0;
        }
    }if(window = 1 && window_timer = 2 && !hitpause){
        vsp = -13;
        sound_play(asset_get("sfx_bird_sidespecial"), false, noone, 1);
        spawn_hit_fx(x + spr_dir * 0, y + 10, hitsmoke);
    }
    if(window == 4 && window_timer = get_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH)-1){
        window = 4;
        window_timer = 0;
    }
    //landing
    if(window == 4 && !free){
    	destroy_hitboxes();
        sound_play(asset_get("sfx_ori_stomp_hit"));
        window = 5;
        window_timer = 0;
    }if(window == 3 && !free){
    	destroy_hitboxes();
        sound_play(asset_get("sfx_ori_stomp_hit"));
        window = 5;
        window_timer = 0;
    }
    
    if(window == 3 && window_timer = 3){
        vsp = 18;
        sound_play(asset_get("sfx_shovel_swing_heavy1"));
    }
}

if(attack == AT_DSPECIAL_2){
    can_fast_fall = false;
    can_move = true;
    can_wall_jump = true;
    hsp = clamp(hsp,-4,4);
    if(window = 1 && window_timer = 1 && !hitpause){
        hsp = 0;
        vsp = 0;
        if(free){
            window = 2;
            window_timer = 0;
        }
    }if(window = 1 && window_timer = 2 && !hitpause){
        vsp = -13;
        sound_play(asset_get("sfx_bird_sidespecial"), false, noone, 1);
        spawn_hit_fx(x + spr_dir * 0, y + 10, hitsmoke);
    }
    if(window == 4 && window_timer = get_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH)-1){
        window = 4;
        window_timer = 0;
    }
    //landing
    if(window == 4 && !free){
    	destroy_hitboxes();
        sound_play(asset_get("sfx_ori_stomp_hit"));
        window = 5;
        window_timer = 0;
    }if(window == 3 && !free){
    	destroy_hitboxes();
        sound_play(asset_get("sfx_ori_stomp_hit"));
        window = 5;
        window_timer = 0;
    }
    
    if(window == 3 && window_timer = 1){
        vsp = 18;
        sound_play(asset_get("sfx_shovel_swing_heavy1"));
    }
    if(window == 4){
    	if(window_timer % 2 == 0){
    	create_hitbox(AT_DSPECIAL_2, 1, x, y);	
    	}
    	
    }
}

if(attack == AT_USPECIAL){
	can_fast_fall = false;
	can_wall_jump = true
	if(window == 1 && window_timer = get_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH)-1){
	sound_play(asset_get("sfx_swish_medium"));	
	sound_play(asset_get("sfx_swipe_medium2"));	
	}
	if(window == 1 && window_timer = 1){
		shortened_usp = false;
		uspec_dir = 0;
		if(!free){
			set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
		}if(free){
			set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 7);
		}
		set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -13);
	}if(window == 1 && window_timer > 6){
		if(shield_pressed){
			shortened_usp = true;
		set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -8);	
		set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
		move_cooldown[AT_USPECIAL] = 99999;
		}
	}if(window == 2 && window_timer = 2){
		if(shortened_usp == true){
			if(uspec_cooldown == 0){
			uspec_cooldown = 60;
			}
		}
	}if(window == 1 && window_timer = get_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH)-1){
		if(uspec_cooldown == 0){
			set_num_hitboxes(AT_USPECIAL, 1);
		}		if(uspec_cooldown > 0){
			set_num_hitboxes(AT_USPECIAL, 0);
		}
	}if(window == 1){
				if(joy_pad_idle || up_pressed || up_down){
			uspec_dir = 0;
		}if(spr_dir == -1){
			if(right_pressed || right_down){
			uspec_dir = 1;
			}if(left_pressed || left_down){
			uspec_dir = 2;
			}
		}if(spr_dir == 1){
			if(right_pressed || right_down){
			uspec_dir = 2;
			}if(left_pressed || left_down){
			uspec_dir = 1;
			}
		}
	}if(window == 2 && window_timer = 1){
	if(uspec_dir == 0){
		create_hitbox(AT_USPECIAL, 1, x, y);
	}	if(uspec_dir == 1){
		create_hitbox(AT_USPECIAL, 3, x, y);
	}	if(uspec_dir == 2){
		create_hitbox(AT_USPECIAL, 2, x, y);
	}		
	}
}

if attack == AT_DATTACK && window == 4 && !was_parried{
    iasa_script()
}

if(attack == AT_TAUNT){
	if(window == 2){
		if(window_timer = 11){
		sound_play(asset_get("sfx_swipe_weak1"), false, noone, 0.8);	
		}
		if(window_timer = 12){
		sound_play(sound_get("bonk"), false, noone, 1.7);	
		take_damage(player, -1, 1);
		}
	}if(window == 1 && window_timer = get_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH)-1){
		sound_play(asset_get("sfx_swipe_weak1"), false, noone, 0.8);
		sound_play(sound_get("bonk"), false, noone, 1.7);
		take_damage(player, -1, 1);
	}
}

if(attack == AT_UAIR){
	if(window == 1 && window_timer > 4){
		set_window_value(AT_UAIR, 5, AG_WINDOW_VSPEED, -3);
	}if(window < 5){
		if(down_hard_pressed){
			set_window_value(AT_UAIR, 5, AG_WINDOW_VSPEED, 0);
			set_window_value(AT_UAIR, 5, AG_WINDOW_VSPEED_TYPE, 0);
		}
	}
}

//offsets

if(attack == AT_USTRONG){
	if(window = 1){
	hud_offset = 80;
	}if(window == 2){
	hud_offset = 150;
	}if(window == 3){
	hud_offset = 110;
	}
}

if(attack == AT_UAIR || attack == AT_TAUNT || attack == AT_DSTRONG){
	hud_offset = 30;
}

if(attack == AT_UTILT){
	hud_offset = 80;
}