texture_global_scale(2);

var i;
for (i = 0; i < 6; i += 1) {
    if (after_images[i] != 0) {
        var ax = after_images[i, 0];
        var ay = after_images[i, 1];
        var facing = after_images[i, 2];
        var dir = after_images[i, 3];
        var time = after_images[i, 4];
        var color = after_images[i, 5];
        var suffix = "";
        if (color > 0) {
            if (color >= 2) {
                if (pcolor == 1 || pcolor == 3) {
                    suffix = "_badeline";
                } else if (pcolor == 4 || pcolor == 5) {
                    suffix = "_theo";
                } else {
                    suffix = "2";
                }
            }
            if (dir % 180 == 0) {
                draw_sprite_ext(sprite_get("celeste_afterimage" + suffix + "_leftright"), 0, ax, ay, facing, 1.0, 0, c_white, time / 20.0);
            } else if (dir % 360 == 225 || dir % 360 == 315) {
                draw_sprite_ext(sprite_get("celeste_afterimage" + suffix + "_diagdown"), 0, ax, ay, facing, 1.0, 0, c_white, time / 20.0);
            } else if (dir % 360 == 45 || dir % 360 == 135) {
                draw_sprite_ext(sprite_get("celeste_afterimage" + suffix + "_diagup"), 0, ax, ay, facing, 1.0, 0, c_white, time / 20.0);
            } else if (dir % 360 == 270) {
                draw_sprite_ext(sprite_get("celeste_afterimage" + suffix + "_down"), 0, ax, ay, facing, 1.0, 0, c_white, time / 20.0);
            } else if (dir % 360 == 90) {
                draw_sprite_ext(sprite_get("celeste_afterimage" + suffix + "_up"), 0, ax, ay, facing, 1.0, 0, c_white, time / 20.0);
            }
            after_images[i, 4] = time - 0.5;
            if (after_images[i, 4] <= 0) {
                after_images[i] = 0;
            }
        } else {
            // Color -1: Mist Dash effect
            draw_sprite_ext(sprite_get("celeste_afterimage" + suffix + "_leftright"), 0, ax, ay, facing, 1.0, 0, c_white, time / 20.0);
            var frame = 3 - floor(time / 4.0);
            draw_sprite_ext(
                sprite_get("dash_effect" + suffix),
                frame, ax, ay,
                1.0, 1.0, 0.0,
                c_white, time / 12.0);
            after_images[i, 4] = time - 1;
            if (after_images[i, 4] <= 0) {
                after_images[i] = 0;
            }
        }
    }
}

for (i = 0; i < 3; i += 1) {
    if (dash_circles[i] != 0) {
        var ax = dash_circles[i, 0];
        var ay = dash_circles[i, 1];
        var facing = dash_circles[i, 2];
        var dir = dash_circles[i, 3];
        var time = dash_circles[i, 4];
        var color = dash_circles[i, 5];
        var suffix = "";
        draw_sprite_ext(sprite_get("dash_circle"), 0, ax, ay, 1.4 - (time / 20.0), 1.4 - (time / 20.0), dir, c_white, time / 20.0);
        dash_circles[i, 4] = time - 1;
        if (dash_circles[i, 4] <= 0) {
            dash_circles[i] = 0;
        }
    }
}



// *** BADELINE MOVES
if (badeline != noone) {
    // F Special
    if (badeline[0] == AT_FSPECIAL) {
        var frame = (14 - floor(14 * badeline[3] / 60))
        draw_sprite_part_ext(
            fspecial_badeline,
            frame, 0, 0, 80, 80,
            badeline[1], badeline[2] - 100, -badeline[4], 1.0,
            c_white, 1.0);
    }

    // D Special
    if (badeline[0] == AT_DSPECIAL) {
        draw_sprite_part_ext(
            dspecial_badeline,
            floor(badeline[3] / 4), 0, 0, 80, 80,
            badeline[1], badeline[2] - 100, -badeline[4], 1.0,
            c_white, 1.0);
    }
}

