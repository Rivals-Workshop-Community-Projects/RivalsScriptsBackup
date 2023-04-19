if (rock == true)
{
    switch (state)
    {
        case PS_IDLE:
        {
            sprite_index = sprite_get("rockidle");
            image_index = floor(image_number*state_timer/(image_number*6.5)); 
        }
        break;
        
        case PS_WALK:
        {
            sprite_index = sprite_get("rockwalk");
            image_index = floor(image_number*state_timer/(image_number*9));
        }
        break;
        
        case PS_WALK_TURN:
        {
            sprite_index = sprite_get("rockwalkturn");
            image_index = floor(image_number*state_timer/(image_number*2.5)); 
        }
        break;
        
        case PS_DASH:
        {
            sprite_index = sprite_get("rockdash");
            image_index = floor(image_number*state_timer/(image_number*6));
        }
        break;

        case PS_DASH_STOP:
        {
            sprite_index = sprite_get("rockdashstop");
            image_index = floor(image_number*state_timer/(image_number*2));
        }
        break;
        
        case PS_DASH_TURN:
        {
            sprite_index = sprite_get("rockdashturn");
            image_index = floor(image_number*state_timer/(image_number*4));
        }
        break;
        
        case PS_CROUCH:
        {
            sprite_index = sprite_get("rockcrouch");
            image_index = floor(image_number*state_timer/(image_number*6)); 
        }
        break;
        
        case PS_JUMPSQUAT:
        {
            sprite_index = sprite_get("rockjumpstart");
            image_index = floor(image_number*state_timer/(image_number*6.5)); 
        }
        break;
        case PS_FIRST_JUMP:
        {
            sprite_index = sprite_get("rockjump");
            image_index = floor(image_number*state_timer/(image_number*4)); 
        }
        break;
        
        case PS_DOUBLE_JUMP:
        case PS_WALL_JUMP:
        {
            sprite_index = sprite_get("rockdoublejump");
            image_index = floor(image_number*state_timer/(image_number*4)); 
        }
        break;
        
        case PS_LAND:
        {
            sprite_index = sprite_get("rockland");
            image_index = floor(image_number*state_timer/(image_number*6.5)); 
        }
        break;
        
        case PS_LANDING_LAG:
        {
            sprite_index = sprite_get("rocklandinglag");
            image_index = floor(image_number*state_timer/(image_number*6.5)); 
        }
        break;
        case PS_PRATFALL:
        {
            sprite_index = sprite_get("rockpratfall");
            image_index = floor(image_number*state_timer/(image_number*6.5)); 
        }
        break;
        case PS_PRATLAND:
        {
            sprite_index = sprite_get("rockwaveland");
            image_index = floor(image_number*state_timer/(image_number*6.5)); 
        }
        break;
        case PS_WAVELAND:
        {
            sprite_index = sprite_get("rockwaveland");
            image_index = floor(image_number*state_timer/(image_number*6.5)); 
        }
        break;
        case PS_IDLE_AIR:
        {
            sprite_index = sprite_get("rockpratfall");
            image_index = floor(image_number*state_timer/(image_number*6.5)); 
        }
        break;
        case PS_PARRY_START:
        {
            sprite_index = sprite_get("rockparry");
            image_index = floor(image_number*state_timer/(image_number*6.5)); 
        }
        break;
        case PS_PARRY:
        {
            sprite_index = sprite_get("rockparry");
            image_index = floor(image_number*state_timer/(image_number*6.5)); 
        }
        break;
        case PS_HITSTUN:
        {
            sprite_index = sprite_get("rockhurt");
            image_index = floor(image_number*state_timer/(image_number*6.5)); 
        }
        break;
        case PS_HITSTUN_LAND:
        {
            sprite_index = sprite_get("rockhurt");
            image_index = floor(image_number*state_timer/(image_number*6.5)); 
        }
        break;
        case PS_TUMBLE:
        {
            sprite_index = sprite_get("rockbighurt");
            image_index = floor(image_number*state_timer/(image_number*6.5)); 
        }
        break;
        case PS_ROLL_BACKWARD:
        {
            sprite_index = sprite_get("rockroll_backward");
            image_index = floor(image_number*state_timer/(image_number*5)); 
        }
        break;
        case PS_ROLL_FORWARD:
        {
            sprite_index = sprite_get("rockroll_forward");
            image_index = floor(image_number*state_timer/(image_number*5)); 
        }
        break;

    }
}