// Character Front Info
if (obj_stage_main.graphics_level < 2) {
    // Get damage
    with (oPlayer) if (player == obj_stage_main.front) {
        var damage = get_player_damage( player );
    }
    var base_x = temp_x + 35
    // Draw damage text
    if (damage < 10) {
        draw_sprite_ext(sprite_get("number_font"), damage, round(base_x), round(temp_y), 2, 2, 0, c_white, 1);
    } else if (damage < 100) {
        draw_sprite_ext(sprite_get("number_font"), damage % 10, round(base_x), round(temp_y), 2, 2, 0, c_white, 1);
        draw_sprite_ext(sprite_get("number_font"), floor(damage/10), round(base_x - 16), round(temp_y), 2, 2, 0, c_white, 1);
    } else {
        draw_sprite_ext(sprite_get("number_font"), damage % 10, round(base_x), round(temp_y), 2, 2, 0, c_white, 1);
        draw_sprite_ext(sprite_get("number_font"), floor(damage/10) % 10, round(base_x - 16), round(temp_y), 2, 2, 0, c_white, 1);
        draw_sprite_ext(sprite_get("number_font"), floor(damage/100), round(base_x - 32), round(temp_y), 2, 2, 0, c_white, 1);
    }
    draw_sprite_ext(sprite_get("number_font"), 10, round(base_x + 16), round(temp_y), 2, 2, 0, c_white, 1);
    
    // Draw healthbar, make health 0 if dead
    var percent = ease_expoOut(0, 48, damage, 999);
    with (oPlayer) if (player == obj_stage_main.front) {
        var front_dead = state == PS_DEAD || state == PS_RESPAWN;
    }
    if (front_dead) {
        draw_sprite_ext(sprite_get("hp"), 49, round(temp_x - 31), round(temp_y - 14), 2, 2, 0, c_white, 1);
    } else {
        draw_sprite_ext(sprite_get("hp"), percent, round(temp_x - 31), round(temp_y - 14), 2, 2, 0, c_white, 1);
    }
}

// Draw name text
if (obj_stage_main.graphics_level < 1) {
    var front_array = obj_stage_main.names[@obj_stage_main.front];
    for (i = 0; i < array_length(front_array); i++) {
        draw_sprite_ext(obj_stage_main.font_sprite, front_array[@i], round(temp_x - 32 + (16 * i)), round(temp_y - 50), 2, 2, 0, c_white, 1);
    }
}