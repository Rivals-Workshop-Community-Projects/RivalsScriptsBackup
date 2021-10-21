if (attack == AT_FSTRONG && (hbox_num == 1 || hbox_num == 3)) {
    if ((hbox_num == 1 || hbox_num == 3) && hitbox_timer == 32 && !in_hitpause && !was_parried) {
        if (!was_parried) {
        create_hitbox(AT_FSTRONG, 2, x, y)
        sound_play( sound_get( "cut" ) );
        }
    }
    
    if ((hbox_num == 1 || hbox_num == 3) && hitbox_timer <= 2 && !in_hitpause && !was_parried && has_hit) {
        player_id.fstrong1fhit = true;
    }
    else if ((hbox_num == 1 || hbox_num == 3) && hitbox_timer == 3 && !in_hitpause && !was_parried && !has_hit) {
        player_id.fstrong1fhit = false;
    }
    
    if ((hbox_num == 1 || hbox_num == 3) && hitbox_timer == 16 && !in_hitpause && !was_parried && player_id.fstrong1fhit) {
        create_hitbox(AT_FSTRONG, 4, x, y)
    }
    if (attack == AT_FSTRONG && (hbox_num == 1 || hbox_num == 2)) {
        player_id.move_cooldown[AT_FSTRONG] = 4;
    }
    if (attack == AT_FSTRONG && (hbox_num == 3)) {
        player_id.move_cooldown[AT_FSTRONG] = 6;
    }
}

if (attack == AT_FSTRONG_2 && (hbox_num == 1 || hbox_num == 3)) {
    if ((hbox_num == 1 || hbox_num == 3) && hitbox_timer == 25 && !in_hitpause && !was_parried) {
        if (!was_parried) {
        create_hitbox(AT_FSTRONG_2, 2, x, y)
        sound_play( sound_get( "cut" ) );
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


