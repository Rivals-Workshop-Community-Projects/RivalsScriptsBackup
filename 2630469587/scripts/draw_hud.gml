if (!( "keyboard_mode" in self )) exit;

// Keyboard mode notification
if (get_gameplay_time() < 90 && !keyboard_mode) {
    draw_debug_text(temp_x-2, temp_y-10, "Taunt for keyboard mode!")
}

if (get_gameplay_time() < kb_mode_activation_time + 120 && keyboard_mode) {
    draw_debug_text(temp_x-2, temp_y-10, "Keyboard mode activated!")
}

// Voice mode notification
if (get_gameplay_time() < 90 && !voice_mode) {
    draw_debug_text(temp_x-2, temp_y-25, "Special for voice mode!")
}

if (get_gameplay_time() < voice_mode_activation_time + 120 && voice_mode) {
    draw_debug_text(temp_x-2, temp_y-25, "Voice mode activated!")
}

if (!( "phantom" in self )) exit;

if (!has_fly) {
    draw_sprite(sprite_get("phantom_gui"), 2, temp_x+196, temp_y-6); // Cooldown
} else if (phantom.state != 1 && phantom.state != 3 && !(phantom.state == 6 && phantom.last_state == 1) && !phantom.used_for_fly) {
    draw_sprite(sprite_get("phantom_gui"), 1, temp_x+196, temp_y-6); // USpec 2 usable
} else {
    draw_sprite(sprite_get("phantom_gui"), 0, temp_x+196, temp_y-6); // USpec 1 usable
}

