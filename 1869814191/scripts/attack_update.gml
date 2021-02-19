// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_NSPECIAL) {
	if (window == 1) {
		destroy_gaster_blaster = false;
	}
    if (window == 2 && window_timer == 1) {
        sound_play(sound_get("sfx_blaster_charge"));
        var temp_x = 24;
        var temp_y = -30;
        var initspeed = 10;
        var blaster = instance_create(x+(temp_x*spr_dir),y+(temp_y),"obj_article2");
        if (trolled) {
	        blaster.sprite_index = sprite_get("t_gaster_blaster");
	        blaster.air_hurtbox_spr = sprite_get("t_gaster_blaster");
        } else {
	        blaster.sprite_index = sprite_get("gaster_blaster");
	        blaster.air_hurtbox_spr = sprite_get("gaster_blaster");        	
        }
        blaster.image_xscale = spr_dir;
        blaster.dir = spr_dir;
        if (blaster.state == 0) {
            blaster.hsp = 3*spr_dir;
            blaster.vsp = 0;
        }
        if (!hard_mode) {
	        move_cooldown[AT_NSPECIAL] = 150;
	        /*
		    move_cooldown[AT_FTILT] = 150;
		    move_cooldown[AT_BAIR] = 150;
		    move_cooldown[AT_UTILT] = 150;
		    */
			move_cooldown[AT_FSTRONG] = 150;
		    move_cooldown[AT_DSTRONG] = 150;
		    move_cooldown[AT_USTRONG] = 150;
		    /*
		    move_cooldown[AT_DSPECIAL] = 150;
		    move_cooldown[AT_EXTRA_1] = 150;
		    */
        }
    }
}

if (attack == AT_USPECIAL) {
    if (window == 1){
        hsp = 0;
        vsp = 0;
        can_move = false;
    }
    if (window == 2){
        hsp = 0;
        vsp = 0;
        can_move = false;
    }
    if (window == 3){
        hsp = 0;
        vsp = 0;
        can_move = false;
    }
    if (window == 4){
        if(!joy_pad_idle){
            teleport_sp = -64;
            vsp = (dsin(joy_dir)*teleport_sp);
            hsp = (dcos(joy_dir)*-teleport_sp);
        }
    }
    if (window == 5){
        hsp = 0;
        vsp = 0;
        can_wall_jump = true;
    }
    if (window == 5 && window_timer == 10) {
    	if (!hard_mode) {
	    	if (free) {
	    		state = PS_PRATFALL;
	    	}
    	}
    }
}

if (attack == AT_FSPECIAL) or (attack == AT_FSPECIAL_AIR){
    hsp = 0;
    vsp = 0;
    can_move = false;
    can_fast_fall = false;
    off_edge = false;
    if (window == 1 && window_timer == 1) {
        sound_play(sound_get("sfx_sans_alert"));
    }
    if (window == 5 && window_timer == 6) {
    	window = 11;
    	window_timer = 0;
    	soulgrabbed_id.grabbed_id = 0;
    	soulgrabbed_id = noone;
    }
    if (window == 7 || window == 8 || window == 9 || window == 10) {
    	if (window_timer == 20) {
    		window = 14;
    		window_timer = 0;
    	}
    }
    if (window == 6) {
    	soul_id.x = x+spr_dir*78;
    	soul_id.y = y-3;
    	soul_id.invincible = true;
    	fspecial_select_timer++;
    	if (fspecial_select_timer >= fspecial_select_max) {
    		window = 7;
			window_timer = 0;
			if (window_timer >= 4) {
				soul_id.invincible = false;
			}
    		fspecial_select_timer = 0;
    	}
    	if (fspecial_select_timer >= fspecial_select_min) {
	   		if (down_down) {
	   			fspecial_select_timer = 0;
				window = 8;
				window_timer = 0;
				if (window_timer >= 4) {
					soul_id.invincible = false;
				}
			}
	   		if (up_down) {
	   			fspecial_select_timer = 0;
				window = 7;
				window_timer = 0;
				if (window_timer >= 4) {
					soul_id.invincible = false;
				}
			}
	   		if (spr_dir and (left_down)) or (!spr_dir and (right_down)) {
	   			fspecial_select_timer = 0;
				window = 9;
				window_timer = 0;
				if (window_timer >= 4) {
					soul_id.invincible = false;
				}
				}
	   		if (spr_dir and (right_down)) or (!spr_dir and (left_down)) {
	   			fspecial_select_timer = 0;
				window = 10;
				window_timer = 0;
				if (window_timer >= 4) {
					soul_id.invincible = false;
				}
			}
    	}
    }
    if (window >= 6) and (window < 11) {
    	invincible = true;
    }
    
    if (window == 13 && window_timer == get_window_value(AT_FSPECIAL, 13, AG_WINDOW_LENGTH)) {
		if (free && !hard_mode) {
    		state = PS_PRATFALL;
    	}
    }
    
    if (window == 14 && window_timer == get_window_value(AT_FSPECIAL, 14, AG_WINDOW_LENGTH)) {
    	move_cooldown[AT_FSPECIAL] = 15;
    	move_cooldown[AT_FSPECIAL_AIR] = 15;
    }
}


