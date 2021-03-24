if(my_hitboxID.attack == AT_FSPECIAL){
    if (my_hitboxID.hbox_num == 1 && hit_player_obj.clone == false){
    hit_player_obj.blue = true;
    hit_player_obj.blue_time = 600;
    hit_player_obj.blue_id = id;
    can_blue = false;
	    if (has_rune("J")){
	    	hit_player_obj.blue_time = 900;
	    }
    }
}

if (my_hitboxID.attack == AT_EXTRA_1){
	if (my_hitboxID.effect == 11 or my_hitboxID.can_hit_self){
		sound_stop(sound_get("sfx_shock"));
		sound_play(sound_get("sfx_shock"));
	}
}

if (my_hitboxID.attack == AT_FSPECIAL_2 && my_hitboxID.hbox_num == 7 && has_hit && can_blue){
	set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_TYPE, 1);
} else set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_TYPE, 7);

if (my_hitboxID.attack != AT_EXTRA_1){
    with orb{
        if (player_id == other.id){
            article_animation_frame = 3;
        }
    }
}

if(my_hitboxID.attack == AT_DSPECIAL){
    hit_counter ++;
	    if (hit_counter >= 0 && can_blue == true){
            with (bones){
                state = 3;
                state_timer = 0;
            }
        move_cooldown[AT_DSPECIAL] = 120;
        hit_counter = 0;
    }
        if (hit_counter == 3 && can_blue == false){
            with (bones){
                state = 3;
                state_timer = 0;
            }
        move_cooldown[AT_DSPECIAL] = 220;
        hit_counter = 0;
    }
}

if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.type == 2 && my_hitboxID.hbox_num==1 && hit_player_obj.clone == false) {
    sound_play(asset_get("sfx_blow_weak1"));
    orb = instance_create(hit_player_obj.x-(4*spr_dir), hit_player_obj.y = -28, "obj_article2");
    orb.spr_dir = my_hitboxID.spr_dir;
	orb.host=hit_player_obj;
}

if (my_hitboxID.attack == AT_UTILT && my_hitboxID.hbox_num == 1) {
    hit_player_obj.starting_x_pos = hit_player_obj.x;
    hit_player_obj.starting_y_pos = hit_player_obj.y;
}
