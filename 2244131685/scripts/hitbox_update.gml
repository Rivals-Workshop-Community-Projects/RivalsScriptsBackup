// 2B's Hitbox Update

//pod hb handling

if ("pod") in self {
    if (podhbtype == 1) {
        x = pod.x+x_pos;
        y = pod.y+y_pos;
    }
}

switch (attack) {
    case AT_DAIR:
        var dair_speed = player_id.dair_speed;
        // This splits the animation into 3 splits - the second one being the shortest
        // of the three. This is so it goes down, hovers for a bit, then comes back up
        // nicely.
        if (hitbox_timer <= length/3 + length/6) {
            vsp = ease_sineOut(dair_speed, 0, hitbox_timer, round(length/3) + round(length/6));
        } else if (hitbox_timer < length/3 * 2) {
            vsp = 0;
        } else {
            vsp = ease_sineIn(0, -dair_speed, (round(hitbox_timer - length/3 * 2)) + 1, round((length - length/3 * 2)) - 1);
        }
        var dair_offset = 10; // How offset the sword graphic is from 2B
        x = player_id.x + dair_offset * spr_dir;
        break;
    case AT_JAB:
        if (hbox_num == 3) {
            if (player_id.was_parried) {
                destroyed = true;
            }
            for (i = 0; i < 5; i++) {
                if (player_id.sword_hitpause[i] != 0) {
                    var main_sword_hitpause = i;
                }
            }
            if (player_id.sword_hitpause[main_sword_hitpause] <= 0) {
                var sword_speed = player_id.sword_speed;
                if (hitbox_timer <= length/3 + length/6) {
                    hsp = player_id.hsp + ease_sineOut(sword_speed, 0, hitbox_timer, round(length/3) + round(length/6)) * spr_dir;
                } else if (hitbox_timer < length/3 * 2) {
                    hsp = 0;
                } else {
                    hsp = player_id.hsp + ease_sineIn(0, -sword_speed, (round(hitbox_timer - length/3 * 2)) + 1, round((length - length/3 * 2)) - 1) * spr_dir;
                }
                var sword_offset = 50; // How offset the sword graphic is from 2B
                y = player_id.y - sword_offset;
                with (player_id) {
                    var multi = [];
                    multi[0] = get_hitbox_value(AT_JAB, 4, HG_WINDOW_CREATION_FRAME);
                    multi[1] = get_hitbox_value(AT_JAB, 5, HG_WINDOW_CREATION_FRAME);
                    multi[2] = get_hitbox_value(AT_JAB, 6, HG_WINDOW_CREATION_FRAME);
                    multi[3] = get_hitbox_value(AT_JAB, 7, HG_WINDOW_CREATION_FRAME);
                }
                for (i = 0; i < 4; i++) {
                    if ((hitbox_timer - 1) == multi[i] && !player_id.hitpause && !player_id.sword_hbox_created[i]) {
                        create_hitbox(AT_JAB, i+4, x + (player_id.sword_hbox_offset[0] * spr_dir), y + player_id.sword_hbox_offset[1]);
                        player_id.sword_hbox_created[i] = true;
                    }
                }
                player_id.sword_timer = hitbox_timer;
            } else {
                hsp = 0;
                vsp = 0;
                hitbox_timer = player_id.sword_timer;
                player_id.sword_hitpause[main_sword_hitpause]--;
            }
 
            player_id.sword_pos = [x, y];
        } else if (hbox_num > 3) {
            if (player_id.was_parried) {
                destroyed = true;
            }
            x = player_id.sword_pos[0] + (player_id.sword_hbox_offset[0] * spr_dir);
            y = player_id.sword_pos[1] + player_id.sword_hbox_offset[1];
        }
        break;
    case AT_USTRONG:
        if (hbox_num != 1) {
            if (hitbox_timer == 1) {
                sound_play(asset_get("sfx_clairen_fspecial_dash"))
            }
            if (player_id.state_cat == SC_HITSTUN || player_id.was_parried) {
                destroyed = true;
            }
            if (destroyed) {
                // Plays the disappear animation
                player_id.spears_destroyed[@hbox_num - 2] = [x, y, player_id.spear_fade, player_id.pod.spr_dir];
                player_id.spears_hit[@hbox_num - 2][@0] = 0;
            }
        }
        break;
}