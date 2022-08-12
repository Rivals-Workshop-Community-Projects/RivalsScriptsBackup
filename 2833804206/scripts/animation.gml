switch (state){
    case PS_IDLE:
        //code here can change the sprite_index and image_index while in the idle state
    break;
    
    case PS_ATTACK_GROUND:
    case PS_ATTACK_AIR:
    switch attack {
        case AT_FSTRONG:
        if window == 1 && strong_charge > 0 {
            image_index = 3 - (floor(strong_charge/6) mod 2)
        }
        break;
    }
    break;
    
    case PS_CROUCH:
    if state_timer > 6 {
        if (spr_dir == -1 && right_down && !left_down) || (spr_dir == 1 && !right_down && left_down) {
            spr_dir *= -1
            sprite_index = sprite_get("crouchturn")
            image_index = 0
            crouch_turn_timer = 0
        }
        
        if sprite_index == sprite_get("crouchturn") || crouch_turn_timer > 0 {
            sprite_index = sprite_get("crouchturn")
            image_index = floor(crouch_turn_timer*2/crouch_turn_time)
            
            if crouch_turn_timer == crouch_turn_time {
                crouch_turn_timer = 0
                sprite_index = sprite_get("crouch")
                break;
            }
            crouch_turn_timer++
        }
    }
    break;
    
    case PS_JUMPSQUAT:
    if prev_state != PS_ATTACK_AIR && prev_state != PS_ATTACK_GROUND {
        fspec_jc = false
    }
    
    if fspec_jc {
        if state_timer == 3 {
            sound_play(asset_get("sfx_forsburn_reappear_hit"))
        }
    }
    break;
    
    case PS_FIRST_JUMP:
    if fspec_jc && state_timer < 30 {
        sprite_index = sprite_get("uspecial")
        image_index = 2 + floor(state_timer/6)
    } else {
        sprite_index = sprite_get("jump")
        fspec_jc = false
    }
    break;
    
    default: break;
}