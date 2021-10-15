
if (state == PS_PRATFALL) && attack == AT_DAIR {
    
    if state_timer < 18 {
        sprite_index = sprite_get("dair");
        image_index = state_timer/6 + 1
    }
    
}

if (state == PS_SPAWN) {
    if (introTimer < 31 && introTimer >= 0) {
         if get_player_color(player) == 3{
             
            	              sprite_index = sprite_get("introG7");
            	      
            	 } else {
            	      
            	        sprite_index = sprite_get("intro");
            }

        image_index = introTimer;
    } else if (introTimer < 0) {
        sprite_index = sprite_get("intro");
        image_index = 0;
    } else {
        sprite_index = sprite_get("idle");
    }
}

if (state == PS_PRATLAND) {
    
    sprite_index = sprite_get("landinglag");
    image_index = min(state_timer/8,2);
    
}