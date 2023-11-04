switch (my_hitboxID.attack) {
    case AT_FSPECIAL_2:
        if my_hitboxID.hbox_num == 3 {
            sound_play(asset_get("sfx_absa_harderhit"), false, noone, 1, 0.8);
        }
    break;
    case AT_JAB:
        //sound_play(sound_get(`sfx_ut_punch${my_hitboxID.hbox_num}`), false, noone, 0.6, 1.2);
    break;
    case AT_UAIR:
        if my_hitboxID.hbox_num == 1
        {
            sound_play(asset_get("sfx_pom_tailhit_forward"), false, noone, 0.6, 1.1);
        }
        else {
            sound_play(asset_get("sfx_pom_tailhit_back"), false, noone, 0.6, 1.1);
            sound_play(asset_get("sfx_ori_energyhit_medium"), false, noone, 0.6, 1.2);
        }
    break;
    case AT_FAIR:
        sound_play(asset_get("sfx_ori_energyhit_heavy"), false, noone, 0.4, 1.2)
        sound_play(asset_get("sfx_pom_tailhit_up"), false, noone, 0.7, 1.04);
        sound_play(asset_get("sfx_forsburn_reappear_hit"), false, noone, 0.5, 1.1)
    break;
    case AT_NAIR:
        if my_hitboxID.hbox_num != 2
        {
            sound_play(asset_get("sfx_pom_tailhit_forward"), false, noone, 0.6, 1.1);
        }
        else {
            sound_play(asset_get("sfx_pom_tailhit_back"), false, noone, 0.6, 1);
        }
    break;
    case AT_DAIR:
        old_vsp = clamp(old_vsp - 4, -10, -6)
        if my_hitboxID.hbox_num == 1 {
            sound_play(asset_get("sfx_ori_energyhit_small"), false, noone, 0.7, 1)
            sound_play(asset_get("sfx_forsburn_reappear_hit"), false, noone, 0.3, 1.1)
        }
    break;
    case AT_DSTRONG:
        if my_hitboxID.hbox_num == 1
        {
            array_push(ftilt_grabbed, hit_player_obj)
            if !hit_player_obj.super_armor {
                hit_player_obj.y = lerp(hit_player_obj.y, y, 0.3)
            }
            sound_play(asset_get("sfx_ori_energyhit_medium"), false, noone, 0.5, 0.8)
        }
        else {
            sound_play(asset_get("sfx_forsburn_reappear_hit"), false, noone, 0.4, 1)
            sound_play(asset_get("sfx_ori_energyhit_heavy"), false, noone, 0.5, 1.3)
            sound_play(sound_get("sfx_fstrong_hit"), false, noone, 0.5, 1.4)
        }
    break;
    case AT_FSTRONG:
    if my_hitboxID.hbox_num == 2 {
        sound_play(asset_get("sfx_ori_energyhit_heavy"), false, noone, 0.5, 1.1)
        sound_play(asset_get("sfx_forsburn_reappear_hit"), false, noone, 0.4, 1)
        sound_play(sound_get("sfx_fstrong_hit"), false, noone, 0.8, 1.3)
    }
    break;
    case AT_USTRONG:
        switch my_hitboxID.hbox_num {
            case 1:
                sound_play(asset_get("sfx_ori_energyhit_medium"), false, noone, 0.6, 1.1)
                break;
            case 2:
                sound_play(asset_get("sfx_ori_energyhit_heavy"), false, noone, 0.5, 1.1)
                sound_play(sound_get("sfx_applause"), false, noone, 0.6, 1)
            break;
        }
    break;
    case AT_NSPECIAL:
        switch my_hitboxID.hbox_num {
            case 1:
            sound_play(sound_get("sfx_spooktune"));
            break;
            case 2:
            sound_play(sound_get("sfx_spookwave"));
            break;
            case 3:
            sound_play(sound_get("sfx_ghouliday"));
            break;
        }
    break;
}