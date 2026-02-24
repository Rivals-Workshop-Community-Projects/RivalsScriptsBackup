if (!variable_instance_exists(self, "timer"))
    timer = -600;
timer++;
draw_sprite_ext(sprite_get("victory_shade"), 0, portrait_x + 150, portrait_y + 16, 2, 2, 0, c_white, clamp(timer / 120, 0, 1));

//                                              ↓ this script hates shader_start()
draw_sprite_ext(sprite_get("victory_eye_glow"), get_player_color(player), portrait_x + 150, portrait_y + 16, 2, 2, 0, c_white, clamp(timer / 120, 0, 1) * ((dsin(timer * 6)/5) + 0.8));