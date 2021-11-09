
/*
with (asset_get("new_dust_fx_obj")) {

    
    if player == other.player && dust_fx != 24 && dust_fx != 22 && dust_fx != 23 && dust_fx != 21  && dust_fx != 13 {
        dust_length = 0;
    }
    
    
}
*/



if state_cat == SC_HITSTUN {
    sound_stop(sound_get("hcine"))
    sound_stop(sound_get("fspec3"))
}

if ragemode == 0 {
switch state {
    
    case PS_LANDING_LAG :
    
    if state_timer == 1 {
        sound_stop(sound_get("hcine"))
        sound_stop(sound_get("fspec3"))
    }
    
    break ;
    case PS_WALL_JUMP :
    sprite_index = sprite_get("doublejump")
    image_index = state_timer/4
    break;
    
    case PS_PRATFALL :
    
    if attack == AT_FTILT or attack == AT_UTILT or attack == AT_DAIR {
    sprite_index = sprite_get("doublejump")
    image_index = min(6, state_timer/4)
    
    if state_timer == 1 && attack != AT_DAIR{
        sound_play(sound_get("whoosh"),false,noone,.7, 1)
        vsp = -4
    }
    
    if state_timer == 1 && attack == AT_DAIR{
        sound_play(sound_get("whoosh"),false,noone,.7, 1)
        vsp = -12
    }
    
    } else {
    sprite_index = sprite_get("jump")
    image_index = 6
    }
    
    break;
    
    case PS_PRATLAND :
    
    sprite_index = sprite_get("landinglag")
    image_index = min(2, state_timer/4)
    
    break;
    
    case PS_WALK :
    case PS_DASH_START :
    case PS_DASH :
    case PS_DASH_STOP :
    
    if state_timer > 5 {
    sprite_index = sprite_get("move")
    image_index = state_timer/4
    } else {
    sprite_index = sprite_get("mstart")
    }
    break;
    
    
    case PS_WALK_TURN :
    case PS_DASH_TURN :

    sprite_index = sprite_get("turn")
    
    break;
    
    case PS_JUMPSQUAT :
    case PS_LAND :
     sprite_index = sprite_get("crouch")
    image_index = 0
    break;
}

} else {
    
    
    if !hitpause {
        ragemode -= 1
    }
    
    brage = 0
    bragesub = 0
    
    if ragemode == 1 {
        sound_play(sound_get("fspec"))
        spawn_hit_fx(x,y - 28, 306)
        ragemode = 0
    }
    
    init_shader();
    
switch state {
    
    case PS_IDLE :
    
    sprite_index = sprite_get("idle2")
    image_index = state_timer/3
    
    break ;
    
    case PS_LANDING_LAG :
    
    if state_timer == 1 {
        sound_stop(sound_get("hcine"))
        sound_stop(sound_get("fspec3"))
    }
    
    break ;
    case PS_WALL_JUMP :
    sprite_index = sprite_get("walljump")
    image_index = state_timer/3
    break;
    
    case PS_PRATFALL :
    

    if attack == AT_FTILT or attack == AT_UTILT or attack == AT_DAIR {
    sprite_index = sprite_get("doublejump")
    image_index = min(6, state_timer/4)
    
    if state_timer == 1 && attack != AT_DAIR{
        sound_play(sound_get("whoosh"),false,noone,.7, 1)
        vsp = -4
    }
    
    if state_timer == 1 && attack == AT_DAIR{
        sound_play(sound_get("whoosh"),false,noone,.7, 1)
        vsp = -12
    }
    
    } else {
    sprite_index = sprite_get("jump")
    image_index = 6
    }
    
    break;
    
    case PS_PRATLAND :
    
    sprite_index = sprite_get("landinglag")
    image_index = min(2, state_timer/4)
    
    break;
    
    case PS_WALK :
    case PS_DASH_START :
    case PS_DASH :
    case PS_DASH_STOP :
    
    if state_timer > 5 {
    sprite_index = sprite_get("move2")
    image_index = state_timer/4
    } else {
    sprite_index = sprite_get("mstart")
    }
    break;
    
    
    case PS_WALK_TURN :
    case PS_DASH_TURN :

    sprite_index = sprite_get("turn")
    
    break;
    
    case PS_JUMPSQUAT :
    case PS_LAND :
     sprite_index = sprite_get("crouch")
    image_index = 0
    break;
}   

}