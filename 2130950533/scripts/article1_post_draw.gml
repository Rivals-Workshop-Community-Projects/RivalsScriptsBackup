//Shade players' outlines as appropriate

with (asset_get("oPlayer")) {
    var previous_color = outline_color;
    // Set true if at least one thing already modified the outline and called init_shader
    modified_outline = false;
    var current_burn_countdown = ds_map_find_value(other.burning_counter_map, player);
    if (current_burn_countdown > 0) {
        // Make the target's outline match the emoji color
        outline_color = other.emoji_color;
        modified_outline = true;
    }
    var current_laugh_countdown = ds_map_find_value(other.healing_counter_map, player);
    // Flash for a short amount of time to reduce chance of flicker
    if (current_laugh_countdown > ((other.laughter_heal_cooldown * 7) / 8)) {
        var flash_duration = other.laughter_heal_cooldown / 8;
        var flash_countdown = (current_laugh_countdown - ((other.laughter_heal_cooldown * 7) / 8))
        var greenness = flash_countdown / flash_duration;
        var current_color = outline_color;
        var green = current_color[1] + (200 * greenness);
        if (green > 255) {
            green = 255;
        }
        outline_color = [current_color[0], green, current_color[2]];
        modified_outline = true;
    }
    if (modified_outline) {
        init_shader();
        outline_color = previous_color;
    }
    if (ds_map_find_value(other.final_outline_change_cycle_map, player)) {
        init_shader();
    }
}