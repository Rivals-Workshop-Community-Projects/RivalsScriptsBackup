if (phone_cheats[cheat_hud] = 0){
    draw_sprite_ext(sprite_get("starempty"), 1, temp_x + 50, temp_y - 60, 2, 2, 0, c_white, 1);

    if (star_meter >= 1){
        draw_sprite_ext(sprite_get("star"), 1, temp_x + 50, temp_y - 60, 2, 2, 0, c_white, 1);
    }

    if (star_meter >= 2){
        draw_sprite_ext(sprite_get("star"), 1, temp_x + 106, temp_y - 60, 2, 2, 0, c_white, 1);
    }

    if (star_meter >= 3){
        draw_sprite_ext(sprite_get("star"), 1, temp_x + 162, temp_y - 60, 2, 2, 0, c_white, 1);
    }
}

user_event(11);

if (phone_cheats[cheat_combo] = 1){
    draw_debug_text(temp_x, temp_y-50, "Time: " + string(combo_timer));
    draw_debug_text(temp_x, temp_y-70, "Combo: " + string(combo_counter));
    draw_debug_text(temp_x, temp_y-30, "Dodges: " + string(times_dodged));
}