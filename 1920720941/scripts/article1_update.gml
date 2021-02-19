state_timer += 1;

if (!dead) {
    if (state == 0) {
        if (activated) {
            state = 1;
            state_timer = 0;
        } else {
            if (state_timer % 4 == 0) {
                image_index += 1;
                image_index = image_index % 12;
            }
        }
    } else {
        if (state_timer == 1) {
            sound_play(sound_get("winged_strawberry"));
        }
        var new_index = state_timer / 2;
        if (new_index >= 14) {
            image_index = 3;
        } else {
            image_index = new_index;
        }
        if (new_index > 4 && new_index < 12) {
            y += 2
        }
        if (new_index == 12) {
            if (golden) {
                create_hitbox(AT_USTRONG, 2, x, y);
            } else {
                create_hitbox(AT_USTRONG, 2, x, y);
            }
        }
        if (new_index >= 12) {
            y -= 10;
        }
        if (y < -64) {
            dead = true;
            exit;
        }
    }
} else if (destroy) {
    instance_destroy();
}