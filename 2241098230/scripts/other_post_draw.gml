if (smoked) {
    //Make the player smoky.
    if (instance_exists(smoked_id)) {
        var smoke_r = 0;
        var smoke_g = 0;
        var smoke_b = 0;
        
        with (smoked_id) {
            smoke_r = get_color_profile_slot_r(get_player_color(player), 6)
            smoke_g = get_color_profile_slot_g(get_player_color(player), 6)
            smoke_b = get_color_profile_slot_b(get_player_color(player), 6)
        }
        
        var smoke_col = make_color_rgb(smoke_r, smoke_g, smoke_b);
        gpu_set_fog(1, smoke_col, 0, 1);
            draw_sprite_ext(sprite_index, image_index, round(x) + draw_x, round(y) + draw_y, (small_sprites ? 2 : 1) * image_xscale, (small_sprites ? 2 : 1) * image_yscale, spr_angle, c_white, 0.5)
        gpu_set_fog(0, c_black, 0, 1);
    }
}