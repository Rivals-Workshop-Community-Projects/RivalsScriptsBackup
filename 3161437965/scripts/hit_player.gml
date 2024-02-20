switch (my_hitboxID.attack) {
    case AT_UAIR:
        if my_hitboxID.hbox_num == 1 or my_hitboxID.hbox_num == 2{
            sound_play(asset_get("sfx_blow_heavy1"))
            if (hit_player_obj.should_make_shockwave) sound_play(sound_get("sfx_deal_damage"))
        }
    case AT_FSPECIAL:
        //sound_play(asset_get("sfx_blow_heavy2"))
        break;
    break;
    case AT_FSTRONG:
        sound_play(sound_get("sfx_sword_hit"))
    break;
    case AT_FAIR:
        if (my_hitboxID.hbox_num == 1 && hit_player_obj.should_make_shockwave) {
            sound_play(sound_get("sfx_deal_damage"))
            sound_play(asset_get("sfx_blow_heavy2"))
        }
    break;
}

if (loaded_off_uspec) loaded_off_uspec = false;