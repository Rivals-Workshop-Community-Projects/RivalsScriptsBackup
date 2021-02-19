switch (state){
    case PS_IDLE:
    if !holdingCube && ((prev_state == PS_CROUCH) || (prev_state == PS_ATTACK_GROUND && attack == AT_DTILT)) {
        if (crouch_counter < 16) {
            sprite_index = sprite_get("crouch");
            image_index = floor(crouch_counter/4) + 12;
            crouch_counter++;
        }
    } else if holdingCube {
        sprite_index = sprite_get("idle_block");
        image_index = floor(state_timer/10) mod 4;
    }
    break;
    
    case PS_CROUCH:
    if !holdingCube {
        if (prev_state == PS_ATTACK_GROUND && attack == AT_DTILT) && (state_timer < 12) {
            state_timer = 12;
            crouch_counter = 0;
        }
        
        if (state_timer == 0) {
            crouch_counter = 0;
        }
        
        if (state_timer < 2) {
            image_index = 15;
        } else if (state_timer < 12) {
            image_index = floor(state_timer/4);
        } else if (state_timer mod 120 > 85) {
            image_index = floor(((state_timer mod 120) - 85)/5) + 4;
        } else if (down_down) {
            image_index = 3;
        } else {
            image_index = floor(crouch_counter/4) + 12;
            crouch_counter++;
        }
    }
    break;
    
    case PS_WALK:
    if holdingCube {
        sprite_index = sprite_get("walk_block");
        image_index = floor(state_timer/10) mod 4;
    }
    break;
    
    case PS_DASH_START:
    if holdingCube {
        sprite_index = sprite_get("walk_block");
        image_index = floor(state_timer/10) mod 4;
    }
    break;
    
    case PS_DASH:
    if holdingCube {
        sprite_index = sprite_get("walk_block");
        image_index = floor(state_timer/8) mod 4;
    }
    break;
    
    case PS_DASH_STOP:
    if holdingCube {
        sprite_index = sprite_get("walk_block");
        image_index = floor(state_timer/10) mod 4;
    }
    break;
    
    case PS_WALK_TURN:
    case PS_DASH_TURN:
    if holdingCube {
        sprite_index = sprite_get("walkturn_block");
    }
    break;
    
    case PS_JUMPSQUAT:
    if holdingCube {
        sprite_index = sprite_get("jumpstart_block");
    }
    break;
    
    case PS_FIRST_JUMP:
    case PS_IDLE_AIR:
    if holdingCube {
        sprite_index = sprite_get("jump_block");
    }
    break;
    
    case PS_LAND:
    if holdingCube {
        sprite_index = sprite_get("land_block");
    }
    break;
    
    case PS_HITSTUN:
    case PS_TUMBLE:
    if holdingCube {
        sprite_index = sprite_get("hurt_block");
    }
    break;
    
    case PS_HITSTUN_LAND:
    if holdingCube {
        sprite_index = sprite_get("hurtground_block");
    }
    break;
    
    case PS_ATTACK_AIR:
    case PS_ATTACK_GROUND:
    switch attack {
        case AT_NSPECIAL:
        if holdingCube {
            if window == 9 {
                sprite_index = sprite_get("pickup");
                hurtboxID.sprite_index = sprite_get("pickup_hurt");
                image_index = floor(window_timer/4)
            }
        }
        break;
    }
    break;
    
    default: break;
}