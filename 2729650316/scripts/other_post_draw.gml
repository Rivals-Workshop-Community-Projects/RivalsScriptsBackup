// // afterimage
// if(instance_exists(other_player_id))
// {
//     if(instance_exists(other_player_id.grabbed_player_obj))
//     {
//         if(other_player_id.grabbed_player_obj == id)
//         {
//             shader_start();
//             if(other_player_id.attack == AT_USTRONG && other_player_id.window >= 4 && other_player_id.window <= 6)
//             {  
//                 if(kinniku_front)
//                 {
//                     spr = draw_sprite_ext(kinniku_front,0,floor(other_player_id.x),floor(other_player_id.y+30),(1+small_sprites)*other_player_id.spr_dir,1+small_sprites,0,c_white,1)
//                 }
//             }
//             shader_end();
//         }
//     }
// }