//hit_player.gml

if my_hitboxID.attack == AT_JAB && my_hitboxID.hbox_num == 3 && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND) {
    hit_player_obj.tco_jab_grab_id = id
    jab_grab = true
}

if (my_hitboxID.attack == AT_JAB && my_hitboxID.hbox_num == 4 )
|| my_hitboxID.attack == AT_DTILT 
|| my_hitboxID.attack == AT_BAIR
|| my_hitboxID.attack == AT_NAIR {
    fire_stance = true
    fire_amount = 100
}

if my_hitboxID.attack == AT_JAB {
    switch my_hitboxID.hbox_num {
        case 3:
        sound_play(asset_get("sfx_forsburn_cape_swipe"))
        break;
        case 4:
        sound_play(asset_get("sfx_burnapplied"))
        break;
    }
}

if my_hitboxID.attack == AT_BAIR && my_hitboxID.hbox_num == 1 {
    sound_play(asset_get("sfx_ell_dspecial_explosion_1"))
}

if my_hitboxID.attack == AT_FSPECIAL {
    laser_hit = true
    //hit_player_obj.x = lerp(hit_player_obj.x, laser_pos_max[0], 0.2)
    //hit_player_obj.y = lerp(hit_player_obj.y, laser_pos_max[1], 0.2)
    laser_dist = point_distance(my_hitboxID.x, my_hitboxID.y, x + 30*spr_dir, y - 44)
    laser_end_pos = [my_hitboxID.x, my_hitboxID.y]
}

if my_hitboxID.attack == AT_NTHROW && my_hitboxID.hbox_num >= 3 {
    fireblast_hit = true
    fireblast_dist = point_distance(my_hitboxID.x, my_hitboxID.y, x + 40*spr_dir, y - 44)
    fireblast_end_pos = [my_hitboxID.x, my_hitboxID.y]
}

if my_hitboxID.attack == AT_FSTRONG {
    switch my_hitboxID.hbox_num {
        case 2:
        sound_play(asset_get("sfx_ori_energyhit_heavy"))
        break;
    }
}

if my_hitboxID.attack == AT_UTHROW && my_hitboxID.hbox_num == 1 && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND) {
    hit_player_obj.tco_utilt_grab_id = id
    utilt_grab = true
}

if my_hitboxID.attack == AT_UTHROW && my_hitboxID.hbox_num == 2 {
    sound_play(asset_get("sfx_ell_fist_explode"))
}

if my_hitboxID.attack == AT_DTHROW {
    switch my_hitboxID.hbox_num {
        case 1:
        sound_play(asset_get("sfx_ell_dspecial_explosion_1"))
        break;
        case 2:
        sound_play(asset_get("sfx_ell_fist_explode"))
        break;
    }
}