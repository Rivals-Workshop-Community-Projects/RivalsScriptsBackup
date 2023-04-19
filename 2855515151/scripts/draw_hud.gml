
/*
if ("hat_object" not in self) exit;

//draw_sprite_ext(sprite_get("hud"), get_gameplay_time() / 9.4, temp_x + 28, temp_y-18, 2, 2, 0, c_white, 1);
draw_sprite_ext(sprite_get("hud"), 0, temp_x + 48, temp_y + 2, 2, 2, 0, c_white, 1);

//for (var icon = 0; icon < 3; ++icon)
//    draw_sprite_ext(sprite_get("hudslots2"), items[icon], temp_x + 30 + (icon*56), temp_y-20, 1, 1, 0, c_white, 1);
draw_sprite_ext(sprite_get("hudslots"), items[0], temp_x + 58, temp_y-16, 1, 1, 0, c_white, 1);
*/

shader_start();
draw_sprite_ext(sprite_get("hat_icon"), move_cooldown[AT_FSPECIAL], temp_x + 196, temp_y - 7, 1, 1, 0, c_white, 1);
shader_end();

if (hat_health >= 50) {
  draw_sprite_ext(sprite_get("hat_icon_max"), move_cooldown[AT_FSPECIAL], temp_x + 189, temp_y - 35, 1, 1, 0, c_white, 1);
}



