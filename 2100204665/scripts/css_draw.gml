if (get_player_color(player) != 0){
    draw_sprite(sprite_get("charselect"), 1, x + 8, y + 8);
}
if(get_player_color(player) == 6){
  draw_sprite_ext(sprite_get("cssextras"), 1, x + 176, y + 110, 1, 1, 0, c_white, 1);
}
// Early Access
if(get_player_color(player) == 7){
  draw_sprite_ext(sprite_get("cssextras"), 3, x + 176, y + 110, 1, 1, 0, c_white, 1);
}
// Little Star
if(get_player_color(player) == 8){
  draw_sprite_ext(sprite_get("cssextras"), 6, x + 176, y + 110, 1, 1, 0, c_white, 1);
}
if(get_player_color(player) == 18){
  draw_sprite_ext(sprite_get("cssextras"), 0, x + 176, y + 110, 1, 1, 0, c_white, 1);
}