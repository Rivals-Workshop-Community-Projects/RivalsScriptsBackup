// pre-draw

//fspecial ring
var _slot = get_player_color(player)
var _col = make_color_rgb(get_color_profile_slot_r(_slot, 0),get_color_profile_slot_g(_slot, 0),get_color_profile_slot_b(_slot, 0))
gpu_set_alphatestenable(true);
gpu_set_fog(1, _col, 0, 1);

with pHitBox if player_id  == other.id {
    if (attack == AT_FTILT /*| attack == AT_NSPECIAL*/) && hbox_num == 1 {
        for (var i = 0; i < array_length(pos_array); i++) {
            draw_sprite_ext(sprite_index, 0, pos_array[i][0], pos_array[i][1], spr_dir, 1, proj_angle, c_white, pos_array[i][2])
        }
    }
}

gpu_set_fog(0, c_white, 0, 0);
gpu_set_alphatestenable(false);
