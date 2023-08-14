//hit_player.gml

if hit_player_obj.id != id && hit_player_obj.totk_ustrong_grabbed_id == id hit_player_obj.totk_ustrong_grabbed_id = noone
if hit_player_obj.id != id && hit_player_obj.totk_ustrong_lerp_id == id hit_player_obj.totk_ustrong_lerp_id = noone

switch my_hitboxID.attack {
    case AT_JAB:
    case AT_FAIR:
    case AT_UTILT:
    case AT_DTILT:
    case AT_FTILT:
    case AT_UAIR:
    sound_play(sound_get("bar_hit"))
    break;
    
    case AT_DAIR:
    if my_hitboxID.hbox_num != 1 sound_play(asset_get("sfx_shovel_hit_med2"))
    break;
    
    case AT_FSPECIAL:
    if my_hitboxID.hbox_num <= 3 sound_play(sound_get("botw_hit"))
    break;
    
    case AT_NSPECIAL:
    /*
    with my_hitboxID {
        sound_play(sound_get("arrow_crit"))
        spawn_hit_fx(x, y, 303)
    }
    */
    break;
    
    case AT_FSTRONG:
    sound_play(asset_get("sfx_blow_heavy1"))
    //spawn_hit_fx(my_hitboxID.x + 15*spr_dir, my_hitboxID.y, vfx_energy)
    break;
    
    case AT_NSPECIAL:
    if my_hitboxID.hbox_num == 1 {
        my_hitboxID.hit_player_obj = hit_player_obj
    }
    break;
    
    case AT_USTRONG:
    if my_hitboxID.hbox_num == 1 && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND) {
        set_window_value(AT_USTRONG, 4, AG_WINDOW_GOTO, 5);
        hit_player_obj.totk_ustrong_grabbed_id = id
        ustrong_grabbing = true
    }
    
    if my_hitboxID.hbox_num == 2 && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND) {
        hit_player_obj.totk_ustrong_lerp_id = id
        ustrong_distance_x = 0
        ustrong_distance_y = 20
    }
    break;
    
    case AT_DSTRONG:
    if my_hitboxID.hbox_num == 2 && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND) {
        hit_player_obj.totk_dstrong_earthwake_id = id
        hit_player_obj.totk_dstrong_earthwake_timer = 0
        hit_player_obj.totk_dstrong_earthwake_y = dstrong_earthwake_y
        hit_player_obj.totk_dstrong_pause = true
        
        set_window_value(AT_DSTRONG, 4, AG_WINDOW_GOTO, 6);
    }
    
    if my_hitboxID.hbox_num == 3 && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND) {
        hit_player_obj.totk_dstrong_pause = true
    }
    break;
    
}