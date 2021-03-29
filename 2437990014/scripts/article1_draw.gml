//anim1
draw_sprite_ext(sprite_get("anim1"), anim1_index, x + 185 + temp_x, y + 464 + temp_y, 2, 2, 0, c_white, 1);
draw_sprite_ext(sprite_get("anim2"), anim2_index, x + 140 + temp_x, y + 245 + temp_y, 2, 2, 0, c_white, 1);
draw_sprite_ext(sprite_get("anim3"), anim3_index, x + 1155 + temp_x, y + 495 + temp_y, 2, 2, 0, c_white, 1);
draw_sprite_ext(sprite_get("anim14"), anim14_index, x + 1250 + temp_x + a14_xOff, y + 462 + temp_y + a14_yOff, 2, 2, 0, c_white, 1);
draw_sprite_ext(sprite_get("anim14_cover"), 0, x + 1205 + temp_x, y + 488 + temp_y, 2, 2, 0, c_white, 1);
draw_sprite_ext(sprite_get("anim15_backdust"), 0, x + 1355 + temp_x + a15b_xOff, y + 400 + temp_y, 2, 2, 0, c_white, 1);
if(!is_aether_stage()){
    draw_sprite_ext(sprite_get("anim15"), 0, x + temp_x + a15_xOff, y + temp_y + a15_yOff, 2, 2, 0, c_white, 1);
}