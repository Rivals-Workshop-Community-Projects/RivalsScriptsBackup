
// if sentry_alive == true{
//     if sentry.building_state == 1{
//         sentry_range = draw_sprite(sprite_get("sentry_range"), range_animator, sentry.x - 120 + 6 * sentry.spr_dir, sentry.y - 24);
//         // sentry_range = draw_sprite(sprite_get("sentry_range_mask"), range_animator, sentry.x - 114, sentry.y - 24);
//         range_animator = range_animator + 0.25;
//     }
// }
// if range_animator >= 8{
//     range_animator = 0;
// }

// if sentry_alive == true{
//     if sentry.enemy_being_shot > 0{
//         draw_sprite_ext(sprite_get("sentry_crosshair"), 1, sentry.sentry_enemy_x, sentry.sentry_enemy_y - 30, 1, 1, 0, c_white, 1);
//         if sentry.building_hit == 1{
//             draw_sprite_ext(sprite_get("sentry_crosshair"), 1, sentry.sentry_enemy_x, sentry.sentry_enemy_y - 30, 1, 1, 0, c_white, 1);
//         }
//     }
// }

shader_start();



if fstrong_anim_timer != 0 && metal_count >= 25{
    if spr_dir == -1{
        var left_boost = -140;
    } else{
        var left_boost = 10;
    }
    draw_sprite(sprite_get("fstrong_ballspawn"), fstrong_anim_timer, x + left_boost, y - 100);
}

shader_end();

if fs_explosion_active > 0{
    fs_explosion_active = fs_explosion_active + 1;
    draw_sprite_ext(sprite_get("fs_flash"), 0, fs_explosion_x - fs_explosion_active, fs_explosion_y - fs_explosion_active, (fs_explosion_active * fs_explosion_active)/4 + 1, fs_explosion_active, 1, c_white, 0.7 + fs_explosion_active/40 - fs_explosion_active * fs_explosion_active * 0.0005 - 0.3);
    if fs_explosion_active >= 100{
        fs_explosion_active = 0;
    }
}