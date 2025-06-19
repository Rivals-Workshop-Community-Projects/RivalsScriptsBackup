// post_draw.gml

gpu_set_blendmode(bm_add);
shader_start();

if create_chair_flash_opacity > 0 {
  draw_sprite_ext(sprite_index, image_index, x, y, 2*spr_dir, 2, spr_angle, c_white, create_chair_flash_opacity);
  create_chair_flash_opacity -= 0.05;
}

shader_end();
gpu_set_blendmode(bm_normal);


// maskHeader();
// draw_sprite_ext(sprite_index, image_index, x, y, spr_dir * (small_sprites + 1), small_sprites + 1, spr_angle, c_white, 0.7);
// maskMidder();
// draw_sprite_ext(sprite_get("gold_shine"), state_timer / 4, x, y + 314 + ((get_gameplay_time() % 100 * -4)), small_sprites + 1, small_sprites + 1, spr_angle, c_white, 0.7);
// maskFooter();

// #define maskHeader
// {
//     //this saves some gpu data, it's used to allow us to draw masks safetly without breaking anything
//     //as we later reset the state
//     gpu_push_state();
    
//     //set the mask to take effect on pretty much everything in the room
//     //below this function, add the MASK
//     gpu_set_alphatestenable(false);
//     gpu_set_blendenable(false);
//     gpu_set_colorwriteenable(false, false, false, true);
//     draw_set_alpha(0);
//     draw_rectangle_color(-200 ,-200 , room_width + 200, room_height + 200, c_white, c_white, c_white, c_white, false);
//     draw_set_alpha(1);
// }
// #define maskMidder
// {
//     //sets the thing underneath the mask to be drawn
//     //below this function, add the TEXTURE
//     gpu_set_blendenable(true);
//     gpu_set_colorwriteenable(true,true,true,true);
//     gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
//     gpu_set_alphatestenable(true);
// }
// #define maskFooter
// {
//     //playtest zone fix by frtoud
//     //this piece of code essencially cancels out the black void in playtest when using masks
//     if (object_index == oTestPlayer)
//     {
//         gpu_set_blendenable(false);
//         gpu_set_alphatestenable(false);
//         gpu_set_colorwriteenable(false, false, false, true);
//         draw_rectangle_color(-200 ,-200 , room_width + 200, room_height + 200, c_white, c_white, c_white, c_white, false);
//     }
//     //gpu state reset, restores everything back to normal
//     gpu_pop_state();
// }