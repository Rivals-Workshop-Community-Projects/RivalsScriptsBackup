switch (state){
    case PS_IDLE:
        //code here can change the sprite_index and image_index while in the idle state
    break;
    case PS_DASH_START:
        if (get_player_color(player) == 7)
        sprite_index = sprite_get("dashstart_ea")
    break;
    case PS_DASH:
        if (get_player_color(player) == 7)
        {
            if (state_timer >= 38)
            state_timer = 0; //put so that animation loops properly
            sprite_index = sprite_get("dash_ea")
        }
    break;
    case PS_DASH_STOP:
        if (get_player_color(player) == 7)
        sprite_index = sprite_get("dashstop_ea")
    break;
    case PS_DASH_TURN:
        if (get_player_color(player) == 7)
        sprite_index = sprite_get("dashturn_ea")
    break;
    case PS_ATTACK_GROUND:
        switch(attack)
        {
            case AT_DSTRONG:
                if (get_player_color(player) == 7)
                {
                    sprite_index = sprite_get("dstrong_ea")
                }
                break;
            case AT_USTRONG:
                if (get_player_color(player) == 7)
                {
                    sprite_index = sprite_get("ustrong_ea")
                }
                break;
            case AT_FSPECIAL:
                if (get_player_color(player) != 7)
                {
                    if (shrimp == 1)
                    {
                        sprite_index = sprite_get("fspecial_shrimp")
                    }
                }
                else if (get_player_color(player) == 7)
                {
                    if (shrimp == 1)
                    {
                        sprite_index = sprite_get("fspecial_shrimp_ea")
                    }
                    else
                    {
                        sprite_index = sprite_get("fspecial_ea")
                    }
                }
                break;
        }
    break;
    case PS_ATTACK_AIR:
        switch(attack)
        {
            case AT_DSTRONG:
                if (get_player_color(player) == 7)
                {
                    sprite_index = sprite_get("dstrong_ea")
                }
                break;
            case AT_FSPECIAL:
                if (get_player_color(player) != 7)
                {
                    if (shrimp == 1)
                    {
                        sprite_index = sprite_get("fspecial_air_shrimp")
                    }
                }
                else if (get_player_color(player) == 7)
                {
                    if (shrimp == 1)
                    {
                        sprite_index = sprite_get("fspecial_air_shrimp_ea")
                    }
                    else
                    {
                        sprite_index = sprite_get("fspecial_air_ea")
                    }
                }
                break;
        }
    break;
    
    default: break;
}
