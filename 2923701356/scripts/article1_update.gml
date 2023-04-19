article1_timer += 1;
state_timer += 1;
//print(state);
can_be_grounded = (vsp >= 0 && !free);
switch ( state )
{
    // case 1:
    // case 2:
    // // time = 9;
    // image_index = state - 1;
    // if ( state == 1 and state_timer >= 9 )
    // {
    //     state = 2;
    //     state_timer = 0;
    // }

    // if !free
    // {
    //     //print("LOL")
    //     state = 3;
    //     state_timer = 0;
    //     mask_index = sprite_get("nspecial_proj_mask_idle");
    // }
    // break;
    
    case 3: // state 3 will be when it lands
    //time = 27;
    // if move_up_timer >= 0
    // {
    //     move_up_timer-=1;
    //     y-=2;
    // }
    var temp_x = x;
    var temp_y = y;
    if ( state_timer == 16 )
    {
        with ( player_id )
        {
            create_hitbox( AT_NSPECIAL_2 , 1 , temp_x , temp_y - 32 );
        }
    }
    image_index = 1 + ( state_timer / 9 );
    if ( state_timer >= 108 ) { state = 4; state_timer = 0; }
    break;
    
    case 4: // state 4 will be idle
    //time is until article needs to die
    image_index = 13;
    
    if article1_timer > article1_total_timer - 100 and image_alpha >= 0.98
    {
        image_alpha = 0.4
    }
    
    image_alpha = lerp(image_alpha, 1, 0.2);
    
    if ( article1_timer == article1_total_timer ) { state = 5; state_timer = 0; }
    break;
    
    case 5: // state 5 will be destroying
    //uses state timer
    instance_destroy ( self );
    break; 
    
    default:
    break;
    
    // state 5 doesn't exist, but if it were to exist, it would be gameing :)
}