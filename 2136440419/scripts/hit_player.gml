// HODAN'S HIT PLAYER FILE

// Add's the steam effects on moves that have it.
if ((my_hitboxID.attack == AT_FTILT) || (my_hitboxID.attack == AT_DTILT)
    || (my_hitboxID.attack == AT_UAIR) || (my_hitboxID.attack == AT_UTILT) ||
    (((my_hitboxID.attack == AT_DATTACK && dattack_strong) || my_hitboxID.attack == AT_USPECIAL 
    || (my_hitboxID.attack == AT_DSPECIAL && dspecial_handspring)) && my_hitboxID.hbox_num == 1) ||
    (my_hitboxID.attack == AT_DSTRONG && my_hitboxID.hbox_num > 1)) {
    sound_play(sound_get("sfx_stinky_steam1"));
    spawn_hit_fx( round(hit_player.x), round(hit_player.y), 6 ); // Temp water effect
}

if ((my_hitboxID.attack == AT_FSPECIAL || my_hitboxID.attack == AT_NSPECIAL) && my_hitboxID.hbox_num == 1) {
    if (sweatwhirl_charged) {
        // Gather data about the hit to spawn the second hit
        sweatwhirl_charged_hit = true;
        sweatwhirl_hit_pos = [hit_player.x, hit_player.y];
        hit_player_obj.should_make_shockwave = false;
    }
    sweatwhirl_exists = false; // Assures that it no longer exists
    if (!my_hitboxID.was_parried) {
	    create_vapour = true; // Initiate vapour vfx creation
	    // Give coordinates of where sweatwhirl was destroyed
	    vapour_fx_xy = [hit_player.x, hit_player.y];
	    vapour_fx_time = get_gameplay_time();
    }
}

if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 4) {
    with (pHitBox) if (player_id == other && (attack == AT_NSPECIAL || attack == AT_FSPECIAL) && hbox_num == 1) {
        // Set speed to 0 for hitpause
        hsp = 0;
        vsp = 0;
    }
    sweatwhirl_leveled_hit = true;
    sweatwhirl_leveled_hit_time = get_gameplay_time();
    sweatwhirl_hitpause_frames = sweatwhirl_max_hitpause;
    sweatwhirl_level_3_timer = 0;
}

// This code makes the first two hitboxes grab
if (my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num <= 2) {
    if (grabbed == -1 && !hit_player_obj.super_armor) {
        // Doesn't work on super armoured opponents
        grabbed = hit_player_obj;
    }
} else if (my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num == 3) {
    // Marks that you hit the first sourspot if done successfully
    set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, 1);
    set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, 1);
}

if (my_hitboxID.attack == AT_NAIR) {
    nair_jc = true;
}

if (my_hitboxID.attack == AT_JAB && my_hitboxID.hbox_num == 1) {
    jab_cancellable = true;
}

// Held NSPECIAL code
if ((my_hitboxID.attack == AT_DSPECIAL || my_hitboxID.attack == AT_USPECIAL) && ((sweatwhirl_grabbed && (sweatwhirl_level == 1 || sweatwhirl_level == 3) && my_hitboxID.hbox_num < 3) || my_hitboxID.hbox_num == 3)) {
    instance_create(round(hit_player.x), round(hit_player.y), "obj_article1");
	sweatwhirl_grabbed = false;
	spawn_hit_fx(hit_player.x, hit_player.y, sweatwhirl_fx);
	sound_play(sound_get("sfx_stinky_steam2"));
	if (my_hitboxID.hbox_num == 3) {
	    dspecial_level_2_hit = true;
	} else {
	    dspecial_level_3_hit = true;
	}
} else if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 4) {
    // Always assure you can land the main hit of DSPECIAL to not lead to wack infinites
    attack_end();
}