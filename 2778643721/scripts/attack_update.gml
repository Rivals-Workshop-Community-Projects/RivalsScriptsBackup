//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_JAB){
    was_parried = false;
    if (window == 3 or window == 6){
        can_attack = true;
        move_cooldown[AT_JAB] = 2;
        if (attack_pressed && window_timer > 5){
            window += 1;
            window_timer = 0;
    } else{
        if (!attack_pressed && window_timer == 8){
            window = 10;
            window_timer = 0;
        }
    }
    }
}
if (attack == AT_BAIR){
	if (window == 1){
		if (window_timer == 3){
			spr_dir*= -1;
		}
	}
	if (window == 2 && window_timer == 12){
		sound_play(sound_get("sfx_doomer"));
	}
}

if (attack == 49){
	if (window == 2){
		if (window_timer == 1){
			sound_play(magolor_scream);
		}
	}
	if (window == 3){
		if (window_timer < 30 && window_timer > 12 && !hitpause){
			create_hitbox( 49, 3, x, y);
		}
	}
}

if (attack == AT_NSPECIAL){
	can_fast_fall = false;
    if (shield_pressed){
        if (window == 2 or window == 5 or window == 8){
        sound_stop(sound_get("sfx_charge_loop"));
        window = 11;
        window_timer = 0;
        }
    }
    if (special_down == false){
        if (window == 2 or window == 5 or window == 8){
            if (nspecial_gague == 0){
            window = 3;
            }
            if (nspecial_gague == 1){
            window = 6;
            }
            if (nspecial_gague == 2){
            window = 9;
            }
            window_timer = 0;
            nspecial_gague = 0;
            nspecial_charge = 0;
        }
    }
    if (window == 1){
        if (window_timer == 12){
            sound_stop(sound_get("sfx_charge_start"));
            if (nspecial_gague == 2){
                window = 9;
                window_timer = 0;
                nspecial_gague = 0;
                nspecial_charge = 0;
            }
            sound_play(sound_get("sfx_charge_loop"), true, noone, 1, 1);
        }
    }
    if (window == 2){
            nspecial_charge ++;
            if (nspecial_charge == 30){
                window = 5;
                window_timer = 0;
                nspecial_gague = 1;
            }
            if (nspecial_charge == 60){
                nspecial_gague = 2;
                window = 8;
                window_timer = 0;
            }
    }
    if (window == 3){
        
        sound_stop(sound_get("sfx_charge_loop"));
    }
    if (window == 5){
        if (window_timer == 12){
            window = 2;
            window_timer = 0;
        }
    }
    if (window == 6){
        sound_stop(sound_get("sfx_charge_loop"));
        if (window_timer == 6){
            window = 7;
            window_timer = 0;
        }
    }
    if (window == 8){
        if (window_timer == 12){
            window = 2;
            window_timer = 0;
        }
    }
    if (window == 9){
                sound_stop(sound_get("sfx_charge_loop"));
        if (window_timer == 6){
            window = 10;
            window_timer = 0;
        }
    }
    if (window == 11 && window_timer > 2){
    }
}
if (attack == AT_UAIR){
    if (window == 1 && window_timer == 10){
        sound_play(sound_get("sfx_usword_charge"));
    }
}
if (attack == AT_DAIR){
	if (window == 2 && window_timer == 3 && has_hit){
		vsp -= 4;
		window = 4;
		window_timer = 0;
	}
}
if (soul == true){
    set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair_soul"));
    set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair_soul"));
}
if (attack == AT_USTRONG){
	if (window == 3){
		if (window_timer == 8){
        move_cooldown[AT_USTRONG] = 60;
        sound_play(asset_get("sfx_burnapplied"));
		}
	}
}


if (attack == AT_UTILT){
    if (window == 1){
        if (window_timer == 1){
            sound_play(sound_get("sfx_open_small"));
        }
        if (window_timer == 11){
            sound_play(sound_get("sfx_spike_thrust"));
        }
    }
    if (window == 2){
        //create_hitbox( AT_UTILT, 1, x - 48, y - 68 );
    }
    
}

if (attack == AT_FSTRONG){
    if (window == 1){
        if (window_timer == 12){
            sound_play(asset_get("sfx_swipe_medium2"));
        }
    }
        if (window == 2 && window_timer == 9){
        	if (taunt_down){
        		sound_play(sound_get("sfx_doriyah"));
        	}
        }
}

