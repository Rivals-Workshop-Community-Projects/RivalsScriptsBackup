//the real hit_player
//it would make it so chara can properly hit enemies in adventure mode and the like, just in case

switch (my_hitboxID.attack) {
    case AT_UAIR:
        if my_hitboxID.hbox_num == 1 or my_hitboxID.hbox_num == 2{
            sound_play(asset_get("sfx_blow_heavy1"))
        }
    case AT_FSPECIAL:
        //sound_play(asset_get("sfx_blow_heavy2"))
        break;
    break;
}

if (loaded_off_uspec) loaded_off_uspec = false;