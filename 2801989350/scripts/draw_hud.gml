//None
draw_sprite(sprite_get("nikhud"), cycle, temp_x - 6, temp_y - 50);
if (cycle == 0 || cycle == 4) {
}
//Fairy
if (cycle == 1) {
    if (new_timer > 0) {
        draw_sprite(sprite_get("nikmeter"), 0, temp_x + 40, temp_y - 16);
        draw_sprite(sprite_get("niktext"), 0, temp_x + 40, temp_y - 32);
    }
    if (new_timer == 0) {
        draw_sprite(sprite_get("niktext"), 2, temp_x + 40, temp_y - 32);
        if (fairyenergy == 4) {
            draw_sprite(sprite_get("nikmeter1"), 0, temp_x + 40, temp_y - 16);
        }
        if (fairyenergy == 3) {
            draw_sprite(sprite_get("nikmeter1"), 1, temp_x + 40, temp_y - 16);
        }
        if (fairyenergy == 2) {
            draw_sprite(sprite_get("nikmeter1"), 2, temp_x + 40, temp_y - 16);
        }
        if (fairyenergy == 1) {
            draw_sprite(sprite_get("nikmeter1"), 3, temp_x + 40, temp_y - 16);
        }
        if (fairyenergy == 0) {
            draw_sprite(sprite_get("nikmeter1"), 4, temp_x + 40, temp_y - 16);
        }
    }
}
//Cooldown
if (cycle == 4) {
    draw_sprite(sprite_get("niktext"), 4, temp_x + 40, temp_y - 32);
    if (cooldown < 60) {
        draw_sprite(sprite_get("nikmeter3"), 0, temp_x + 40, temp_y - 16);
    }
    if (cooldown >= 60 && cooldown < 120) {
        draw_sprite(sprite_get("nikmeter3"), 1, temp_x + 40, temp_y - 16);
    }
    if (cooldown >= 120 && cooldown < 180) {
        draw_sprite(sprite_get("nikmeter3"), 2, temp_x + 40, temp_y - 16);
    }
    if (cooldown >= 180 && cooldown < 240) {
        draw_sprite(sprite_get("nikmeter3"), 3, temp_x + 40, temp_y - 16);
    }
    if (cooldown >= 240 && cooldown <= 300) {
        draw_sprite(sprite_get("nikmeter3"), 4, temp_x + 40, temp_y - 16);
    }
}

muno_event_type = 5;
user_event(14);