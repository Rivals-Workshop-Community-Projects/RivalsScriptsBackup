// //
// if hit_player_obj.state != (PS_ATTACK_GROUND || PS_ATTACK_AIR)
// {
//     if my_hitboxID.attack == AT_FAIR && my_hitboxID.hbox_num == 4
//     {
       
//         time_b4hit = 20;
        
//         my_hitboxID.hitpause = true;
//         my_hitboxID.hitstop = hitpause+dammage;
//         with obj_article1
//         {
//             hitpause = true;
//             hitstop = 20;
//             state = 2;
//             state_timer = 0;
            
//         }
//         /*for(var i = 0; i < 20; i++) 
//         {
//             if time_b4hit = 0
//             {
//                 if hit_player.hitpause = false
//                 {
//                 my_hitboxID.can_hit[i] = true;
//                 }
//             }
//         }*/
//         my_hitboxID.length = 1;
//     }
// }


//hit_player.gml
if (my_hitboxID.attack == AT_FSPECIAL){
    if (window == 2 && grabbedid == noone){
        hit_player_obj.grabbed = 1;
        grabbedid = hit_player_obj;
		grabbedid.ungrab = 0;
    }

}