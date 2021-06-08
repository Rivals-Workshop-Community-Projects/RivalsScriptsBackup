//hit-player

if my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1 && !hit_player_obj.clone {
    
    if my_hitboxID.explodeTimer < my_hitboxID.explodeThreshhold {
        sound_play(asset_get("sfx_ell_fist_explode"));
        spawn_hit_fx(my_hitboxID.x, my_hitboxID.y - 15, 141);
        create_hitbox(AT_NSPECIAL, 2, my_hitboxID.x, my_hitboxID.y - 10);
        my_hitboxID.destroyed = true;
        exit;
    } else {
        spawn_hit_fx(my_hitboxID.x, my_hitboxID.y - 15, 301);
        my_hitboxID.explodeTimer = 240;
        my_hitboxID.in_hitpause = true;
        my_hitboxID.hasMoved = false;
        my_hitboxID.hitCooldown = 20;
        my_hitboxID.hitPlayerID = hit_player_obj.id;
    }
}

if my_hitboxID.attack == AT_DSPECIAL_2 && my_hitboxID.hbox_num == 1 && !hit_player_obj.clone {
    compactID = hit_player_obj.id;
    compactID.invincible = true;
    compactID.invince_time = 80;
}