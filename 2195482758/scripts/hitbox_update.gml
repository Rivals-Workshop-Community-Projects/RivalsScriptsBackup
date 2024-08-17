//hitbox update
if(was_parried)
{
    reflected = true;
    
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

// if(attack == AT_NSPECIAL && hbox_num == 1 && hitbox_timer < player_id.fc_lifetime-1)
// {
// 	var OverlapRadius = 40;
// 	var hitfc = num_fc;
// 		with(pHitBox)
// 		{
// 		    if(player_id == other.player_id)
//     		{
//     		    if(attack == AT_DATTACK || attack == AT_FSTRONG || attack == AT_JAB || attack == AT_FTILT || attack == AT_DTILT || attack == AT_UTILT || attack == AT_DSTRONG || attack == AT_USTRONG || attack == AT_FAIR || attack == AT_BAIR ||
//     		    attack == AT_DAIR || attack == AT_UAIR || attack == AT_NAIR)
//     		    {
//         			// Custom collision code (hopefully a bit more effecient), just treats everything like circles
//         			var width = image_xscale * 100;
//         			var height = image_yscale * 100;
//         			var PointsDistance = point_distance(x,y,other.x,other.y);
//         			var OverlapDistance = max(0,PointsDistance - OverlapRadius - ((width+height)*0.5))
        
//         			if(OverlapDistance == 0 && variable_instance_exists(self, "player_id"))
//         			{
//         			    other.hitbox_timer = player_id.fc_lifetime-1;
        			    
//         			    with(player_id)
//         			    {
//                 			// Artificial hit
//                 			sound_play( asset_get("sfx_blow_heavy1") );
//                             spawn_hit_fx( x, y, 301 );
                            
//             	    		prev_vsp = vsp;
//             	    		prev_hsp = hsp;
//                             hitstop_full = 3;
//             	    		hitstop = 3;
//             	    		hitpause = true;
//             	    		hit_fc = hitfc;
              			
//         			    }
//         			}
//     		    }
// 		    }
// 		}
// }


// if(set_transcendent)
// {
//     set_transcendent = false;
    
//     transcendent = true;
    
//     if(sprite_index == sprite_get("firecracker_single_nooutline")) sprite_index = sprite_get("firecracker_single");
//     if(sprite_index == sprite_get("firecracker_double_nooutline")) sprite_index = sprite_get("firecracker_double");
//     if(sprite_index == sprite_get("firecracker_triple_nooutline")) sprite_index = sprite_get("firecracker_triple");
    
//     if(sprite_index == sprite_get("firecracker_single_spin_nooutline")) sprite_index = sprite_get("firecracker_single_spin");
//     if(sprite_index == sprite_get("firecracker_double_spin_nooutline")) sprite_index = sprite_get("firecracker_double_spin");
//     if(sprite_index == sprite_get("firecracker_triple_spin_nooutline")) sprite_index = sprite_get("firecracker_triple_spin");
    
//     if(sprite_index == sprite_get("firecracker_single_bunt_nooutline")) sprite_index = sprite_get("firecracker_single_bunt");
//     if(sprite_index == sprite_get("firecracker_double_bunt_nooutline")) sprite_index = sprite_get("firecracker_double_bunt");
//     if(sprite_index == sprite_get("firecracker_triple_bunt_nooutline")) sprite_index = sprite_get("firecracker_triple_bunt");
// }

// if(transcendent && hitbox_timer >= player_id.fc_lifetime*0.5)
// {
//     transcendent = false;
    
//     if(sprite_index == sprite_get("firecracker_single")) sprite_index = sprite_get("firecracker_single_nooutline");
//     if(sprite_index == sprite_get("firecracker_double")) sprite_index = sprite_get("firecracker_double_nooutline");
//     if(sprite_index == sprite_get("firecracker_triple")) sprite_index = sprite_get("firecracker_triple_nooutline");
    
//     if(sprite_index == sprite_get("firecracker_single_spin")) sprite_index = sprite_get("firecracker_single_spin_nooutline");
//     if(sprite_index == sprite_get("firecracker_double_spin")) sprite_index = sprite_get("firecracker_double_spin_nooutline");
//     if(sprite_index == sprite_get("firecracker_triple_spin")) sprite_index = sprite_get("firecracker_triple_spin_nooutline");
    
//     if(sprite_index == sprite_get("firecracker_single_bunt")) sprite_index = sprite_get("firecracker_single_bunt_nooutline");
//     if(sprite_index == sprite_get("firecracker_double_bunt")) sprite_index = sprite_get("firecracker_double_bunt_nooutline");
//     if(sprite_index == sprite_get("firecracker_triple_bunt")) sprite_index = sprite_get("firecracker_triple_bunt_nooutline");
// }

// [TEMP]
// if(sprite_index == sprite_get("firecracker_single_nooutline")) sprite_index = sprite_get("firecracker_single");
// if(sprite_index == sprite_get("firecracker_double_nooutline")) sprite_index = sprite_get("firecracker_double");
// if(sprite_index == sprite_get("firecracker_triple_nooutline")) sprite_index = sprite_get("firecracker_triple");

// if(sprite_index == sprite_get("firecracker_single_spin_nooutline")) sprite_index = sprite_get("firecracker_single_spin");
// if(sprite_index == sprite_get("firecracker_double_spin_nooutline")) sprite_index = sprite_get("firecracker_double_spin");
// if(sprite_index == sprite_get("firecracker_triple_spin_nooutline")) sprite_index = sprite_get("firecracker_triple_spin");

// if(sprite_index == sprite_get("firecracker_single_bunt_nooutline")) sprite_index = sprite_get("firecracker_single_bunt");
// if(sprite_index == sprite_get("firecracker_double_bunt_nooutline")) sprite_index = sprite_get("firecracker_double_bunt");
// if(sprite_index == sprite_get("firecracker_triple_bunt_nooutline")) sprite_index = sprite_get("firecracker_triple_bunt");


// var enemybox = noone;

// enemybox = collision_circle(x,y,40,pHitBox,false,true)

// if(enemybox != noone && !bouncereflect)
// {
//     if(enemybox.player_id != player_id)
//     {
//         bouncereflect = true;
//         is_spin = false;
        
//         hitbox_timer = 0;
        
//         sprite_index = num_fc == 1 ? sprite_get("firecracker_single_bunt") :  num_fc == 2 ? sprite_get("firecracker_double_bunt") : sprite_get("firecracker_triple_bunt");

 
        
//         image_xscale = 0;
//         image_yscale = 0;
        
//         hitboxresettimer = 20;
        
//         parrybox = create_hitbox(AT_NSPECIAL,3,floor(x),floor(y));
//         parrybox.transcendent = true;
    

//         enemybox.player_id.hitstop = 3;
//         enemybox.player_id.hitpause = true;
//         enemybox.player_id.old_vsp = enemybox.player_id.vsp;
//         enemybox.player_id.old_hsp = enemybox.player_id.hsp;
        
//         with(player_id) { spawn_hit_fx(other.x,other.y,19); sound_play( sound_get( "tenru_fc_bunt" ) );}
//     }
// }

// if(hitboxresettimer > 0)
// {
//     hitboxresettimer--;
    
//     if(hitboxresettimer == 0)
//     {
//         image_xscale = 40/200;
//         image_yscale = 40/200;
//     }
    
//     if(hitboxresettimer == 16)
//     {
//         hsp = sign(x-enemybox.player_id.x) * -3;
//         vsp = -11;
//     }
//     else if(hitboxresettimer > 16)
//     {
//         hsp = 0;
//         vsp = 0;
//     }
// }

// Bunt stuff
// if(is_bunt){
//     if(abs(hsp) + abs(vsp) > 8){
//         hsp-=.3*sign(hsp);
//         vsp-=.3*sign(vsp);
//     }
// }


// Parrybox [disabled]
// if(attack == AT_NSPECIAL && hbox_num == 1 && bouncereflect)
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