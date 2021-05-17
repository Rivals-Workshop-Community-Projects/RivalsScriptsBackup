// OTHER PRE DRAW


if terrafreeze > 0 && terrafreeze_player == other_player_id.player{
    shader_start();
    draw_sprite_ext(other_player_id.freeze, 0, x, y-48, 1, 1, 0 , c_white, 1);
    shader_end();
}

