switch (state)
{
    case PS_IDLE:
        if (nspecial_postfail) { sprite_index = sprite_get("idle_alt"); }
        else if (idle_wait)
        { 
            sprite_index = sprite_get("idle_wait");
            image_index = floor(idle_count / 5);
        }
        else
        {
            sprite_index = sprite_get("idle");
            image_index = floor(idle_count / 5);
        }
        break;
    
    case PS_DOUBLE_JUMP:
        if (djump_isBack) { sprite_index = sprite_get("doublejump_back"); }
        break;
        
    //Intro Animation
    case PS_SPAWN:
        if (intro_timer < intro_timerMax && intro_timer >= 0) 
        {
            sprite_index = sprite_get("intro");
            image_index = floor(intro_timer);
        } 
        else if (intro_timer < 0) 
        {
            sprite_index = sprite_get("intro");
            image_index = 0;
        } 
        else 
        {
            sprite_index = sprite_get("idle");
        }
        break;
    
    case PS_HITSTUN_LAND:
        sprite_index = hurtground_sprite;
        break;
    
    default: break;
}