if (attack == AT_DSPECIAL){
    if (window == 1 && window_timer == 1) {
    	
    	//instance_create(x+(60*spr_dir),y,"obj_article3");
    	
        blue_bone = true;
        
        //Bone going forward
        create_hitbox(AT_EXTRA_1, 7, x+(32*spr_dir), y+(-4));
        //Bone going backwards
        create_hitbox(AT_EXTRA_1, 8, x+(-32*spr_dir), y+(-4));
        
        //Cooldown
        if (!hard_mode) {
	        move_cooldown[AT_DSPECIAL] = 80;
	        move_cooldown[AT_EXTRA_1] = 80;
        }
    }
}

if (attack == AT_EXTRA_1){
    if (window == 1 && window_timer == 1) {
    	
    	//instance_create(x+(60*spr_dir),y,"obj_article3");
    	
        blue_bone = false;
        
        //Bone going forward
        var temp_x1 = 24;
        var temp_y1 = -4;
        var initspeed = 10;
        var bone1 = instance_create(x+(temp_x1*spr_dir),y+(temp_y1),"obj_article1");
        bone1.sprite_index = sprite_get("bone_horizontal");
        bone1.air_hurtbox_spr = sprite_get("bone_horizontal");
        if (bone1.state == 0) {
            bone1.hsp = 3*spr_dir;
            bone1.vsp = 0;
            bone1.state = 1;
            bone1.dir = spr_dir;
        }
        //Bone going backwards
        var temp_x2 = -24;
        var temp_y2 = -4;
        var initspeed = 10;
        var bone2 = instance_create(x+(temp_x2*spr_dir),y+(temp_y2),"obj_article1");
        bone2.sprite_index = sprite_get("bone_horizontal");
        bone2.air_hurtbox_spr = sprite_get("bone_horizontal");
        if (bone2.state == 0) {
            bone2.hsp = -3*spr_dir;
            bone2.vsp = 0;
            bone2.state = 1;
            bone2.dir = -1*spr_dir;
        }
        
        //Cooldown
        if (!hard_mode) {
	        move_cooldown[AT_DSPECIAL] = 80;
	        move_cooldown[AT_EXTRA_1] = 80;
        }
    }
}

