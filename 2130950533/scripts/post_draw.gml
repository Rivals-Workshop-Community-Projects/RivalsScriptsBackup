shader_start();

var explosion_frames = 9;

// Charging emoji
if ((attack == AT_NSPECIAL)
    && ((state == PS_ATTACK_AIR) || (state == PS_ATTACK_GROUND)))
{
    var charge_sprite_index = 0;
    var draw_charge = false;
    if (window == 2) {
        if (!joke_reached_half) {
            // Small squishing
            charge_sprite_index = ((joke_progress / 4) % 8);
        } else {
            // Big squishing
            charge_sprite_index = 8 + ((joke_progress / 4) % 8);
        }
        draw_charge = true;
    } else if (window == 3) {
        // Ready, aim...
        if (window_timer < (get_window_value(attack, 3, AG_WINDOW_LENGTH) / 2)) {
            charge_sprite_index = 18 + ((window_timer / 4) % 2);
        } else {
            charge_sprite_index = 20 + ((window_timer / 4) % 2);
        }
        // Offset based on explosion size
        if (joke_reached_full) {
            charge_sprite_index += explosion_frames * 2;
        } else if (joke_reached_half) {
            charge_sprite_index += explosion_frames;
        }
        draw_charge = true;
    } else if (window == 4) {
        // Explode!
        var explode_frames = get_window_value(attack, 3, AG_WINDOW_LENGTH) / 4;
        charge_sprite_index = 22 + ((window_timer / explode_frames) % explode_frames);
        // Offset based on explosion size
        if (joke_reached_full) {
            charge_sprite_index += explosion_frames * 2;
        } else if (joke_reached_half) {
            charge_sprite_index += explosion_frames;
        }
        draw_charge = true;
    } else if (window == 5) {
        // Explode!
        charge_sprite_index = 26;
        // Offset based on explosion size
        if (joke_reached_full) {
            charge_sprite_index += explosion_frames * 2;
        } else if (joke_reached_half) {
            charge_sprite_index += explosion_frames;
        }
        draw_charge = true;
    } else if (window == 6) {
        // Charging complete
        charge_sprite_index = 16 + ((window_timer / 4) % 2);
        draw_charge = true;
    }
    if (draw_charge) {
        draw_sprite_ext(sprite_get("nspecial_charge"), charge_sprite_index, x + (spr_dir * 48), y - 43, spr_dir, 1, 0, c_white, 1);
    }
}

// Jab snoots
if ((attack == AT_JAB) && (state == PS_ATTACK_GROUND)) {
    var jab_num = floor(window / 3);
    var snoot_width = 14;
    if (jab_num <= num_jabs) && (window < ((num_jabs * 3) + 2)) {
        for (i = 0; i < jab_num; i++) {
            if ((window % 3) == 0) {
                // Max length
                draw_sprite_ext(sprite_get("snoot"), 0, x + (spr_dir * (snoot_width + 1 + (snoot_width * i))), y - 48, spr_dir, 1, 0, c_white, 1);
            } else if ((window % 3) == 2) {
                // Furthest back
                draw_sprite_ext(sprite_get("snoot"), 0, x + (spr_dir * (snoot_width - 9 + (snoot_width * i))), y - 48, spr_dir, 1, 0, c_white, 1);
            } else if (((window % 3) == 1) && (window > 1))  {
                // Slowly retract a little
                if (window_timer > 14) {
                    draw_sprite_ext(sprite_get("snoot"), 0, x + (spr_dir * (snoot_width - 5 + (snoot_width * i))), y - 48, spr_dir, 1, 0, c_white, 1);
                } else {
                    draw_sprite_ext(sprite_get("snoot"), 0, x + (spr_dir * (snoot_width - 3 + (snoot_width * i))), y - 48, spr_dir, 1, 0, c_white, 1);
                }
            }
        }
    }
}

// Joke primed aura
if (joke_primed) {
    var aura_sprite_index = (joke_aura_timer / 4) % 16;
    draw_sprite_ext(sprite_get("nspecial_aura"), aura_sprite_index, x + (spr_dir * 1), y, spr_dir, 1, 0, c_white, 1);
}
shader_end();