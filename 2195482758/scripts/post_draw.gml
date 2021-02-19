// Post draw
if (land_dust_timer >= 0 && land_dust_timer < 24) {
    draw_sprite_ext(asset_get("fx_land_bg"), floor(image_number*(land_dust_timer - 0)/(image_number*3)),
    (x - 0*spr_dir), y, 2*spr_dir, 2, 0,
    make_colour_rgb(get_color_profile_slot_r(get_player_color(player), 0), get_color_profile_slot_g(get_player_color(player), 0), get_color_profile_slot_b(get_player_color(player), 0)), 1);
}

user_event(12);