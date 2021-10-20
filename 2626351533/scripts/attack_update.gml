//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//Resets your double jumps
max_djumps = 3;

//NSpecial - Batarang
if (attack == AT_NSPECIAL){
    move_cooldown[AT_NSPECIAL] = 9999;
    if (window == 1 && window_timer == 12 && special_down){
    	window_timer--;
    	if (spr_dir == 1 && left_pressed){
    		spr_dir = -1;
    	}
    	if (spr_dir == -1 && right_pressed){
    		spr_dir = 1;
    	}
    }
    //Creates the batarang and angles it or not
    if (window == 2 && window_timer == 2){
        batarang = instance_create( x+60*spr_dir, y-30, "obj_article2"); 
        if (up_down){
            batarang.state = 1;
        }
        if (down_down){
            batarang.state = 2;
        }
    }
}

//FSpecial - Grapple Hook
if (attack == AT_FSPECIAL){
    can_fast_fall = false;
    //About to shoot the grapple on the ground/air
    if (window == 2){
    	fspecial_hit = false;
        grapple_cont = 0;
        if (window_timer == 4 && special_down){
	    		window_timer--;
		    	if (spr_dir == 1 && left_pressed){
		    		spr_dir = -1;
		    	}
		    	if (spr_dir == -1 && right_pressed){
		    		spr_dir = 1;
		    	}
	    	}
        if (window_timer == 5){
            if (!free){
                spawn_hit_fx( x+60*spr_dir, y-15, 140);
                grapple = instance_create( x+53*spr_dir, y+6, "obj_article3");
            }
            else {
                spawn_hit_fx( x+60*spr_dir, y+12, 140);
                grapple = instance_create( x+30*spr_dir, y+30, "obj_article3");
                grapple.state = 2;
            }
        }
    }
    //Freezes you when shooting the grapple
    if (window == 3 && free){
        vsp = 0;
        hsp = 0;
    }
    
    //Chain sound every couple of frames
    if ((window == 2 || window == 3 || window == 4) && grapple_pull_back == 0 && grapple_pull_up == 0
    && state_timer%3 == 0 && !special_down){
        sound_play(asset_get("sfx_ell_utilt_loop"));
    }
    
    //Couting the timer
    if (window == 3 && grapple_pull_back <= 0 && grapple_pull_up <= 0){
        grapple_cont++;
        grapple_counting = true;
    }
    else {
        grapple_counting = false;
    }
    //Grapple coming back because it whiffed
    if (window == 4){
        if (!free){
            grapple.state = 1;
        }
        else {
            vsp = 0;
            hsp = 0;
            grapple.state = 3;
        }
    }
    //Destroys the grapple and gives cooldown
    if (window == 5){
    	move_cooldown[AT_FSPECIAL] = 30;
        grapple.shoulddie = true;
    }
    
}
else {
    grapple_counting = false;
} //No longer using the grapple

//DSpecial - Remote Explosive
if (attack == AT_DSPECIAL){
	//If it should place/explode the mine and sets the variables
    if (window == 1 && window_timer == 1){
    	set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 50);
    	set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE_FLIPPER, 3);
        if (instance_exists(mine)){
            set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
            set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
            set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, asset_get("mfx_ring_bell"));
            set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);
        }
        else {
            set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
            set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 0);
            set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_ell_dspecial_drop"));
            set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 2);
        }
    }
    //Actually spawning/exploding and sets the hitboxes + destroys what should be destroyed
    if (window == 2){
        if (window_timer < 16){
            if (down_down){
                set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 45);
            }
            if (up_down){
                set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 90);
            }
            if (joy_pad_idle){
                set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 60);
            }
        }
        if (window_timer == 16){
            if (instance_exists(mine)){
                if (mine.state == 1){
		            batarang.shoulddie = true;
	            }
	            mine.state_timer = 0;
                mine.state = 3;
            }
            else {
                mine = instance_create( x+40*spr_dir, y, "obj_article1"); 
            }
        }
        
    }
}

//USpecial - Shuttle Loop
if (attack == AT_USPECIAL){
    can_wall_jump = true;
    fall_through = true;
    //Resets the attack
    if (window == 1){
        set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 8);
        set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 90);
        set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE_FLIPPER, 0);
        uspecial_hold = false;
    }
    //Changes the mine hitboxes
    if (down_down){
                set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 45);
            }
    if (up_down){
                set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 90);
            }
    if (joy_pad_idle){
                set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 60);
            }
    
    //If holds special to blow up the mine
    if (instance_exists(mine) && mine.state == 2 && special_down){
        if (window == 5 && window_timer == 2){
            set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 0);
            uspecial_hold = true;
        }
        if (window == 6 && window_timer == 3 && uspecial_hold == true){
            if (!up_down){
                mine_uspecial = 1;
            }
            window = 9;
            mine.state_timer = 0;
            mine.state = 3;
        }
    }
}

//Jab doesn't put in pratfall
if (attack == AT_JAB){
    was_parried = false;
    if (window == 3 && window_timer > 2 && attack_pressed && joy_pad_idle){
        window = 4;
        window_timer = 0;
    }
}

//DAir bounces you up if you hit something
if (attack == AT_DAIR){
    if (window != 2 && window != 4){
        has_hit = false;
    }
    if (has_hit == true){
        vsp = -1;
    }
}

//If DAttack goes offstage, it keeps the momentum
if (attack == AT_DATTACK){
    if (window == 3 && free){
        window = 5;
        hsp = 8*spr_dir; 
    }
}

//Puts DStrong on cooldown on hit
if (attack == AT_DSTRONG){
    if (has_hit){
        move_cooldown[AT_DSTRONG] = 30;
    }
}

//Can hold the Taunt
if (attack == AT_TAUNT){
	if (window == 2 && window_timer == 31 && taunt_down){
		window_timer = 1;
	}
}