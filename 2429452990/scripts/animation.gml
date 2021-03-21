switch (state){
    case PS_IDLE:
    if (quack_open = 1 && draw_indicator != false){
        checkcurrent = image_index
        sprite_index = (sprite_get("idle_quack"));
        image_index = checkcurrent;
    }
    

        //code here can change the sprite_index and image_index while in the idle state
    break;
    
        case PS_WALK:
    if (quack_open = 1 && draw_indicator != false){
        checkcurrent = image_index
        sprite_index = (sprite_get("walk_quack"));
        image_index = checkcurrent;
    }
    
        break;

        case PS_WALK_TURN:
    if (quack_open = 1 && draw_indicator != false){
        checkcurrent = image_index
        sprite_index = (sprite_get("walkturn_quack"));
        image_index = checkcurrent;
    }
    
        break;   
    
            case PS_DASH:
    if (quack_open = 1 && draw_indicator != false){
        checkcurrent = image_index
        sprite_index = (sprite_get("dash_quack"));
        image_index = checkcurrent;
    }
    
        break;       
        
            case PS_DASH_TURN:
    if (quack_open = 1 && draw_indicator != false){
        checkcurrent = image_index
        sprite_index = (sprite_get("dashturn_quack"));
        image_index = checkcurrent;
    }
    
        break;    

        case PS_FIRST_JUMP:
    if (quack_open = 1 && draw_indicator != false){
        checkcurrent = image_index
        sprite_index = (sprite_get("jump_quack"));
        image_index = checkcurrent;
    }
    
        break;        
        
            case PS_CROUCH:
    if (quack_open = 1 && draw_indicator != false){
        checkcurrent = image_index
        sprite_index = (sprite_get("crouch_quack"));
        image_index = checkcurrent;
    }
    
        break;   
        
                case PS_DOUBLE_JUMP:
    if (quack_open = 1 && draw_indicator != false){
        checkcurrent = image_index
        sprite_index = (sprite_get("doublejump_quack"));
        image_index = checkcurrent;
    }
    
        break;  

    
    default: break;
}