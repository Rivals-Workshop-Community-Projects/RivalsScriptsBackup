///

if atrain < 100 && state == PS_DOUBLE_JUMP && state_timer < 25{ 
    
    sprite_index = sprite_get("jump")
    
}


if htrain >= 100 && (state == PS_DASH_START or state == PS_DASH) {
    sprite_index = sprite_get("dash2")
    image_index = state_timer/3
}

if state == PS_CROUCH {

    if croutime % 9 == 0 {
    sprite_index = sprite_get("crouch2")
    }
    if croutime % 9 == 6 {
    sprite_index = sprite_get("crouch3")
    }
    if croutime % 9 == 3 {
    sprite_index = sprite_get("crouch4")
    }
}

if state == PS_LAND or state == PS_LANDING_LAG {

    if croutime % 5 == 3 {
    sprite_index = sprite_get("crouch3")
    }
    if croutime % 5 == 0 {
    sprite_index = sprite_get("crouch4")
    }
}

if state == PS_PRATFALL && move_cooldown[AT_USPECIAL] > 0 {
    sprite_index = sprite_get("hurt")
}