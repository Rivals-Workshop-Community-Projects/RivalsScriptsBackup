//hit-player

if (my_hitboxID.attack == AT_DAIR) && (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2) {
    bulletBounce = true;
    sound_stop(sound_get("bullet_time"));
    if runeA { //DAIR can be used again after hitting an opponent with it.
        move_cooldown[AT_DAIR] = 0;
    } else {
        move_cooldown[AT_DAIR] = 10000000000;
    }
}

if (my_hitboxID.attack == AT_DSPECIAL) {
    if (my_hitboxID.hbox_num == 1) {
        //stasisActive = true;
        //stasisHitPlayer = true;
        //stasisType = "player";
        //chainTimer = 0;
        
        var hitPlayer = hit_player_obj.player;
        var damage = get_player_damage(hitPlayer);
        if runeG { //Stasis timer lasts longer on opponents.
            stasisTimerMax = 90 + (damage*3);
        } else {
            stasisTimerMax = 60 + (damage*1.5);
        }
        
        if (stasisID == undefined) {
            stasisID = hit_player_obj.id;
        }
        if (hit_player_obj.id == stasisID) {
            set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, spr_dir * (hit_player_obj.x - x));
            set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, hit_player_obj.y - y - 20);
            set_hitbox_value(AT_DSPECIAL, 2, HG_EXTRA_HITPAUSE, stasisTimerMax);
            create_hitbox(AT_DSPECIAL, 2, 0, 0);
        }
        
    }
    if (my_hitboxID.hbox_num == 2) {
        stasisActive = true;
        if (stasisID == undefined) {
            stasisID = hit_player_obj.id;
        }
        sound_stop(sound_get("rune_search_start"));
        sound_play(sound_get("stasis_start"));
        stasisHitPlayer = true;
        stasisType = "player";
        chainTimer = 0;
    }
}

if (my_hitboxID.attack == AT_FSTRONG) && (my_hitboxID.hbox_num == 1) {
    destroyed = true;
    create_hitbox(AT_FSTRONG, 2, my_hitboxID.x, my_hitboxID.y);
    sound_play(sound_get("explosion"));
    spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, fstrongExplosionVfx);
}

if (my_hitboxID.attack == AT_DATTACK) && (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2) {
    dattackHitPlayer = true;
}

if (my_hitboxID.attack == AT_NSPECIAL) && (my_hitboxID.hbox_num == 1) {
    if (arrowCrit) {
        sound_play(sound_get("arrow_crit"));
        arrowCrit = false;
    }
}

if my_hitboxID.attack == 49 && my_hitboxID.hbox_num <= 2 {
    fs_hit = true;
    fs_hitID = hit_player_obj.id;
    fs_timer = 0;
}