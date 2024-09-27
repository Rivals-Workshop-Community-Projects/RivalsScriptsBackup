//results_draw_portrait.gml

if ("real_timer" not in self) real_timer = 0;
real_timer ++;

//byakuren alt
if (get_player_color(player) == 10)
{
    draw_sprite_ext(sprite_get("ex1_portrait"), 0, portrait_x, portrait_y, 2, 2, 0, c_black, 1);
    draw_sprite_ext(sprite_get("ex1_portrait"), 0, portrait_x, portrait_y, 2, 2, 0, c_white, (real_timer - 50)/90);
}