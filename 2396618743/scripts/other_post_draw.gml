// OTHER POST DRAW


if terrafreeze > 0 && terrafreeze_player == other_player_id.player{
    shader_start();
    draw_sprite_ext(other_player_id.freeze, 0, x, y-48, 1, 1, 0 , c_white, .5);
    draw_sprite_ext(other_player_id.freezeAnim, floor(freezeAnimTimer), x, y-48, 1, 1, 0 , c_white, 1);
    shader_end();
}

if terrabury > 0 && terrabury_player == other_player_id.player{
    shader_start();
    draw_sprite_ext(other_player_id.bury, 0, x, y-16, 1, 1, 0 , c_white, 1);
    shader_end();
}