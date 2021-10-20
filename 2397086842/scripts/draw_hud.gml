///
shader_start();


//draw_sprite_ext(sprite_get("hud"), sagemode, temp_x + 139, temp_y - 32,1.1,1.1,0,-1, 0.5);
//draw_sprite(sprite_get("hud"), sagemode, temp_x + 142, temp_y - 30);
//
//if sagemode == 5 or sagemode == 6 {
//    if get_gameplay_time() % 6 < 2 {
//        draw_sprite_ext(sprite_get("hud"), 6, temp_x + 139, temp_y - 32,1,1,0,-1, 0.5);
//    }
//}
//
//if sagemode == 6 {
//    if get_gameplay_time() % 6 > 2 {
//        draw_sprite_ext(sprite_get("hud"), 7, temp_x + 139, temp_y - 32,1,1,0,-1, 0.5);
//    }
//}


shader_end() 


//go and declare debug variable in init


//further y positions should go up in multiples of 16 from 64

/*
if voiced == 1 && get_gameplay_time() <= 200{
       draw_debug_text(temp_x,temp_y - 15,"Taunt to disable Extra sfx .");
}

if voiced == 0 && get_gameplay_time() <= 120{
       draw_debug_text(temp_x,temp_y - 15,"Extra sfx disabled.");
}
*/

if voiced == 0 && get_gameplay_time() <= 200{
       draw_debug_text(temp_x,temp_y - 15,"Taunt to enable Extra sfx.");
}

if voiced == 1 && get_gameplay_time() <= 120{
       draw_debug_text(temp_x,temp_y - 15,"Extra sfx enabled.");
}