// called when a player is hit

if (SpamNeoPlaytest) {
} else {
    if (hit_player_obj.SpamNeoSnap == false && hit_player_obj.SpamNeoStringApplyCooldown <= 0 && ((my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num == 2) || (my_hitboxID.attack == AT_UAIR && my_hitboxID.hbox_num == 3) || (my_hitboxID.attack == AT_FSPECIAL) || (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 4) || (my_hitboxID.attack == AT_DSTRONG && my_hitboxID.hbox_num == 1))) {
        hit_player_obj.SpamNeoString = true;
        hit_player_obj.SpamNeoStringApplyCooldown = 20;
        hit_player_obj.SpamNeoStringPlayerId = id;
        if (hit_player_obj.SpamNeoStringCharge < 5) {
            hit_player_obj.SpamNeoStringCharge += 1;
        }
    }
}

// NSpecial Sounds

if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num >= 2) {
    if (SpamNeoPipisSound == false) {
        sound_play(asset_get("sfx_zetter_upb_hit"));
        SpamNeoPipisSound = true;
    }
}

// DStrong Snap

if (my_hitboxID.attack == AT_DSTRONG && my_hitboxID.hbox_num == 2) {
    hit_player_obj.SpamNeoSnapPrat = true;
    hit_player_obj.state = PS_PRATFALL;
    hit_player_obj.SpamNeoSnapPratFrames = 50 + ((hit_player_obj.SpamNeoSnapPratTime - 1) * 25);
    hit_player_obj.SpamNeoSnapNormPratland = prat_land_time;
    hit_player_obj.prat_land_time = 50 + ((hit_player_obj.SpamNeoSnapPratTime - 1) * 25);
}

// Attack Grabs

if ((my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num == 1) || (my_hitboxID.attack == AT_FSTRONG && my_hitboxID.hbox_num == 1) || (my_hitboxID.attack == AT_DATTACK && my_hitboxID.hbox_num <= 3) || (my_hitboxID.attack == AT_FAIR && my_hitboxID.hbox_num <= 2) || (my_hitboxID.attack == AT_DAIR && my_hitboxID.hbox_num <= 4) || (my_hitboxID.attack == AT_UAIR && my_hitboxID.hbox_num <= 2)) {
    if (hit_player_obj.state_cat == SC_HITSTUN) {
        if (hit_player_obj != obj_article1 && hit_player_obj != obj_article2 && hit_player_obj != obj_article3 && hit_player_obj != obj_article_solid && hit_player_obj != obj_article_platform) {
            SpamNeoGrabStartX = hit_player_obj.x;
            SpamNeoGrabStartY = hit_player_obj.y;
            SpamNeoGrabbedId = hit_player_obj.id;
            SpamNeoGrabAngle = my_hitboxID.kb_angle;
            SpamNeoGrabDmg = hit_player_obj.SpamNeoEnmDamage;
            SpamNeoGrabScaling = my_hitboxID.kb_scale;
            SpamNeoGrabKB = my_hitboxID.kb_value;
            
            hit_player_obj.should_make_shockwave = false;
        }
    } else {
        SpamNeoGrabbedId = 0;
    }
}

// No pratfall on hit uspc

SpamNeoUSpcPrat = false;

// DATTACK Final hit move with player

if (my_hitboxID.attack == AT_DATTACK && my_hitboxID.hbox_num == 4) {
    SpamNeoGrabbedId.x = x + (100 * spr_dir);
}