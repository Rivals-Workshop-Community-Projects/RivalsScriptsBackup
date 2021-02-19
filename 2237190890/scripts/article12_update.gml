// Fireworks
delay++;
if (!delay_set) {
    max_delay = random_func(3 + firework_index, 12, 1) + 10 * firework_index;
    delay_set = true;
}

if (delay >= max_delay) {
    if (!sound_played) {
        sound_play(sound_get("firework"))
        sound_played = true;
    }
    
    if (!position_set) {
        var min_x_value = 200;
        var max_x_value = 900;
        x = random_func(6 + firework_index, (max_x_value - min_x_value) + 1, 1) + min_x_value; // 200 - 900
        var min_y_value = 100;
        var max_y_value = 250;
        y = random_func(9 + firework_index, (max_y_value - min_y_value) + 1, 1) + min_y_value; // 100 - 250
        position_set = true;
    }
    
    // Window controller
    window_timer++
    if (window_timer == window_lengths[window]) {
        if (window == array_length(window_lengths) - 1) {
            destroyed = true;
        }
        if (!destroyed) {
            window++;
            window_timer = 0;
        }
    }
    
    if (!destroyed) {
        switch (window) {
            case 1:
                if (!sprite_changed) {
                    var firework_sprite_index = random_func(5 + firework_index, 5, 1) + 1;
                    sprite_index = sprite_get("fireworks" + string(firework_sprite_index));
                    sprite_changed = true;
                }
            case 2:
                image_index = (window_timer/window_lengths[window] * window_frames[window]) + window_frames[window-1];
                break;
        }
    } else {
        instance_destroy();
    }
}