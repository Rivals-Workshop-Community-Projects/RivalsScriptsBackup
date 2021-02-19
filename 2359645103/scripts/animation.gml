switch (state){
    case PS_IDLE:
        //code here can change the sprite_index and image_index while in the idle state
    break;
    
    case PS_CROUCH:
        if (kk_crouch_timer >= 60)
        {
            sprite_index = sprite_get("taunt2");
            image_index = floor((kk_crouch_timer % 30) / 8);
        }
    break;
    
    case PS_RESPAWN:
        sprite_index = sprite_get("respawn");
        image_index = floor((state_timer % 30) / 15);
    break;
    
    case PS_SPAWN:
        var frame = state_timer / 6;
        if(frame < 14){
            sprite_index = sprite_get("spawn");
            image_index = floor(frame);
        }
        break;
    
    case PS_PARRY:
        if (state_timer <= 1)
            image_index = 1;
        else if (state_timer <= 19)
            image_index = 2;
        else if (state_timer <= 24)
            image_index = 3;
        else
            image_index = 4;
    break;
    
    case PS_ROLL_FORWARD:
        image_index = floor((state_timer-1) / 7);
    break;
    case PS_ROLL_BACKWARD:
        image_index = floor((state_timer-1) / 7);
    break
    
    case PS_TECH_FORWARD:
        image_index = floor((state_timer-1) / 7);
    break;
    case PS_TECH_BACKWARD:
        image_index = floor((state_timer-1) / 7);
    break
    
    case PS_DASH:
        if(get_player_color(player) == 5){
            sprite_index = sprite_get("run2");
            image_index = floor((state_timer % 36) / 3)
        }
    break
    case PS_DASH_START:
        if(get_player_color(player) == 5){
            sprite_index = sprite_get("run2");
            image_index = floor((state_timer % 36) / 3)
        }
    break
    
    default: break;
}