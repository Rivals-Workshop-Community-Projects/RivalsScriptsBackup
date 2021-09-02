var col = c_white;
with (player_id)
    col = make_color_rgb(get_color_profile_slot_r(get_player_color(player), 4),
    get_color_profile_slot_g(get_player_color(player), 4),
    get_color_profile_slot_b(get_player_color(player), 4));
gpu_set_blendmode(bm_add)
draw_sprite_ext(spr_index, image_index, round(x), round(y), image_xscale, image_yscale, image_angle, col, 1);
gpu_set_blendmode(bm_normal)
