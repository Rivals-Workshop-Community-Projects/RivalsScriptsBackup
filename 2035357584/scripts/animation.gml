if(has_grenade){
    if(state_cat == SC_HITSTUN){
        if(sprite_index == sprite_get("hurt")){
            sprite_index = sprite_get("hurtg");
        }
        else if(sprite_index == sprite_get("bighurt")){
            sprite_index = sprite_get("bighurtg");
        }
        else if(sprite_index == sprite_get("bouncehurt")){
            sprite_index = sprite_get("bouncehurtg");
        }
        else if(sprite_index == sprite_get("uphurt")){
            sprite_index = sprite_get("uphurtg");
        }
        else if(sprite_index == sprite_get("hurtground")){
            sprite_index = sprite_get("hurtgroundg");
        }
    }
    switch (state){
        case PS_IDLE:
            sprite_index = sprite_get("idleg");
            image_index = floor(image_number*state_timer/(image_number*8.5));
        break;
        
        case PS_SPAWN:
            if (introTimer < 27 && introTimer >= 0) {
                sprite_index = sprite_get("intro");
                image_index = introTimer;
            } 
            else if (introTimer < 0) {
                sprite_index = sprite_get("intro");
                image_index = 0;
            } 
            else {
                sprite_index = sprite_get("idleg");
                image_index = floor(image_number*state_timer/(image_number*8.5));
            }
        break;
        
        case PS_RESPAWN:
            sprite_index = sprite_get("idleg");
            image_index = floor(image_number*state_timer/(image_number*8.5));
        break;
        
        case PS_IDLE_AIR:
            sprite_index = sprite_get("jumpg");
        break;
    
        case PS_WALK:
            sprite_index = sprite_get("walkg");
            image_index = floor(image_number*state_timer/(image_number*8.5));
        break;
    
        case PS_WALK_TURN:
            sprite_index = sprite_get("walkturng");
        break;
    
        case PS_DASH:
            sprite_index = sprite_get("dashg");
            image_index = floor(image_number*state_timer/(image_number*6.5));
        break;
    
        case PS_DASH_TURN:
            sprite_index = sprite_get("dashturng");
        break;
    
        case PS_DASH_STOP:
            sprite_index = sprite_get("dashstopg");
        break;
    
        case PS_DASH_START:
            sprite_index = sprite_get("dashstartg");
        break;
    
        case PS_FIRST_JUMP:
            sprite_index = sprite_get("jumpg");
        break;
        
        case PS_DOUBLE_JUMP:
            sprite_index = sprite_get("doublejumpg");
        break;
    
        case PS_JUMPSQUAT:
            sprite_index = sprite_get("jumpstartg");
        break;
    
        case PS_LAND:
            sprite_index = sprite_get("landg");
        break;
    
        case PS_LANDING_LAG:
            sprite_index = sprite_get("landinglagg");
        break;
        
        case PS_CROUCH:
            sprite_index = sprite_get("crouchg");
        break;
        
        case PS_WAVELAND:
            sprite_index = sprite_get("wavelandg");
        break;
        
        case PS_WALL_JUMP:
            sprite_index = sprite_get("walljumpg");
        break;
        
        case PS_AIR_DODGE:
            sprite_index = sprite_get("airdodgeg");
        break;
        
        case PS_PARRY_START:
            sprite_index = sprite_get("parryg");
        break;
        
        case PS_PARRY:
            sprite_index = sprite_get("parryg");
        break;
        
        case PS_ROLL_BACKWARD:
            sprite_index = sprite_get("roll_backwardg");
        break;
        
        case PS_ROLL_FORWARD:
            sprite_index = sprite_get("roll_forwardg");
        break;
        
        case PS_TECH_GROUND:
            sprite_index = sprite_get("techg");
        break;
        
        case PS_TECH_BACKWARD:
            sprite_index = sprite_get("roll_backwardg");
        break;
        
        case PS_TECH_FORWARD:
            sprite_index = sprite_get("roll_forwardg");
        break;
        
        case PS_WALL_TECH:
            sprite_index = sprite_get("walljumpg");
        break;
    
    default: break;
    }
}