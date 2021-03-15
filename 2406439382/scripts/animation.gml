var idle_ref = 0;
var dash_ref = 0;


switch (state){
    case PS_IDLE:
        switch(prev_prev_state)
        {
            case PS_WALK_TURN:
                var idle_ref = 2;
            break;
        }
        
        
        switch(prev_state)
        {
            case PS_WAVELAND:
            case PS_CROUCH:
                var idle_ref = 9;
            break;
            case PS_DASH_STOP:
                var idle_ref = 8;
            break;
            case PS_DASH_START:
                var idle_ref = 5;
            break;
            case PS_LAND:
            
                var idle_ref = 2;
            break;
            case PS_LANDING_LAG:
                var idle_ref = 1;
            break;
            case PS_PARRY:
                var idle_ref = 1;
            break;
            case PS_ATTACK_GROUND:
                switch (attack)
                {
                    case AT_NSPECIAL:
                    case AT_FSTRONG:
                    case AT_USPECIAL:
                        var idle_ref = 1;
                    break;
                    case AT_DATTACK:
                    case AT_FTILT:
                        var idle_ref = 2;
                    break;
                    case AT_USTRONG:
                        var idle_ref = 10;
                    break;
                    case AT_TAUNT:
                    case AT_FSPECIAL:
                    case AT_DSTRONG:
                    case AT_DTILT:
                    case AT_UTILT:
                        var idle_ref = 9;
                    break;
                    case AT_JAB:
                        switch(last_jab)
                        {
                            case 1:
                                var idle_ref = 0;
                            break;
                            case 2:
                                var idle_ref = 9;
                            break;
                        }
                    break;
                }
            break;
        }
        
    
        image_index = idle_ref + state_timer * idle_anim_speed;
    break;
    case PS_DASH:
        switch(prev_state)
        {
            case PS_DASH_TURN:
                var dash_ref = 3;
            break;
            
        }
        image_index = dash_ref + state_timer * dash_anim_speed;
    break;
    default: break;
}


if (((state == PS_ATTACK_GROUND) or (state == PS_ATTACK_AIR)) and (attack == AT_USPECIAL))
{
    if (window == 4) and (window_timer == 0)
    {
        if (can_effect)
        {
            spawn_hit_fx( x, y - 36, come_effect ); // here so it play at seija's pose and nit the yinyang one
            can_effect = false;
        }
    }
    
}



// idle air
if (state == PS_IDLE_AIR) and ((prev_state == PS_AIR_DODGE) or (prev_state == PS_ATTACK_AIR))
{
    image_index = image_number - 1;
}