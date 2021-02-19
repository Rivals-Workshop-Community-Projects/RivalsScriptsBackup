shader_start();
if (get_player_color(player) == 15){
    g7fx_timer += 0.15;
    draw_sprite(sprite_get("G7_Effect"), g7fx_timer % 14, x - 45, y - 76)
}
shader_end();