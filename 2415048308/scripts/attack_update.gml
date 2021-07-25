//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (has_knife != true){
	//ftilt changes
	set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt_knifeless"));
	set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 0);
	set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 2);
	set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 9);
	set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);
	set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAME_START, 1);
	set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 8);
	//utilt changes
	set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt_knifeless"));
	set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 0);
	set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
	//dtilt changes
	set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt_knifeless"));
	set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 4);
	set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
	set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAME_START, 1);
	set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 3);
	set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 0);
	set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 0);
	set_hitbox_value(AT_DTILT, 3, HG_WINDOW, 2);
	
} else{
	//ftilt reversions
	reset_attack_value(AT_FTILT, AG_SPRITE);
	reset_hitbox_value(AT_FTILT, 1, HG_WINDOW);
	reset_hitbox_value(AT_FTILT, 2, HG_WINDOW);
	reset_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH);
	reset_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES);
	reset_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAME_START);
	reset_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME);
	//utilt reversions
	reset_attack_value(AT_UTILT, AG_SPRITE);
	reset_hitbox_value(AT_UTILT, 1, HG_WINDOW);
	reset_hitbox_value(AT_UTILT, 2, HG_WINDOW);
	//dtilt reversions
	reset_attack_value(AT_DTILT, AG_SPRITE);
	reset_hitbox_value(AT_DTILT, 1, HG_WINDOW);
	reset_hitbox_value(AT_DTILT, 2, HG_WINDOW);
	reset_hitbox_value(AT_DTILT, 3, HG_WINDOW);
	reset_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH);
	reset_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES);
	reset_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAME_START);
	reset_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME);
}

if (attack == AT_NSPECIAL){
    if (window == 2){
        if (window_timer == 1){
        	move_cooldown[AT_NSPECIAL] = 140;
            with dummy {
                state = 2;
                state_timer = 0;
            }
        }
    }
}

if (attack == AT_FSPECIAL){
	if (window == 1){
		if (window_timer == 1){
			knife = instance_create(x + 30*spr_dir, y - 40, "obj_article3");
		}
	}
	if (window == 2){
		if (left_down == true){
			x -= 2;
		}
		if (right_down == true){
			x += 2;
		}
		if (times_through == 4){
				set_state(PS_PRATFALL);
			}
		if (shield_pressed){
			set_state(PS_PARRY);
		}
		if (special_down == false){
			window = 3;
			window_timer = 0;
		}
		if (up_down){
			knife.knife_angle = 1*spr_dir;
		}
		if (down_down){
			knife.knife_angle = -1*spr_dir;
		}
		if (!down_down && !up_down){
			knife.knife_angle = 0;
		}
		if (window_timer == 29){
			times_through += 1;
		}
	}
	if (window == 3){
		if (window_timer == 9){
			has_knife = false;
			with knife{
			state = 2;
			state_timer = 0;
		}
		}
	}
}

if (attack == AT_FSTRONG or attack == AT_USTRONG){
	if (window == 1 && window_timer == 1){
		sound_played = false;
	}
    if (window == 2 && sound_played == false){
    	if (oPlayer.hitpause == false or has_hit == true){
    		if (attack == AT_FSTRONG){
        sound_play(asset_get("sfx_blow_heavy1"));
    		} else sound_play(asset_get("sfx_swipe_heavy2"));
    	}
    	sound_played = true
}
}

if (free == false && move_cooldown[AT_USPECIAL] > 0){
	move_cooldown[AT_USPECIAL] = 0;
}
var maddummy = id;
if (attack == AT_USPECIAL){
	can_wall_jump = true;
	with pHitBox{
	if (has_hit == true && attack != AT_NSPECIAL){
			with maddummy{
					spawn_hit_fx(floor(x),floor(y - 50),19);
					uspecial_hit = true;
			}
		}
	}
	if uspecial_hit{
		attack_cooldown[AT_USPECIAL] = 999;
		can_attack = true;
		set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 0);
	} else reset_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE);
    if (window == 1 && window_timer == 6 && instance_exists(dummy) && !dummy.free){
    	with dummy{
    		state = 4;
    		state_timer = 0;
    	}
    }
}

if (attack == AT_TAUNT){
	if (window == 3 && window_timer == 1){
		sound_stop(sound_get("sfx_bleep_start"));
		//sound_play(sound_get("sfx_bleep"));
	}
	if (window == 3 && window_timer == 6 && taunt_down == false){
		set_state(PS_IDLE);
		sound_stop(sound_get("sfx_bleep"));
	}
}

if (state_cat == SC_GROUND_NEUTRAL or state_cat == SC_AIR_NEUTRAL){
	bar_alpha = 0;
}

if (attack == AT_DSPECIAL){
	if (window == 1 && bar_alpha != 1){
	bar_alpha += .1;
	}
	if (window == 3 && bar_alpha != 0){
		bar_alpha -= .1;
	}
}

if (attack == AT_DSPECIAL){
    if (window == 1 && window_timer == 1){
    	if (has_robot == true){
    		has_robot = false;
    	}
        if (instance_exists(dummy) == true){
            with dummy{
                state = 3;
                state_timer = 0;
            }
        }
    }
    if (window == 2){
        if (special_down == false){
            window = 3;
            window_timer = 0;
        }
        if dspecial_charge < 200{
        dspecial_charge += 5;
    }
    if (shield_pressed){
        set_state(PS_PARRY);
    }
    }
    if (window == 3 && window_timer == 1 && dspecial_charge < 200){
        dummy = instance_create(x + 50*spr_dir, y, "obj_article1");
    } else if (window == 3 && window_timer == 1){
        dummy = instance_create(x + 50*spr_dir, y, "obj_article2");
        has_robot = true;
    }
    if (window == 3 && window_timer > 1){
        dspecial_charge -= 20;
    }
}