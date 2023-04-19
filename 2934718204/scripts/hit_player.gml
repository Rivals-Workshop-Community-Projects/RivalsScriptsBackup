//hit_player.gml

//sfx
switch my_hitboxID.attack {
    case AT_NAIR:
    case AT_DTILT:
    case AT_JAB:
    case AT_FTILT:
    case AT_UAIR:
    case AT_BAIR:
    case AT_USTRONG:
    sound_play(sound_get("bar_hit"))
    break;
    
    case AT_DSTRONG:
    if my_hitboxID.hbox_num == 8 sound_play(sound_get("bar_hit"))
    break;
}

//silk status
if my_hitboxID.effect == 31 {
    hit_player_obj.hornet_silked_id = id;
    spawn_hit_fx(my_hitboxID.x, my_hitboxID.y, vfx_silk_apply)
    sound_play(sound_get("hero_shade_dash_charge_pt_2"))
}

//wrap
if my_hitboxID.effect == 29 {
    if hit_player_obj.hornet_silked_id != noone {
        hit_player_obj.hornet_silked_id = noone
        hit_player_obj.hornet_wrapped_id = id;
        hit_player_obj.should_make_shockwave = false
        var owner_dist = point_distance(hit_player_obj.x,hit_player_obj.y,x,y)
        
        var bhp = 6
        var xhp = 28 + clamp(owner_dist/30, 0, 20)
        
        if my_hitboxID.attack == AT_DSPECIAL { //dspecial gets more wrap time
            xhp += 4
        }
        //print(owner_dist)
        //print(xhp)
        var hbox = create_hitbox(AT_EXTRA_1, 1, hit_player_obj.x, hit_player_obj.y)
            hbox.hitpause = bhp
            hbox.extra_hitpause = xhp
    }
} else if my_hitboxID.attack != AT_EXTRA_1 {
    hit_player_obj.hornet_wrapped_id = noone;
}