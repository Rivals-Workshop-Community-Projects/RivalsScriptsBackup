//hit_player.gml
if (my_hitboxID.attack == AT_NSPECIAL) {
    sound_play(sound_get((my_hitboxID.hbox_num == 7) ? "sfx_chaser_hit" : "sfx_peashoot_hit"));
}

if my_hitboxID.attack == AT_USPECIAL { cupCardGain(10); }
else if my_hitboxID.attack != AT_FSPECIAL { cupCardGain(ceil(my_hitboxID.damage*0.25)); }

if (my_hitboxID.player == my_hitboxID.orig_player) {
    switch(my_hitboxID.attack) {
        case AT_NAIR:
            if (has_rune("B")) { old_vsp = -8; }
        break;
        case AT_FSPECIAL:
            if (my_hitboxID.hbox_num == 11 || my_hitboxID.hbox_num == 14) {
                sound_play(sound_get("sfx_ex_hit"));
                orbit_hit += (my_hitboxID.hbox_num == 11);
            }
        break;
    }
}

#define cupCardGain(gain_value)
//making this a function bc my brain is smal
if (!invincible_super && card_count < 100 && !orbit_active) {
card_count = clamp(card_count+(gain_value*super_gain_multipler), 0, 100);
}