if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {

    // F Strong
    if (attack == AT_FSTRONG) {
        if (window == 1) {
            color = state_timer % 8 < 4 ? c_white : c_yellow;
            if (window_timer < 2) {
                draw_sprite_part_ext(
                    sprite_get("fstrong_oshiro"),
                    0, 0, 0, 100, 100,
                    x - 100 * spr_dir, y - 84, spr_dir, 1.0,
                    color, 1.0);
            } else {
                draw_sprite_part_ext(
                    sprite_get("fstrong_oshiro"),
                    1 + (floor(state_timer / 4) % 3), 0, 0, 100, 100,
                    x - 100 * spr_dir, y - 84, spr_dir, 1.0,
                    color, 1.0);
            }
        } else if (window == 2) {
            var window_len = get_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH);
            var frame = 4 + floor(window_timer * 8 / window_len);
            if (frame > 10) frame = 10;
            var xpos = x - ((100 - (window_timer * 126 / window_len)) * spr_dir);
            draw_sprite_part_ext(
                sprite_get("fstrong_oshiro"),
                frame, 0, 0, 100, 100,
                xpos, y - 100, spr_dir, 1.0,
                c_white, 1.0);
        } else if (window == 3) {
            var window_len = get_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH);
            var xpos = x - ((100 - 126 - (window_timer * 12 / window_len)) * spr_dir);
            draw_sprite_part_ext(
                sprite_get("fstrong_oshiro"),
                11, 0, 0, 100, 100,
                xpos, y - 100, spr_dir, 1.0,
                c_white, 1.0);
        } else if (window == 4 || window == 5) {
            var time = window == 4 ? window_timer : get_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH) + window_timer;
            var window_len = get_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH) + get_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH);
            var frame = 11 + floor(time * 4 / window_len);
            if (frame > 15) frame = 15;
            var xpos = x - ((100 - 126 - 12) * spr_dir);
            draw_sprite_part_ext(
                sprite_get("fstrong_oshiro"),
                frame, 0, 0, 100, 100,
                xpos, y - 100, spr_dir, 1.0,
                c_white, 1.0);
        }
    }

    // Taunt
    if (attack == AT_TAUNT) {
        if (window == 1) {
            draw_sprite_part_ext(
                sprite_get("taunt_theo"),
                floor(window_timer / 6), 0, 0, 96, 64,
                x - 30 * spr_dir, y - 64, spr_dir, 1.0,
                c_white, 1.0);
        } else if (window == 2) {
            draw_sprite_part_ext(
                sprite_get("taunt_theo"),
                11, 0, 0, 96, 64,
                x - 30 * spr_dir, y - 64, spr_dir, 1.0,
                c_white, 1.0);
        }
    }
}


// *** HAIR PHYSICS

// Hair Color
var hair_color = c_white
if (state == PS_HITSTUN || state == PS_HITSTUN_LAND) {
    hair_color = c_red;
}
if (state == PS_PRATFALL) {
    hair_color = c_gray;
}
if ((sprite_index == sprite_get("parry") || sprite_index == sprite_get("airdodge")) && image_index >= 1 && image_index <= 3) {
    hair_active = hair_gone_sprite;
} else if ((sprite_index == sprite_get("dattack")) && (image_index >= 3 && image_index <= 7)) {
    hair_active = hair_gone_sprite;
} else if (sprite_index == sprite_get("mist_dash")) {
    hair_active = hair_gone_sprite;
} else if (dash_count == 1) {
    if (refresh_hair > 0) {
        hair_active = hair_refresh_sprite;
        refresh_hair -= 1;
    } else {
        hair_active = hair_sprite;
    }
} else if (dash_count >= 2) {
    if (refresh_hair > 0) {
        hair_active = hair_refresh_sprite;
        refresh_hair -= 1;
    } else {
        hair_active = hair_charged_sprite;
    }
} else {
    if (attack == AT_EXTRA_1 && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && window == 3 && window_timer <= 4) {
        hair_active = hair_dash_sprites[window_timer <= 0 ? 0 : window_timer - 1];
    } else {
        hair_active = hair_nodash_sprite;
    }
}

// Offsets

