//fully charged pead pod
var player_col = get_player_color(player)
var col = make_color_rgb(get_color_profile_slot_r(player_col, 0), get_color_profile_slot_g(player_col, 0), get_color_profile_slot_b(player_col, 0))
if (nspecial_charge = 4) && timer mod 60 < 12 {
    gpu_set_fog(1, col, 0, 1);
	draw_sprite_ext(sprite_index, image_index, x+2, y, spr_dir, 1, 0, c_white, 1)
    draw_sprite_ext(sprite_index, image_index, x-2, y, spr_dir, 1, 0, c_white, 1)
    draw_sprite_ext(sprite_index, image_index, x, y+2, spr_dir, 1, 0, c_white, 1)
    draw_sprite_ext(sprite_index, image_index, x, y-2, spr_dir, 1, 0, c_white, 1)
}

gpu_set_fog(0, c_white, 0, 0);
gpu_set_alphatestenable(false);