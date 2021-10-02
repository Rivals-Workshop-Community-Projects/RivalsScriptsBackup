if (my_hitboxID.attack == AT_DAIR){
    hsp = get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_PROJECTILE_HSPEED);
    vsp = get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_PROJECTILE_VSPEED);
    if (left_down){
        hsp -= 4;
    }
    if (right_down){
        hsp += 4;
    }
    old_hsp = hsp;
    old_vsp = vsp;
}

if (my_hitboxID.attack == AT_DSPECIAL_2) || (my_hitboxID.attack == AT_FTILT) || (my_hitboxID.attack == AT_FSTRONG && my_hitboxID.hbox_num != 3 && misfire_active) || (my_hitboxID.attack == AT_DSTRONG) || (my_hitboxID.attack == AT_UAIR && my_hitboxID.hbox_num == 2){
    if (!birdluigifire){ 
        sound_play(asset_get("sfx_burnapplied"));
    }
    birdluigifire = true;
    if (birdluigifire_timer < 50){
        birdluigifire_timer = 50;
    }
    birdluigifire_id = id;
    outline_color = [round(get_color_profile_slot_r(get_player_color(player), 0) * 0.5), round(get_color_profile_slot_g(get_player_color(player), 0) * 0.5), round(get_color_profile_slot_b(get_player_color(player), 0) * 0.5)]
}

if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1 && !hit_player_obj.birdluigi_grab_immune){
    my_hitboxID.parry_grab_id = hit_player_obj.id;
}