hair_offset[0] = 0;
hair_offset[1] = 0;
hair_dir = 1.0;
hair_zoom_x = 1.0;
if (sprite_index == sprite_get("fastfall")) {
    hair_zoom_x = 0.7;
} else if (sprite_index == sprite_get("jump") || sprite_index == sprite_get("pratfall") || sprite_index == sprite_get("uspecial")) {
    hair_offset[1] = 2;
} else if (sprite_index == sprite_get("land")) {
    if (image_index == 0) {
        hair_offset[1] = 2;
    } else if (image_index == 1) {
        hair_offset[1] = -2;
    }
} else if (sprite_index == sprite_get("landinglag")) {
    if (image_index == 0) {
        hair_offset[1] = 2;
    } else if (image_index == 1 || image_index == 2) {
        hair_offset[1] = -6;
    } else if (image_index == 3) {
        hair_offset[1] = -2;
    }
} else if (sprite_index == sprite_get("jumpstart")) {
    if (image_index > 1) {
        hair_offset[1] = 2;
    }
} else if (sprite_index == sprite_get("idle") || sprite_index == sprite_get("taunt")) {
    hair_offset[1] = (image_index % 8 <= 2 || image_index % 8 >= 7) ? 0 : 2;
} else if (sprite_index == sprite_get("dashstart")) {
    hair_offset[0] = -4;
    hair_offset[1] = 2;
} else if (sprite_index == sprite_get("dash") || sprite_index == sprite_get("walk")) {
    hair_offset[0] = -4;
    var index = image_index % 13;
    if (index == 1 || index == 2) {
        hair_offset[1] = 6;
    } else if (index == 8) {
        hair_offset[1] = 8;
    } else if (index == 7 || index == 9) {
        hair_offset[1] = 4;
    } else {
        hair_offset[1] = 2;
    }
} else if (sprite_index == sprite_get("dashstop")) {
} else if (sprite_index == sprite_get("dashturn") || sprite_index == sprite_get("walkturn")) {
    if (image_index == 2) {
        hair_offset[0] = 6;
    } else {
        hair_offset[0] = -2;
    }
    hair_offset[1] = 2;
} else if (sprite_index == sprite_get("crouch")) {
    if (image_index == 0) {
        hair_offset[1] = -16;
        hair_offset[0] = 4;
        hair_zoom_x = 1.2;
    } else if (image_index == 1) {
        hair_offset[1] = -12;
    } else if (image_index == 2) {
        hair_offset[1] = 8;
        hair_offset[0] = -2;
        hair_zoom_x = 0.8;
    }
} else if (sprite_index == sprite_get("ustrong") || sprite_index == sprite_get("ustrong_charged") || sprite_index == sprite_get("nspecial") || sprite_index == sprite_get("nspecial_red") || sprite_index == sprite_get("nspecial_blue") || sprite_index == sprite_get("nspecial_yellow")) {
    hair_offset[0] = 6;
    hair_offset[1] = 4;
} else if (sprite_index == sprite_get("wallcling") || sprite_index == sprite_get("wallclimb")) {
    hair_offset[0] = -6;
    hair_offset[1] = 2;
    //hair_zoom_x = 0.8
} else if (sprite_index == sprite_get("jab")) {
    if (image_index == 0) {
        hair_offset[0] = 2;
    } else if (image_index <= 3) {
        hair_offset[0] = -4;
    } else if (image_index == 4 || image_index == 6) {
        hair_offset[0] = -2;
    }
} else if (sprite_index == sprite_get("dstrong")) {
    if (image_index == 0) {
        hair_offset[1] = 2;
    } else if (image_index <= 2) {
        hair_offset[0] = 2;
        hair_offset[1] = 2;
    } else if (image_index == 3) {
        hair_offset[0] = 6;
        hair_offset[1] = 4;
    } else if (image_index == 4) {
        hair_offset[0] = 6;
        hair_offset[1] = 2;
    } else if (image_index == 5 || image_index == 11) {
        hair_offset[0] = 6;
    } else if (image_index <= 10) {
        hair_offset[0] = 6;
        hair_offset[1] = -2;
    } else if (image_index == 12) {
        hair_offset[0] = 4;
        hair_offset[1] = 2;
    } else if (image_index == 13) {
        hair_offset[0] = 4;
    }
} else if (sprite_index == sprite_get("ftilt")) {
    if (image_index >= 2 && image_index <= 5) {
        hair_offset[0] = -2;
    }
} else if (sprite_index == sprite_get("utilt")) {
    if (image_index <= 1 || image_index >= 8) {
        if (image_index == 1 || image_index == 8) hair_offset[0] = 2;
        hair_offset[1] = 2;
    } else if (image_index <= 2) {
        hair_offset[0] = 6;
        hair_offset[1] = 2;
    } else {
        hair_offset[0] = 6;
        hair_offset[1] = 4;
    }
} else if (sprite_index == sprite_get("dattack")) {
    if (image_index == 12) {
        hair_offset[1] = 2;
    } else if (image_index >= 9) {
        hair_offset[1] = -2;
    }
    if (image_index <= 11 && image_index >= 9) {
        hair_offset[0] = 2;
    }
} else if (sprite_index == sprite_get("dtilt")) {
    if (image_index == 7) {
        hair_offset[1] = 2;
    } else if (image_index < 6 && image_index >= 3) {
        hair_offset[1] = -2;
    }
    if (image_index < 7 && image_index >= 2) {
        hair_offset[0] = 2;
    }
} else if (sprite_index == sprite_get("roll_forward") || sprite_index == sprite_get("roll_backward")) {
    if (image_index >= 5) {
        hair_offset[0] = 6;
        hair_offset[1] = -2;
    } else {
        hair_offset[0] = 6;
        hair_offset[1] = -8;
    }
} else if (sprite_index == sprite_get("fspecial") || sprite_index == sprite_get("fstrong")) {
    if (image_index <= 1) {
        hair_offset[1] = 2;
    }
}
if (spr_dir == -1.0) {
    if ((!(sprite_index == sprite_get("dashturn") || sprite_index == sprite_get("walkturn")) || image_index >= 2) && sprite_index != sprite_get("wallcling") && sprite_index != sprite_get("wallclimb")) {
        hair_offset[0] = -hair_offset[0];
        hair_offset[0] += 16;
        hair_dir = -1.0;
    }
} else {
    if (((sprite_index == sprite_get("dashturn") || sprite_index == sprite_get("walkturn")) && image_index < 2) || sprite_index == sprite_get("wallcling") || sprite_index == sprite_get("wallclimb")) {
        hair_offset[0] = -hair_offset[0];
        hair_offset[0] += 16;
        hair_dir = -1.0;
    }
}