if (attack == AT_DATTACK){
    if (window == 1 && window_timer == 5){
        sound_play(asset_get("sfx_blow_heavy1"));
    }
}

if (attack == AT_FSPECIAL){
	var BlockDetection = collision_line(x, y-16, x+32*spr_dir, y-16, asset_get("par_block"), false, false)
    if (window == 1){
    	BlockDetection = noone;
    	if (window_timer == 1){
    		sound_play(asset_get("sfx_ori_ustrong_charge"))
    	}
    	if (window_timer == 1){
    		fx = spawn_hit_fx(x, y, 194);
    		fx.pause_timer = 15;
    		fx.pause = 10;
    	}
    	fspecial_portal = 0;
		reset_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED);
		reset_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED);
		
		reset_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE);
    	fspecial_vsp = 0;
    	fspecial_teleported = false;
        if (free == false){
            vsp -= 6;
        }
    }
    
    	if (window == 3){
    		move_cooldown[AT_FSPECIAL] = 99999;
    		if (window_timer > 2){
    			if (down_down && special_pressed && move_cooldown[AT_DSPECIAL] > 0){
    				set_attack(AT_DSPECIAL_2);
    			}
    		}
    		if (window_timer == 16 && has_hit == false){
    			set_state(PS_PRATFALL);
    		}
    	}
    if (window == 2){
    	/*if (hsp != 0 && vsp < 1 && vsp > -1){
    		if (up_down){
    			y -= 2;
    		}
    		if (down_down){
    			y += 2;
    		}
    	}*/
    	if (!hitpause){
    		fspecial_timer++;
    	}
    	/*if (fspecial_timer == 20){
    		window = 3;
    		window_timer = 0;
    	}*/
//    	if (portals_active){
   
    		var prev_timer = window_timer;
    		window_timer = 0;
    		window_timer = prev_timer;
    		//CODING SKILLZ YEEEEEEAAAAAH
    		if (fspecial_portal == 11){
    			set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED, -10.5);
    			set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 0);
				set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 90);
    			if (instance_exists(fspecial_id) && fspecial_id.hitpause = true){
    			fspecial_angle = 90;
    			}
    		}
    		if (fspecial_portal == 12){
    			spr_dir = 1;
    			set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED, -10.5);
    			set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 10.5);
				set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 65);
    			if (instance_exists(fspecial_id) && fspecial_id.hitpause = true){
    			fspecial_angle = 45;
    			}
    		}
    		if (fspecial_portal == 13){
    			spr_dir = 1;
    			set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED, 0);
    			set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 13);
				set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 45);
    			if (instance_exists(fspecial_id) && fspecial_id.hitpause = true){
    			fspecial_angle = 0;
    			}
    		}
    		if (fspecial_portal == 14){
    			spr_dir = 1;
    			set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED, 10.5);
    			set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 10.5);
				set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 315);
    			if (instance_exists(fspecial_id) && fspecial_id.hitpause = true){
    			fspecial_angle = -45;
    			}
    		}
    		if (fspecial_portal == 15){
    			set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED, 10.5);
    			set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 0);
				set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 45);
				set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 270);
    			if (instance_exists(fspecial_id) && fspecial_id.hitpause = true){
    			fspecial_angle = -90;
    			}
    		}
    		if (fspecial_portal == 16){
    			spr_dir = -1;
    			set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED, 10.5);
    			set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 10.5);
				set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 65);
				set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 315);
    			if (instance_exists(fspecial_id) && fspecial_id.hitpause = true){
    			fspecial_angle = -135;
    			}
    		}
    		if (fspecial_portal == 17){
    			spr_dir = -1;
    			set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED, 0);
    			set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 13);
    			if (instance_exists(fspecial_id) && fspecial_id.hitpause = true){
    			fspecial_angle = 180;
    			}
    		}
    		if (fspecial_portal == 18){
    			spr_dir = -1;
    			set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED, -10.5);
    			set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 10.5);
    			if (instance_exists(fspecial_id) && fspecial_id.hitpause = true){
    			fspecial_angle = 135;
    			}
    		}
    	

    		if (fspecial_portal == 25){
    			set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED, -13);
    			set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 0);
				set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 90);
    			if (instance_exists(fspecial_id) && fspecial_id.hitpause = true){
    			fspecial_angle = 90;
    			}
    		}
    		if (fspecial_portal == 26){
    			spr_dir = 1;
    			set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED, -13);
    			set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 13);
				set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 65);
    			if (instance_exists(fspecial_id) && fspecial_id.hitpause = true){
    			fspecial_angle = 45;
    			}
    		}
    		if (fspecial_portal == 27){
    			spr_dir = 1;
    			set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED, 0);
    			set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 13);
				set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 45);
    			if (instance_exists(fspecial_id) && fspecial_id.hitpause = true){
    			fspecial_angle = 0;
    			}
    		}
    		if (fspecial_portal == 28){
    			spr_dir = 1;
    			set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED, 13);
    			set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 13);
				set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 315);
    			if (instance_exists(fspecial_id) && fspecial_id.hitpause = true){
    			fspecial_angle = -45;
    			}
    		}
    		if (fspecial_portal == 21){
    			set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED, 13);
    			set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 0);
				set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 270);
    			if (instance_exists(fspecial_id) && fspecial_id.hitpause = true){
    			fspecial_angle = -90;
    			}
    		}
    		if (fspecial_portal == 22){
    			spr_dir = -1;
    			set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED, 13);
    			set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 13);
				set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 315);
    			if (instance_exists(fspecial_id) && fspecial_id.hitpause = true){
    			fspecial_angle = -135;
    			}
    		}
    		if (fspecial_portal == 23){
    			spr_dir = -1;
    			set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED, 0);
    			set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 13);
				set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 45);
    			if (instance_exists(fspecial_id) && fspecial_id.hitpause = true){
    			fspecial_angle = 180;
    			}
    		}
    		if (fspecial_portal == 24){
    			spr_dir = -1;
    			set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED, -13);
    			set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 13);
				set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 65);
    			if (instance_exists(fspecial_id) && fspecial_id.hitpause = true){
    			fspecial_angle = 135;
    			}
    		}
    	
 //   	}
        if (window_timer == 2 or window_timer == 5 or window_timer == 10){
            if (!hitpause){
            create_hitbox(AT_FSPECIAL, 1, x, y);
            }
        }
        //if (hsp == 0 && !hitpause && vsp > -10 && vsp < 10){
        
		if BlockDetection != noone {
            window = 4;
            window_timer = 0;
            
    		move_cooldown[AT_FSPECIAL] = 99999;
            if (instance_exists(fspecial_id)){
            fspecial_id.hitstop = 0;
            fspecial_id = noone;
            }
        }
        if (!hitpause){
            if (window_timer == 2 or window_timer == 10 or window_timer == 19){
                create_hitbox(AT_FSPECIAL, 3, x-18*spr_dir, y - 16) .proj_angle = fspecial_angle;
            }
            if (window_timer == 5 or window_timer == 15){
                create_hitbox(AT_FSPECIAL, 4, x-18*spr_dir, y - 24) .proj_angle = fspecial_angle;
            }
    }
        //vsp = -10;
    }
    can_fast_fall = false;
    
    //if (phone_cheats[cheat_fspecial_cancel] && window > 1) iasa_script();
}
if (attack == AT_DSTRONG){
    if (window == 1){
        if (window_timer == 12){
            sound_play(asset_get("sfx_swipe_medium2"));
        }
    }
	if (window == 2){
		if (window_timer == 18){
			sound_play(sound_get("sfx_hammer"));
			sound_play(asset_get("sfx_shovel_hit_heavy2"));
		}
	}
	if (window == 3 && window_timer == 1){
		/*create_hitbox( AT_DSTRONG, 2, x + 100, y );
		create_hitbox( AT_DSTRONG, 2, x - 100, y ).spr_dir = -1;*/
	}
}
if (attack == AT_TAUNT && window == 3 && taunt_down == false){
	window = 4;
	window_timer = 0;
}
if (attack == AT_USPECIAL){
	if (free){
		started_free = true;
	} else started_free = false;
    can_move = false;
    if (window == 1){
        portal1_dir = 1;
    }
    if (window == 2){
    	hsp = 0;
        if (up_down && !right_down && !left_down && !down_down){
		    portal1_dir = 1;
    	}
    	if (up_down && right_down){
    		portal1_dir = 2;
    	}
    	if (right_down && !up_down && !down_down){
    		portal1_dir = 3;
    	}
    	if (down_down && right_down && !left_down){
    		portal1_dir = 4;
    	}
    	if (down_down && !right_down && !left_down && !up_down){
    		portal1_dir = 5;
    	}
    	if (down_down && !right_down && left_down){
    		portal1_dir = 6;
    	}
    	if (left_down && !up_down && !down_down){
    		portal1_dir = 7;
    	}
    	if (up_down && left_down){
    		portal1_dir = 8;
    	}
    }
    if (window == 3){
    	hsp = 0;
    }
    if (window == 3 && window_timer == 1){
    	if (instance_exists(portal1)){
    		portal1.shoulddie = true;
    	}
        portal1 = instance_create( x, y, "obj_article1"); 
        portal1.portal_direction = portal1_dir;
        portal1.portal_number = 1;
    }
    if (window == 4 && window_timer == 1){
    	if (instance_exists(portal2)){
    		portal2.shoulddie = true;
    	}
        portal2 = instance_create( x, y, "obj_article1"); 
        portal2.portal_number = 2;
        portal2.portal_position = portal1_dir;
        portal2.portal_direction = portal1_dir;
        var portal_1 = portal1;
        with (portal2){
        	if place_meeting(x, y, portal_1) && free == false{
        		x += 60*player_id.spr_dir;
        	}
        }
    }
    if (window == 4){
    	hsp = 0;
        if (up_down && !right_down && !left_down && !down_down){
		    portal2.portal_direction = 1;
    	}
    	if (up_down && right_down){
    		portal2.portal_direction = 2;
    	}
    	if (right_down && !up_down && !down_down){
    		portal2.portal_direction = 3;
    	}
    	if (down_down && right_down && !left_down){
    		portal2.portal_direction = 4;
    	}
    	if (down_down && !right_down && !left_down && !up_down){
    		portal2.portal_direction = 5;
    	}
    	if (down_down && !right_down && left_down){
    		portal2.portal_direction = 6;
    	}
    	if (left_down && !up_down && !down_down){
    		portal2.portal_direction = 7;
    	}
    	if (up_down && left_down){
    		portal2.portal_direction = 8;
    	}

    }
    if (window == 5){
    	move_cooldown[AT_USPECIAL] = 99999;
    }
    if (window == 5 && window_timer == 2 && !shield_down){
        set_attack(AT_USPECIAL_2);
    }
}
if (attack == AT_DSPECIAL_2){
	can_fast_fall = false;
	if (laugh_cancel){
		can_strong = true;
		can_jump = true;
		can_attack = true;
		can_special = true;
		if (!joy_pad_idle){
			state = PS_IDLE;
		}
	}
	
	if (window == 1 && window_timer == 12 && apple.state < 5){
		if (apple.level == 1){
			apple.glow_radius = 0;
			apple.state = 5;
			apple.state_timer = 0;
			apple.image_index = 0;
		}
		if (apple.level == 2){
			apple.glow_radius = 0;
			apple.state = 6;
			apple.state_timer = 0;
			apple.image_index = 0;
		}
		if (apple.level == 3){
			apple.glow_radius = 0;
			apple.state = 7;
			apple.state_timer = 0;
			apple.image_index = 0;
		}
		if (has_rune("O")){
		if (apple2.level == 1){
			apple2.glow_radius = 0;
			apple2.state = 5;
			apple2.state_timer = 0;
			apple2.image_index = 0;
		}
		if (apple2.level == 2){
			apple2.glow_radius = 0;
			apple2.state = 6;
			apple2.state_timer = 0;
			apple2.image_index = 0;
		}
		if (apple2.level == 3){
			apple2.state = 7;
			apple2.state_timer = 0;
			apple2.image_index = 0;
		}
		if (apple3.level == 1){
			apple3.state = 5;
			apple3.state_timer = 0;
			apple3.image_index = 0;
		}
		if (apple3.level == 2){
			apple3.state = 6;
			apple3.state_timer = 0;
			apple3.image_index = 0;
		}
		if (apple3.level == 3){
			apple3.state = 7;
			apple3.state_timer = 0;
			apple3.image_index = 0;
		}
		}
	}
	if (window == 2 && window_timer > 8){
		move_cooldown[AT_DSPECIAL_2] = 20;
		//can_special = true;
		if (down_down){
			if (free){
				set_state(PS_IDLE_AIR);
			} else set_state(PS_CROUCH);
		}
	}
}
if (instance_exists(apple)){
	if (apple.level == 1){
	set_hitbox_value(AT_DSPECIAL, 4, HG_WIDTH, 24);
	set_hitbox_value(AT_DSPECIAL, 4, HG_HEIGHT, 24);
	}
	if (apple.level == 2){
	set_hitbox_value(AT_DSPECIAL, 4, HG_WIDTH, 28);
	set_hitbox_value(AT_DSPECIAL, 4, HG_HEIGHT, 28);
	}
	if (apple.level == 3){
	set_hitbox_value(AT_DSPECIAL, 4, HG_WIDTH, 32);
	set_hitbox_value(AT_DSPECIAL, 4, HG_HEIGHT, 32);
	}
}

