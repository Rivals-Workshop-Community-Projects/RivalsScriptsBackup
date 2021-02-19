if (sprite_index = asset_get("empty_sprite")) {
    draw_set_alpha(lerp(1, 0, (timer - 60) / 60));
    draw_rectangle_color(0, 0, room_width, room_height, c_white, c_white, c_white, c_white, false);
    draw_set_alpha(1);
}
else if (sprite_index == sprite_get("fx_shock2")) {
    gpu_set_blendmode(bm_add);
    draw_sprite_ext(sprite_index, 1, x, y, image_xscale, image_yscale, 0, c_white, image_alpha);
    gpu_set_blendmode(bm_normal);
}