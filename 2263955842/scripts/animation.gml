switch (state){
    case PS_IDLE:
    case PS_RESPAWN:
    case PS_SPAWN:
        image_index = floor(image_number*state_timer/(image_number*6.5));
    break;
    
    case PS_WALK:
        //image_index = floor(image_number*state_timer/(image_number*5));
    break;
}



if (!has_rune("A"))
{
    if (state == PS_DASH_START) or (state == PS_DASH) 
    {
        hurtboxID.sprite_index = sprite_get("dash_hurtbox");
    }
    if( state == PS_IDLE) or ( state == PS_WALK) or (state == PS_JUMPSQUAT) or (state == PS_DASH_STOP) or (state == PS_DASH_TURN)  or (state == PS_IDLE_AIR)
    {
        hurtboxID.sprite_index = sprite_get("hurtbox");
    }
}

if (has_rune("O"))
{
    if (state_cat == SC_HITSTUN)
    {
        invincible = true;
        invince_time = 1;
    }
    
}




if (state == PS_IDLE_AIR) and ((prev_state == PS_AIR_DODGE) or (prev_state == PS_ATTACK_AIR))
{
    image_index = 5;
}



if (is_fumo)
{
    sprite_index = sprite_get("fumo")
}