if (attack == AT_DSPECIAL){
    if (window == 2 && window_timer == 6){
    	laugh_cancel = false;
    	move_cooldown[AT_DSPECIAL] = 9999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999; //ass fuck shit fart. Fucking cry about it ExW
        apple = instance_create( x, y - 16, "obj_article3");
        if (has_rune("O")){
        	apple2 = instance_create( x, y - 16, "obj_article3");
        	apple3 = instance_create( x, y - 16, "obj_article3");
        	apple.hsp = 4*spr_dir;
        	apple.vsp = -12;
        	apple2.hsp = 8*spr_dir;
        	apple2.vsp = -8;
        	apple3.hsp = 6*spr_dir;
        	apple3.vsp = -4;
        }
        if (!has_rune("O")){
        if (up_down){
        	apple.hsp = 4*spr_dir;
        	apple.vsp = -12;
        }
        if (down_down or right_down && spr_dir == 1 or left_down && spr_dir == -1 or joy_pad_idle){
        	apple.hsp = 6*spr_dir;
        	apple.vsp = -6;
        }
        if (left_down && spr_dir = 1 or right_down && spr_dir == -1){
        	apple.hsp = 4*spr_dir;
        	apple.vsp = -4;
        }
        }
    }
}

/*if (started_free){
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_TYPE, 7);
} else reset_window_value(AT_USPECIAL_2, 3, AG_WINDOW_TYPE);*/

