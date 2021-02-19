//hit_player.gml
if (my_hitboxID.attack == AT_NSPECIAL || my_hitboxID.attack == AT_NSPECIAL_2) {
    sound_play(sound_get("sfx_peashoot_hit"));
}

if (my_hitboxID.attack == AT_NAIR && has_rune("B")) {
    old_vsp = -8;
}

if (my_hitboxID.player == my_hitboxID.orig_player) {
    if (my_hitboxID.attack == AT_NSPECIAL || my_hitboxID.attack == AT_NSPECIAL_2) {
        if (!invincible_super && card_count < 100 && !orbit_active) {
            switch(my_hitboxID.hbox_num) {
                case 2:
                case 3:
                case 4:
                case 7:
                    card_count += 1*super_gain_multipler;
                break;
                
                case 6:
                    card_count += 4*super_gain_multipler;
                break;
                
                default:
                    card_count += 2*super_gain_multipler;
                break;
            }
            
        }
    }
    else if (my_hitboxID.attack == AT_FAIR || my_hitboxID.attack == AT_DAIR || my_hitboxID.attack == AT_UTILT || my_hitboxID.attack == AT_JAB) {   
        if (!invincible_super && card_count < 100 && !orbit_active) {
            card_count += 1*super_gain_multipler;
        }
    }
    else if (my_hitboxID.attack == AT_USPECIAL) {
        if (!invincible_super && card_count < 100 && !orbit_active) {
            card_count += 10*super_gain_multipler;
        }
    }
    else if (my_hitboxID.attack == AT_EXTRA_1 || my_hitboxID.attack == AT_EXTRA_2) {
        if (!invincible_super && card_count < 100 && !orbit_active) {
            if (my_hitboxID.hbox_num == 1) {
                card_count += 3*super_gain_multipler;
            }
            if (my_hitboxID.hbox_num == 2) {
                card_count += 7*super_gain_multipler;
            }
        }
    }
    else if (my_hitboxID.attack != AT_FSPECIAL) {
        if (!invincible_super && card_count < 100 && !orbit_active) {
            card_count += 3*super_gain_multipler;
        }
    }
    
    if (my_hitboxID.attack == AT_FSPECIAL) {
        if (my_hitboxID.hbox_num == 11) {
            orbit_hit += 1;
            sound_play(sound_get("sfx_ex_hit"));
        }
        if (my_hitboxID.hbox_num == 14) {
            sound_play(sound_get("sfx_ex_hit"));
        }
    }
}