// Calculation

hair_timer += 1;

var hair_start_x = hair_joints[0, 0] - hair_offset[0] / 2 + hair_joints[0, 4];
var hair_start_y = hair_joints[0, 1] - hair_offset[1] + hair_joints[0, 4];
var prev_hair_x = hair_start_x;
var prev_hair_y = hair_start_y;
for (i = 1; i < 5; i++) {
    var hair_x = hair_joints[i, 0] + hair_joints[i, 4];
    var hair_y = hair_joints[i, 1] + hair_joints[i, 4];
    var resting_x = (hair_dir == 1.0) ? (hair_start_x + hair_joints[i, 2]) : (hair_start_x - hair_joints[i, 2]);
    var resting_y = hair_start_y + hair_joints[i, 3];
    if (sprite_index == sprite_get("wallcling") || sprite_index == sprite_get("wallclimb")) {
        resting_y += 2 * (i - 1);
        if (i <= 2) resting_x += 2;
        if (i == 2) resting_y += 2;
    }

    if (i > 1 && dash_count >= 2) {
        resting_x -= (i * 6 * hair_dir);
        resting_y -= sin(hair_timer / 14 + i / 4) * 5;
    }

    if (hair_x > resting_x) {
        hair_x -= 3 + (5 - i);
        if (hair_x < resting_x) { hair_x = resting_x; }
    } else if (hair_x < resting_x) {
        hair_x += 3 + (5 - i);
        if (hair_x > resting_x) { hair_x = resting_x; }
    }
    if (hair_y > resting_y) {
        hair_y -= 2 + (5 - i);
        if (hair_y < resting_y) { hair_y = resting_y; }
    } else if (hair_y < resting_y) {
        hair_y += 4 + (5 - i);
        if (hair_y > resting_y) { hair_y = resting_y; }
    }

    if (i > 1) {
        if (hsp != 0) {
            hair_x -= hsp;
        }

        if (vsp != 0) {
            hair_y -= vsp;
        }

        var max_len = 12;

        if (sqrt(sqr(hair_x - prev_hair_x) + sqr(hair_y - prev_hair_y)) > max_len - i) {
            hair_deg = point_direction(prev_hair_x, prev_hair_y, hair_x, hair_y);
            hair_x = prev_hair_x + lengthdir_x(max_len - i, hair_deg);
            hair_y = prev_hair_y + lengthdir_y(max_len - i, hair_deg);
        }
    }

    hair_joints[i, 0] = hair_x - hair_joints[i, 4];
    hair_joints[i, 1] = hair_y - hair_joints[i, 4];

    prev_hair_x = hair_x;
    prev_hair_y = hair_y;
}

