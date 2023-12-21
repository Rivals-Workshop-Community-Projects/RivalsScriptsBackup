// animation


// Intro stuff
if (state == PS_SPAWN) {
    if (introTimer < 13 && introTimer >= 0) {
        sprite_index = sprite_get("intro");
        image_index = introTimer;
    } else if (introTimer < 0) {
        sprite_index = sprite_get("intro");
        image_index = 0;
    } else {
        sprite_index = sprite_get("idle");
    }
}



switch(state)
{
    case PS_JUMPSQUAT:
    {
        if(in_bubble_jumpsquat)
        {
            sprite_index = sprite_get("jumpstart_bubble");
        }
        break;
    }
        
    // IDLE TWEAKS
    case PS_IDLE:
    {
        switch(idleState)
        {
            case 0:
            {
                if(state_timer > 53)
                {
                    sprite_index = sprite_get("idle");
                    if(state_timer % 53 == 0)
                    {
                        idleState = (random_func(10,4,true) != 0) ? 0 : random_func(11,5,true);
                        idleState = clamp(idleState,0,4);
    
                        if(idleState != 0)
                        {
                            set_state(PS_IDLE);
                        }
                    }
                }
            }
            break;
            case 1:
            {
                sprite_index = sprite_get("idle_tweak1");
                if(state_timer >= 53)
                {
                    idleState = 0;
                    set_state(PS_IDLE);
                }
            }
            break;
            case 2:
            {
                sprite_index = sprite_get("idle_tweak2");
                if(state_timer >= 53)
                {
                    idleState = 0;
                    set_state(PS_IDLE);
                }
            }
            break;
            case 3:
            {
                sprite_index = sprite_get("idle_tweak3");
                if(state_timer >= 53)
                {
                    idleState = 0;
                    set_state(PS_IDLE);
                }
            }
            break;
            case 4:
            {
                sprite_index = sprite_get("idle_tweak4");
                if(state_timer >= 53)
                {
                    idleState = 0;
                    set_state(PS_IDLE);
                }
            }
            break;
    }
   
   // idleState
   // 0 - Basic Idle
   // 1 - Head Turn
   // 2 - Stand Up
   // 3 - Sneeze
   // 4 - Twirl
}
}

if(state != PS_IDLE)
{
    idleState = 0;
}

// HUD offset rounding
if abs(hud_offset) < 1 hud_offset = 0;