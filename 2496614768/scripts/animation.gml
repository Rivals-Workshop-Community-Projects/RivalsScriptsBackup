//

if timebreak or shock >= 1 {
    
    if state == PS_WALK {
        sprite_index = sprite_get("walk2")
        image_index = state_timer/5
    }
    
    if state == PS_DASH {
        sprite_index = sprite_get("dash2")
        image_index = state_timer/3
    }
}


if (state == PS_PRATLAND) {
    
    sprite_index = sprite_get("landinglag");
    image_index = min(state_timer/round(prat_land_time/4),3);
    
}