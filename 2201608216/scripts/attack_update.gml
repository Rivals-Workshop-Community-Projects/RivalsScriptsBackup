//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if(attack == AT_JAB){
	if(was_parried){
    	was_parried = false;
	}
}

if (attack == AT_FAIR){
    if (!free){
        if (window == 2 || window == 3){
            set_attack_value(AT_FAIR, AG_CATEGORY, 2);
            window = 5;
            window_timer = 0;
            destroy_hitboxes();
        }
        if (window == 5 && window_timer == 6){
            window = 6;
            window_timer = 0;
        }
    }
}

if (attack == AT_NSPECIAL){
    if (window == 1 && chungusCharge > 100){
            if (left_down){
                spr_dir = -1;
            }
            else if (right_down){
                spr_dir = 1;
            }
    }
    if(window == 2){
        set_window_value(AT_NSPECIAL, 5, AG_WINDOW_HSPEED, -7);
        if(chungusCharge < 49){
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 4);
            set_window_value(AT_NSPECIAL, 5, AG_WINDOW_HSPEED, -6);
            set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 5);
            set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 9);
            set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 9);
        }
        if(chungusCharge > 100){
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 12);		
            set_window_value(AT_NSPECIAL, 5, AG_WINDOW_HSPEED, -9);
            set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 9);
            set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 5);
            set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 9);
            window = 3;
            chungusCharge = 0;
        }
    }
    if(window == 3){
        if(shield_pressed){
            window = 6;
            window_timer = 0;
        }
        if(special_pressed){
            if(chungusCharge > 50 && chungusCharge < 101){
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 8);
                set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 5);
                set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 9);
                set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 9);
                window = 3;
            }
            chungusCharge = 0;
            window = 4;
            window_timer = 0;
        }
        if(chungusCharge == 50){
            sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"));
        }
        if(chungusCharge == 100){
            sound_play(asset_get("sfx_frog_fspecial_charge_gained_2"));
            window = 6;
            window_timer = 0;
        }
        chungusCharge++;
    }
}

if (attack == AT_FSPECIAL){
move_cooldown[attack] = 9999;
}

if (attack == AT_FSPECIAL){
    move_cooldown[attack] = 9999;
    can_move = false;
    can_fast_fall = false;
    can_wall_jump = true;
}

if (attack == AT_USPECIAL){
    move_cooldown[attack] = 9999;
    can_fast_fall = false;
    can_wall_jump = true;
    if(window == 2 && right_down){
        set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED, 6 * spr_dir);
        set_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED, 4 * spr_dir);
        set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -6);
        set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, -7);
    }
    if(window == 2 && left_down){
        set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED, -6 * spr_dir);
        set_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED, -4 * spr_dir);
        set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -6);
        set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, -7);
    }
    if(window == 5){
            set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED, 0);
            set_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED, 0);
            set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -8);
            set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, -8);
    }
}

if (attack == AT_DSPECIAL){
	if window = 1 && window_timer = 1 && canCan = 2 {
		canCan = 0
	}
	if window = 2 && window_timer = 1 {
		if canCan = 0 {
			canCan = 1
			canDuckHunt = instance_create(x + spr_dir*42, y - 28, "obj_article2");
		}
	}
}


/* Trash Bag
if (attack == AT_DSPECIAL){
    can_fast_fall = false;
    can_move = false
    if (window == 2){
        can_jump = true;
    }
    if(window == 1 && window_timer == 10 && trashCan > 0){
        trashDestroy = 2;
    }
    if (window == 1 && window_timer == 30) {
        if (trashCan == 0) {
            chungusbag = instance_create(x + spr_dir*42, y - 28, "obj_article1");
        }
    }
}
*/

//Runes
if (has_rune("D")){

   if (attack == AT_DATTACK){
		can_jump = true
   }

}