// Drawing

for (i = 4; i >= 0; i-=1) {
    if (i == 0) {
        draw_sprite_part_ext(
            hair_active,
            0, 0, 0, 32, 32,
            x + floor(hair_joints[i][0] / 2) * 2 - hair_offset[0] + 16 - hair_dir * 16, y + floor(hair_joints[i][1] / 2) * 2 - hair_offset[1],
            hair_dir * hair_zoom_x, 1.0, hair_color, 1.0);
    } else {
        draw_sprite_part_ext(
        hair_active,
        0, 0, i * 32, 32, 32,
        x + floor(hair_joints[i][0] / 2) * 2, y + floor(hair_joints[i][1] / 2) * 2,
        hair_zoom_x, 1.0, hair_color, 1.0);
    }
}

for (i = 4; i >= 0; i-=1) {
    if (i == 0) {
        draw_sprite_part_ext(
            hair_active,
            0, 32, 0, 32, 32,
            x + floor(hair_joints[i][0] / 2) * 2 - hair_offset[0] + 16 - hair_dir * 16, y + floor(hair_joints[i][1] / 2) * 2 - hair_offset[1],
            hair_dir * hair_zoom_x, 1.0, hair_color, 1.0);
    } else {
        draw_sprite_part_ext(
        hair_active,
        0, 32, i * 32, 32, 32,
        x + floor(hair_joints[i][0] / 2) * 2, y + floor(hair_joints[i][1] / 2) * 2,
        hair_zoom_x, 1.0, hair_color, 1.0);
    }
}

for (i = 4; i >= 0; i-=1) {
    if (i == 0) {
        draw_sprite_part_ext(
            hair_active,
            0, 64, 0, 32, 32,
            x + floor(hair_joints[i][0] / 2) * 2 - hair_offset[0] + 16 - hair_dir * 16, y + floor(hair_joints[i][1] / 2) * 2 - hair_offset[1],
            hair_dir * hair_zoom_x, 1.0, hair_color, 1.0);
    } else {
        draw_sprite_part_ext(
        hair_active,
        0, 64, i * 32, 32, 32,
        x + floor(hair_joints[i][0] / 2) * 2, y + floor(hair_joints[i][1] / 2) * 2,
        hair_zoom_x, 1.0, hair_color, 1.0);
    }
}


if (stamina == 0 && free) {
    draw_sprite_part_ext(
        stamina_sprite,
        (stamina_timer % 10 <= 4) ? 0 : 21, 0, 0, 8, 8,
        x + 18, y - 62, 2.0, 2.0, c_white, 1.0
    );
} else if (stamina < max_stamina || stamina_linger > 0) {
    draw_sprite_part_ext(
        stamina_sprite,
        floor(20 * stamina / max_stamina), 0, 0, 8, 8,
        x + 18, y - 62, 2.0, 2.0, c_white, 1.0
    );
}