/*
if (attack == AT_FAIR) {
	if (blue_bone) {
		move_cooldown[AT_FAIR] = 20;
	    move_cooldown[AT_FTILT] = 20;
	    move_cooldown[AT_BAIR] = 20;
	    move_cooldown[AT_UTILT] = 20;
	}
	if (!blue_bone) {
		move_cooldown[AT_FAIR] = 5;
	    move_cooldown[AT_FTILT] = 5;
	    move_cooldown[AT_BAIR] = 5;
	    move_cooldown[AT_UTILT] = 5;
	}
    if (window == 1) {
        bone_direction = 0;
    }
    if (window == 2 && window_timer == 1) {
        if (blue_bone == false) {
	        var temp_x = 32;
	        var temp_y = -4;
	        var initspeed = 10;
	        var bone = instance_create(x+(temp_x*spr_dir),y+(temp_y),"obj_article1");
            bone.sprite_index = sprite_get("bone_horizontal");
            bone.air_hurtbox_spr = sprite_get("bone_horizontal");
            if (bone.state == 0) {
                bone.hsp = 7*spr_dir;
                bone.vsp = 0;
                bone.state = 1;
                bone.dir = spr_dir;
            }
        }
        if (blue_bone == true) {
        	create_hitbox(AT_EXTRA_1, 7, x+(40*spr_dir), y+(-4));
        }
        bone.id = player.id;
        bone.player = player;
        bone.spr_dir = spr_dir;
    }
}
*/

if (attack == AT_FTILT) {
	if (blue_bone) {
		move_cooldown[AT_FAIR] = 20;
	    move_cooldown[AT_FTILT] = 20;
	    move_cooldown[AT_BAIR] = 20;
	    move_cooldown[AT_UTILT] = 20;
	}
	if (!blue_bone) {
		move_cooldown[AT_FAIR] = 15;
	    move_cooldown[AT_FTILT] = 15;
	    move_cooldown[AT_BAIR] = 15;
	    move_cooldown[AT_UTILT] = 15;
	}
    if (window == 1) {
        bone_direction = 0;
    }
    if (window == 2 && window_timer == 1) {
        if (blue_bone == false) {
	        var temp_x = 32;
	        var temp_y = -4;
	        var initspeed = 10;
	        var bone = instance_create(x+(temp_x*spr_dir),y+(temp_y),"obj_article1");
            bone.sprite_index = sprite_get("bone_horizontal");
            bone.air_hurtbox_spr = sprite_get("bone_horizontal");
            if (bone.state == 0) {
                bone.hsp = 7*spr_dir;
                bone.vsp = 0;
                bone.state = 1;
                bone.dir = spr_dir;
            }
        }
        if (blue_bone == true) {
        	create_hitbox(AT_EXTRA_1, 7, x+(40*spr_dir), y+(-4));
        }
        bone.id = player.id;
        bone.player = player;
        bone.spr_dir = spr_dir;
    }
}

if (attack == AT_BAIR) {
	if (blue_bone) {
		move_cooldown[AT_FAIR] = 20;
	    move_cooldown[AT_FTILT] = 20;
	    move_cooldown[AT_BAIR] = 20;
	    move_cooldown[AT_UTILT] = 20;
	}
	if (!blue_bone) {
		move_cooldown[AT_FAIR] = 5;
	    move_cooldown[AT_FTILT] = 5;
	    move_cooldown[AT_BAIR] = 5;
	    move_cooldown[AT_UTILT] = 5;
	}
    if (window == 1) {
        bone_direction = 0;
    }
    if (window == 3 && window_timer == 1) {
        if (blue_bone == false) {
	        var temp_x = -60;
	        var temp_y = -28;
	        var initspeed = 10;
	        var bone = instance_create(x+(temp_x*spr_dir),y+(temp_y),"obj_article1");
            bone.sprite_index = sprite_get("bone_vertical");
            bone.air_hurtbox_spr = sprite_get("bone_vertical");
            if (bone.state == 0) {
                bone.hsp = 0;
                bone.vsp = 8;
                bone.state = 3;
                bone.vert_dir = 1;
            }
        }
        if (blue_bone == true) {
        	create_hitbox(AT_EXTRA_1, 12, x+(-60*spr_dir), y+(-28));
        }
        bone.id = player.id;
        bone.player = player;
        bone.spr_dir = spr_dir;
    }
}


