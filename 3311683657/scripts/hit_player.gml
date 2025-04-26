//hit-player

var atk = my_hitboxID.attack
var hnum = my_hitboxID.hbox_num

hit_player_obj.triggers_kill_effect = false;

switch atk {
    case AT_NAIR:
    if hnum == 1 sound_play(asset_get("sfx_ori_spirit_flame_hit_1"))
    break;
    
    case AT_FAIR:
    sound_play(sound_get("bar_hit"))
    sound_play(asset_get("sfx_blow_heavy1"))
    break;
    
    case AT_FSTRONG:
    //sound_play(asset_get("sfx_waterhit_medium"))
    sound_play(asset_get("sfx_icehit_medium2"))
    spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, hfx_ori_orange_big)
    break;

    case AT_FSPECIAL:
    if hnum == 1 {
        sound_play(asset_get("sfx_ori_energyhit_medium"))
        spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, hfx_ori_orange_big)
    }
    if hnum == 2 {
        sound_play(asset_get("sfx_ori_energyhit_weak"))
        spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, hfx_ori_orange_big)
    }
    break;
    
    case AT_UTHROW:
    sound_play(asset_get("sfx_ori_energyhit_weak"))
    spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, hfx_ori_blue_big)
    break;
    
    case AT_DSTRONG:
    //sound_play(asset_get("sfx_waterhit_medium"))
    //sound_play(asset_get("sfx_icehit_medium1"))
    spawn_hit_fx(hit_player_obj.x, hit_player_obj.y - 30, hfx_ori_orange_small)
    break;
    
    case AT_USTRONG:
    if hnum == 2 || hnum == 3 {
        //sound_play(asset_get("sfx_icehit_medium1"))
    } else if hnum == 4 {
        sound_play(asset_get("sfx_icehit_medium2"))
        spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, hfx_ori_orange_big)
        hit_player_obj.triggers_kill_effect = true;
    }
    break;
    
    case AT_DTILT:
    sound_play(asset_get("sfx_shovel_hit_med2"))
    break;
    
    case AT_NSPECIAL:
    if hnum == 5 {
        with my_hitboxID if nspec_empowered {
            sound_play(asset_get("sfx_blow_heavy2"))
        } else {
            sound_play(asset_get("sfx_blow_heavy1"))
        }
    }
    break;
}

//command grab code for shuriken multihits
if atk == AT_NSPECIAL && hnum == 4 {
    if hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND {
        hit_player_obj.x = lerp(hit_player_obj.x, my_hitboxID.x, 0.8)
        hit_player_obj.should_make_shockwave = false
    }
}

counter_hit = noone

set_window_value(AT_UTHROW, 3, AG_WINDOW_TYPE, 0);
//set_window_value(AT_FSPECIAL, 7, AG_WINDOW_TYPE, 0);
//set_window_value(AT_FSPECIAL, 8, AG_WINDOW_TYPE, 0);

switch atk {
    case AT_UTILT:
    case AT_USTRONG:
    case AT_FSTRONG:
    sound_play(sound_get("bar_hit"))
    
    break;
    
    case AT_JAB:
    if hnum != 3 sound_play(sound_get("bar_hit"))
    break;
    
}