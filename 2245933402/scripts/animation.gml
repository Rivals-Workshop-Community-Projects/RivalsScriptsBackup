///

if (state == PS_PRATLAND) {
    
    sprite_index = sprite_get("landinglag");
    image_index = min(state_timer/8,2);
    
}

if (state == PS_PRATFALL && attack != AT_JAB && attack != AT_USPECIAL) {
    
    sprite_index = sprite_get("jump");
    image_index = 4
}

if ostyle == 1 {
    
    if state == PS_FIRST_JUMP or state == PS_DOUBLE_JUMP or state == PS_PRATFALL{
        
        if jumping == 0 {
            sprite_index = sprite_get("djump2");
            image_index = min(state_timer/4,6);
        }
        
        if jumping == 1 {
            sprite_index = sprite_get("djump3");
            image_index = min(state_timer/3,10);
        }
        
        if jumping == -1 {
            sprite_index = sprite_get("djump4");
            image_index = min(state_timer/4,7);
        }        
        
    }
    
    if state == PS_AIR_DODGE {
        
        if jumping == 0 {
            sprite_index = sprite_get("djump2");
            image_index = min(state_timer/4,6);
        }
        
        if jumping == 1 {
            sprite_index = sprite_get("djump3");
            image_index = min(state_timer/3,10);
        }
        
        if jumping == -1 {
            sprite_index = sprite_get("djump4");
            image_index = min(state_timer/4,7);
        }  
        
    }
    
    if state == PS_WALL_JUMP {
        sprite_index = sprite_get("djump3");
        image_index = min(state_timer/3,10);
    }
    
    if state == PS_IDLE_AIR {
        sprite_index = sprite_get("djump2");
        image_index = 6
        
    }
    
    
    
}