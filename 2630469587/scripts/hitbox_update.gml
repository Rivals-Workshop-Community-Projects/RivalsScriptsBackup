if (attack == AT_FSTRONG && (hbox_num == 1 || hbox_num == 3)) {
    if ((hbox_num == 3) && hitbox_timer == 32 && !in_hitpause && !was_parried) {
        if (!was_parried) {
        create_hitbox(AT_FSTRONG, 2, x, y)
        sound_play( sound_get( "cut" ) );
        shake_camera( 2, 4 );
        }
    }
    
    if ((hbox_num == 1) && hitbox_timer == 22 && !in_hitpause && !was_parried) {
        if (!was_parried) {
        create_hitbox(AT_FSTRONG, 2, x, y)
        sound_play( sound_get( "cut" ) );
        shake_camera( 2, 4 );
        }
    }
    
    if ((hbox_num == 1 || hbox_num == 3) && hitbox_timer <= 2 && !in_hitpause && !was_parried && has_hit) {
        player_id.fstrong1fhit = true;
    }
    else if ((hbox_num == 1 || hbox_num == 3) && hitbox_timer == 3 && !in_hitpause && !was_parried && !has_hit) {
        player_id.fstrong1fhit = false;
    }
    
    if ((hbox_num == 1 || hbox_num == 3) && hitbox_timer == 14 && !in_hitpause && !was_parried && player_id.fstrong1fhit) {
        create_hitbox(AT_FSTRONG, 4, x, y)
    }
    if (attack == AT_FSTRONG && (hbox_num == 1 || hbox_num == 2)) {
        player_id.move_cooldown[AT_FSTRONG] = 8;
    }
    if (attack == AT_FSTRONG && (hbox_num == 3)) {
        player_id.move_cooldown[AT_FSTRONG] = 4;
    }
}



if (attack == AT_FSTRONG_2 && (hbox_num == 3)) {
    if ((hbox_num == 3) && hitbox_timer == 30 && !in_hitpause && !was_parried) {
        if (!was_parried) {
        create_hitbox(AT_FSTRONG_2, 2, x, y)
        sound_play( sound_get( "cut" ) );
        shake_camera( 2, 4 );
        }
    }
}

if (attack == AT_FSTRONG_2 && (hbox_num == 1)) {
    if ((hbox_num == 1) && hitbox_timer == 30 && !in_hitpause && !was_parried) {
        if (!was_parried) {
        create_hitbox(AT_FSTRONG_2, 2, x, y)
        sound_play( sound_get( "cut" ) );
        shake_camera( 2, 4 );
        }
    }
}

if (attack == AT_FSTRONG_2 && (hbox_num == 2)) {
    if ((hbox_num == 2) && hitbox_timer == 13 && !in_hitpause && !was_parried) {
        if (!was_parried && player_id.phantom.state != 4) {
        player_id.move_cooldown[AT_NSPECIAL_2] = 0
        //player_id.phantom.state = 7;
		//player_id.phantom.state_timer = 0;
        }
    }
}



if (attack == AT_NSPECIAL && (hbox_num == 5 || hbox_num == 6 || hbox_num == 7) && hitbox_timer == 17) {
    if ((player_id.start_sprdir == 1 && player_id.spr_dir == -1) || (player_id.start_sprdir == -1 && player_id.spr_dir == 1)) {
    create_hitbox(AT_NSPECIAL, 8, x, y);
    }
    else {
        create_hitbox(AT_NSPECIAL, 2, x, y);
    }
    
}

if (attack == AT_NSPECIAL_AIR && (hbox_num == 5 || hbox_num == 6 || hbox_num == 7) && hitbox_timer == 17) {
    if ((player_id.start_sprdir == 1 && player_id.spr_dir == -1) || (player_id.start_sprdir == -1 && player_id.spr_dir == 1)) {
    create_hitbox(AT_NSPECIAL_AIR, 8, x, y);
    }
    else {
        create_hitbox(AT_NSPECIAL_AIR, 2, x, y);
    }
    
}


