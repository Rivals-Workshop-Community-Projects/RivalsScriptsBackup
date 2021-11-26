// Variable Definition
var hitmove = my_hitboxID.attack;
var hitnum = my_hitboxID.hbox_num;

switch(hitmove){
    case AT_DTILT:
        sound_play(asset_get("sfx_waterhit_weak"));
        break;
    case AT_FAIR:
        if hitnum == 1{
            sound_play(asset_get("sfx_waterhit_heavy2"));
        }
        break;
    case AT_NSPECIAL_AIR:
        if hitnum < 3 and hit_player_obj.super_armor != true{
            hit_player_obj.x = (x + get_hitbox_value(AT_NSPECIAL_AIR, hitnum + 1, HG_HITBOX_X) * spr_dir);
            hit_player_obj.y = y + get_hitbox_value(AT_NSPECIAL_AIR, hitnum + 1, HG_HITBOX_Y);
        }
        break;
    case AT_FSPECIAL:
        sound_stop(sound_get("sfx_fspecial_loop"))
        break;
    case AT_USPECIAL:
        if hitnum < 5 and hit_player_obj.super_armor != true{
            hit_player_obj.x = (x + get_hitbox_value(AT_USPECIAL, hitnum + 1, HG_HITBOX_X) * spr_dir);
            hit_player_obj.y = y + get_hitbox_value(AT_USPECIAL, hitnum + 1, HG_HITBOX_Y);
        }
        break;
}