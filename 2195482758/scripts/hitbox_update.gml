//hitbox update
if(was_parried)
{
    reflected = true;
    transcendent = true;
    
    // if(attack == AT_NSPECIAL && hbox_num == 1)
    // {
    //     if(parrybox != noone)
    //     {
    //         if(instance_exists(parrybox))
    //         {
    //             parrybox.transcendent = true;
    //         }
    //     }
    // }
}

// Bunt stuff
// if(is_bunt){
//     if(abs(hsp) + abs(vsp) > 8){
//         hsp-=.3*sign(hsp);
//         vsp-=.3*sign(vsp);
//     }
// }


// Parrybox [disabled]
// if(attack == AT_NSPECIAL && hbox_num == 1)
// {
//     if(instance_exists(parrybox))
//     {
//         parrybox.x = x;
//         parrybox.y = y;
//         parrybox.transcendent = transcendent;
//         parrybox.hitbox_timer = hitbox_timer;
//     }
//     else if(!was_parried)
//     {
//         destroyed = true;
//     }
    
//     // Parry
//     var parrier = collision_circle(x, y, 50, oPlayer, false, true);
    
//     if(parrier != noone && parrier.player != player)
//     {
//         if(parrier.state == PS_PARRY && parrier.window == 1)
//         {

            
//             var hbox = noone;
            
//             // Simulate a parry 
//             with(player_id)
//             {
//                 set_hitbox_value(AT_NSPECIAL,3,HG_WIDTH,2);
//                 set_hitbox_value(AT_NSPECIAL,3,HG_HEIGHT,2);
//                 set_hitbox_value(AT_NSPECIAL,3,HG_LIFETIME,1);
//                 set_hitbox_value(AT_NSPECIAL,3,HG_PROJECTILE_IS_TRANSCENDENT,1);
                
//                 hbox = create_hitbox(AT_NSPECIAL,3,parrier.hurtboxID.x,parrier.hurtboxID.y);
                
//                 reset_hitbox_value(AT_NSPECIAL,3,HG_WIDTH);
//                 reset_hitbox_value(AT_NSPECIAL,3,HG_HEIGHT);
//                 reset_hitbox_value(AT_NSPECIAL,3,HG_LIFETIME);
//                 reset_hitbox_value(AT_NSPECIAL,3,HG_PROJECTILE_IS_TRANSCENDENT);
//             }
            
//             // Handle reflects
//             if(was_parried)
//             {
//                 hbox.was_parried = true;
//                 hbox.player = player;
//             }
 
            
//             // Set parried
//             was_parried = true;
//             player = parrier.player;
//             reset = false;
//             currentPlayer = parrier;
//             parrybox.was_parried = true;
//             parrybox.player = player;
//             parrybox.transcendent = true;
//         }
//     }
// }