if (attack == AT_USPECIAL_2){
	
    	move_cooldown[AT_USPECIAL] = 99999;

if (get_player_color( player ) != 0){
uspecial_angle_sprite = sprite_get("uspecial_2_angled");
}
	if (window == 1){
		usp_timer = 0;
		if(portal1.portal_direction == 1){
			set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED, 0);
			set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, -6);
		}
		if(portal1.portal_direction == 2){
			spr_dir = 1;
			set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED, 6);
			set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, -6);
		}
		if(portal1.portal_direction == 3){
			spr_dir = 1;
			set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED, 6);
			set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, 0);
		}
		if(portal1.portal_direction == 4){
			spr_dir = 1;
			set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED, 6);
			set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, 6);
		}
		if(portal1.portal_direction == 5){
			set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED, 0);
			set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, 6);
		}
		if(portal1.portal_direction == 6){
			spr_dir = -1;
			set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED, 6);
			set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, 6);
		}
		if(portal1.portal_direction == 7){
			spr_dir = -1;
			set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED, 6);
			set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, 0);
		}
		if(portal1.portal_direction == 8){
			spr_dir = -1;
			set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED, 6);
			set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, -6);
		}
	}
	if (window == 2){
		usp_timer ++;
		if (usp_timer == 30){
			window = 3;
			window_timer = 0;
			usp_timer = 0;
		}
		fall_through = true;
		if (place_meeting(x, y, portal2)){
    		if(portal2.portal_direction == 1){
			set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED, 0);
			set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, -6);
			}
			if(portal2.portal_direction == 2){
				spr_dir = 1;
				set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED, 6);
				set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, -6);
			}
			if(portal2.portal_direction == 3){
				spr_dir = 1;
				set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED, 6);
				set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, 0);
			}
			if(portal2.portal_direction == 4){
				spr_dir = 1;
				set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED, 6);
				set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, 6);
			}
			if(portal2.portal_direction == 5){
				set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED, 0);
				set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, 6);
			}
			if(portal2.portal_direction == 6){
				spr_dir = -1;
				set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED, 6);
				set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, 6);
			}
			if(portal2.portal_direction == 7){
				spr_dir = -1;
				set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED, 6);
				set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, 0);
			}
			if(portal2.portal_direction == 8){
				spr_dir = -1;
				set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED, 6);
				set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, -6);
			}
		}
	}
}