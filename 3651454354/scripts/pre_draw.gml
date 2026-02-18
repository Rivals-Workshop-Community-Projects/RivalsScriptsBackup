if not active_effect = 0{
if active_effect = 2 or active_effect = 11 or active_effect = 4{
gpu_set_fog(1, c_aqua, 0, 1);
}
if active_effect = 5 or active_effect = 9 or active_effect = 7{
gpu_set_fog(1, c_red, 0, 1);
}
if active_effect = 3 or active_effect = 5 or active_effect = 10 or active_effect = 6{
gpu_set_fog(1, c_gray, 0, 1);
}

draw_sprite_ext(sprite_index, image_index, x+2, y, (image_xscale + small_sprites), (image_yscale + small_sprites), image_angle, image_blend, image_alpha);
draw_sprite_ext(sprite_index, image_index, x-2, y, (image_xscale + small_sprites), (image_yscale + small_sprites), image_angle, image_blend, image_alpha);
draw_sprite_ext(sprite_index, image_index, x, y+2, (image_xscale + small_sprites), (image_yscale + small_sprites), image_angle, image_blend, image_alpha);
draw_sprite_ext(sprite_index, image_index, x, y-2, (image_xscale + small_sprites), (image_yscale + small_sprites), image_angle, image_blend, image_alpha);
}
gpu_set_fog(0, c_black, 0, 0);
if (state == PS_RESPAWN){ draw_sprite(sprite_get("plat_pre"), 1, x, y,)}