if (attack == AT_UTILT) {
	if (blue_bone) {
		move_cooldown[AT_FAIR] = 20;
	    move_cooldown[AT_FTILT] = 20;
	    move_cooldown[AT_BAIR] = 20;
	    move_cooldown[AT_UTILT] = 20;
	}
	if (!blue_bone) {
		move_cooldown[AT_FAIR] = 5;
	    move_cooldown[AT_FTILT] = 5;
	    move_cooldown[AT_BAIR] = 5;
	    move_cooldown[AT_UTILT] = 5;
	}
    if (window == 1) {
        bone_direction = 0;
    }
    if (window == 2 && window_timer == 1) {
        if (blue_bone == false) {
	        var temp_x = 0;
	        var temp_y = -4;
	        var initspeed = 10;
	        var bone = instance_create(x+(temp_x*spr_dir),y+(temp_y),"obj_article1");
            bone.sprite_index = sprite_get("bone_vertical");
            bone.air_hurtbox_spr = sprite_get("bone_vertical");
            if (bone.state == 0) {
                bone.hsp = 0;
                bone.vsp = -16;
                bone.state = 4;
            }
        }
        if (blue_bone == true) {
        	create_hitbox(AT_EXTRA_1, 10, x, y+(-4));
        }
        bone.id = player.id;
        bone.player = player;
        bone.spr_dir = spr_dir;
    }
}

if (attack == AT_UAIR) {
	move_cooldown[AT_UAIR] = 7;
}

/*
if (attack == AT_DTILT) {
    if (window == 2 && window_timer == 1) {
        var temp_x = 0;
        var temp_y = -4;
        var initspeed = 10;
        var bone = instance_create(x+(temp_x*spr_dir),y+(temp_y),"obj_article1");
        if (blue_bone == false) {
            bone.sprite_index = sprite_get("baby_bone");
            bone.air_hurtbox_spr = sprite_get("baby_bone");
            if (bone.state == 0) {
                bone.hsp = 9*spr_dir;
                bone.vsp = 0;
                bone.state = 5;
                bone.dir = spr_dir;
            }
        }
        if (blue_bone == true) {
            bone.sprite_index = sprite_get("baby_blue_bone");
            bone.air_hurtbox_spr = sprite_get("baby_blue_bone");
            if (bone.state == 0) {
                bone.hsp = 9*spr_dir;
                bone.vsp = 0;
                bone.state = 14;
                bone.dir = spr_dir;
            }
        }
        bone.id = player.id;
        bone.player = player;
        bone.spr_dir = spr_dir;
    }
}
*/

if (attack == AT_DTILT) {
	if (!hard_mode) {
	    if (window == 3) {
	        move_cooldown[AT_DTILT] = 150;
	    }
	}
}

if (attack == AT_DATTACK){ //Dash
    vsp = 0;
    if (window == 1 || window == 2 || window == 3 || window == 4 || window == 5 || window == 6) {
    	if (!hard_mode) {
	    	if (!was_parried) {
	    		hsp = 6*spr_dir;
	    	}
	    	if (was_parried) {
	    		hsp = 0;
	    	}
    	}
    	if (hard_mode) {
    		hsp = 10*spr_dir;
    	}
    }
    if ((window == 2 || window == 3 || window == 4 || window == 5 || window == 6) && has_hit_player) {
    	can_jump = true;
    }
    if (window == 7) {
        can_move = true;
    }
}

//Strong Attacks

if (attack == AT_DSTRONG) {
    if (window == 1 && window_timer == 1) {
        sound_play(sound_get("sfx_sans_alert"));
    }

    if (window == 3 && window_timer == 1) {
        sound_play(sound_get("sfx_sans_rise"));
    }
}

if (attack == AT_USTRONG) {
    if (window == 1 && window_timer == 1) {
        sound_play(sound_get("sfx_sans_alert"));
    }

    if (window == 3 && window_timer == 1) {
        sound_play(sound_get("sfx_sans_rise"));
    }
}

if (attack == AT_FSTRONG) {
    if (window == 1 && window_timer == 1) {
        sound_play(sound_get("sfx_sans_alert"));
    }

    if (window == 3 && window_timer == 1) {
        sound_play(sound_get("sfx_sans_rise"));
    }
}
