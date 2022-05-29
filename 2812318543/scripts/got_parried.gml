pandoria.affinity = floor(pandoria.affinity/2);

//destroy nspec
if(my_hitboxID.type == 1){
    with(pHitBox){
    	if(player_id == other && attack == AT_NSPECIAL_2 && hbox_num == 1){
    		destroyed = true;
    		player_id.move_cooldown[AT_DSPECIAL] = 120;
    	}
    }
}

//pandy fspec
if(my_hitboxID.attack == AT_FSPECIAL_2 && my_hitboxID.hbox_num == 2){
    with(pHitBox){
        if(attack == other.my_hitboxID.attack && player_id == other && hbox_num == 1){
            was_parried = true;
            player = other.my_hitboxID.player;
            hsp *= -1;
            phase = 1;
            hitbox_timer = 0;
            spr_dir *= -1;
        }
    }
}

if(my_hitboxID.attack == AT_NSPECIAL){
    if(my_hitboxID.hbox_num == 1){
        set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 3);
        set_window_value(AT_NSPECIAL, 3, AG_WINDOW_CANCEL_TYPE, 0);
        set_window_value(AT_NSPECIAL, 3, AG_WINDOW_CANCEL_FRAME, 0);
    }else if(my_hitboxID.hbox_num == 2){
        set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 6);
        set_window_value(AT_NSPECIAL, 6, AG_WINDOW_CANCEL_TYPE, 0);
        set_window_value(AT_NSPECIAL, 6, AG_WINDOW_CANCEL_FRAME, 0);
    }
}