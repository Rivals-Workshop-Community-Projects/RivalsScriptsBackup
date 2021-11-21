//hit-player

var atk = my_hitboxID.attack
var hnum = my_hitboxID.hbox_num

hit_player_obj.triggers_kill_effect = false;

switch atk {
    case AT_FAIR:
    sound_play(asset_get("sfx_waterhit_medium"))
    sound_play(asset_get("sfx_icehit_medium1"))
    break;
    
    case AT_FSTRONG:
    sound_play(asset_get("sfx_waterhit_medium"))
    sound_play(asset_get("sfx_icehit_medium2"))
    break;
    
    case AT_DSTRONG:
    sound_play(asset_get("sfx_waterhit_medium"))
    //sound_play(asset_get("sfx_icehit_medium1"))
    break;
    
    case AT_USTRONG:
    if hnum == 2 || hnum == 3 {
        //sound_play(asset_get("sfx_icehit_medium1"))
    } else if hnum == 4 {
        sound_play(asset_get("sfx_waterhit_medium"))
        sound_play(asset_get("sfx_icehit_medium2"))
        sound_play(asset_get("sfx_waterwarp_start"))
        
        hit_player_obj.triggers_kill_effect = true;
    }
    break;
}

//command grab code for shuriken multihits
if atk == AT_NSPECIAL && hnum == 4 {
    if hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND {
        hit_player_obj.x = lerp(hit_player_obj.x, my_hitboxID.x, 0.8)
    }
}

//article shine
if atk == AT_DSPECIAL && hnum == 1 {
    if hit_doll != undefined {
        hit_doll.state = PS_AIR_DODGE
        hit_doll.state_timer = 0
        hit_doll.shine_hit = hit_player_obj
    } else if doll_id != noone {
        doll_id.state = PS_AIR_DODGE
        doll_id.state_timer = 0
        doll_id.shine_hit = hit_player_obj
    }
    
}