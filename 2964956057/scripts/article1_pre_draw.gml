// rainbow code
if get_player_color(player) == 3{
    for (var e = 0; e < array_length(particles); e++){
        var p = particles[e];
        gpu_set_fog(1, p[5], 1, 0);
        draw_sprite_ext(p[0], p[8], p[6], p[7], p[9], 1, 0, p[5], p[1]);
        gpu_set_fog(0, p[5], 0, 1);
    }
}

// trans flag!!!
if get_player_color(player) == 4{
    draw_sprite_ext(sprite_get("save_trans_outline"), image_index, x - (14 * spr_dir), y - 38, spr_dir, 1, 0, c_white, 1);
}