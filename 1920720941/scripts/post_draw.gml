
if (strawberry_effect != noone) {
    if (strawberry_effect[2] <= 0) {
        strawberry_effect = noone;
    } else {
        if (strawberry_effect[2] == 30) {
            sound_play(sound_get("strawberry"));
        }
        strawberry_effect[2] -= 1;
        var frame = 9 - floor(strawberry_effect[2] / 3.0);
        draw_sprite_ext(
            sprite_get("strawberry_points"),
            frame, strawberry_effect[0], strawberry_effect[1],
            1.0, 1.0, 0.0, c_white, 1.0);
    }
}

if (dash_effect != noone) {
    if (dash_effect[2] <= 0) {
        dash_effect = noone;
    } else {
        var suffix = "";
        if (dash_effect[3] >= 2) {
            if (pcolor == 1 || pcolor == 3) {
                suffix = "_badeline";
            } else if (pcolor == 4 || pcolor == 5) {
                suffix = "_theo";
            } else {
                suffix = "2";
            }
        }
        dash_effect[2] -= 1;
        var frame = 3 - floor(dash_effect[2] / 4.0);
        draw_sprite_ext(
            sprite_get("dash_effect" + suffix),
            frame, dash_effect[0], dash_effect[1],
            1.0, 1.0, 0.0,
            c_white, dash_effect[2] / 12.0);
    }
}

if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {
    // Taunt
    if (attack == AT_TAUNT) {
        if (window == 2) {
            draw_sprite_part_ext(
                sprite_get("camera_flash"),
                0, 0, 0, 960, 540,
                view_get_xview(), view_get_yview(), 1.0, 1.0,
                c_white, (window_timer / 4.0));
        } else if (window == 3) {
            draw_sprite_part_ext(
                sprite_get("camera_flash"),
                0, 0, 0, 960, 540,
                view_get_xview(), view_get_yview(), 1.0, 1.0,
                c_white, 1.0 - (window_timer / 12.0));
        }
    } else if (attack == AT_FSPECIAL) {
        for (i = 0; i < 3; i += 1) {
            if (badeline_shots > i) {
                draw_sprite_ext(sprite_get("fspecial_cooldown_icon"), 0, x - 24 + i*18, y-78, 2, 2, 0, c_white, 1);
            } else if (badeline_shots == i) {
                for (j = 0; j < 4; j += 1) {
                    temp_color3 = c_gray;
                    if (floor(badeline_shot_timer * 4 / get_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH)) > j) temp_color3 = c_white;
                    draw_sprite_ext(sprite_get("fspecial_cooldown_charge"), j, x - 24 + i*18 + j*4, y-78, 2, 2, 0, temp_color3, 1);
                }
            } else {
                draw_sprite_ext(sprite_get("fspecial_cooldown_icon"), 0, x - 24 + i*18, y-78, 2, 2, 0, c_gray, 1);
            }
        }
    }
}