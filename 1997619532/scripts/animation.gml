
if (state == PS_PRATFALL) && attack == AT_DAIR {
    
    if state_timer < 18 {
        sprite_index = sprite_get("dair");
        image_index = state_timer/6 + 1
    }
    
}


if (state == PS_DASH_TURN) {
    sprite_index = sprite_get("dashstart");
    image_index = state_timer/3
    
}


if (state == PS_PRATLAND) {
    
    sprite_index = sprite_get("landinglag");
    image_index = min(state_timer/8,2);
    
}

if (state == PS_LANDING_LAG) && attack == AT_DAIR {
    

        sprite_index = sprite_get("dair");
        image_index = 6 + state_timer/5
        draw_y = 6
        
    if state_timer == 12 {
        sound_play(sound_get("slicel"),false,noone,.4,.7);
    }
    
}


if get_player_color(player) == 17 { 
    draw_y = 9999
}
