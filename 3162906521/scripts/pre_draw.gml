
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

if pda == true{ 
    draw_sprite_ext(sprite_get("pda"), 0, x-135, y - 225, 2, 2, 0, c_white, 0.55);
    if sentry_alive == true{
        draw_sprite_ext(sprite_get("pda_sentry_d"), 0, x - 39, y - 175, 2, 2, 0, c_white, 0.7);
    } else if metal_count >= 125{
        draw_sprite_ext(sprite_get("pda_sentry_b"), 0, x - 39, y - 175, 2, 2, 0, c_white, 0.7);
    } else{
        draw_sprite_ext(sprite_get("pda_sentry_nm"), 0, x - 39, y - 175, 2, 2, 0, c_white, 0.7);
    }
    if disp_alive == true{
        draw_sprite_ext(sprite_get("pda_disp_d"), 0, x - 115, y - 175, 2, 2, 0, c_white, 0.7);
    } else if metal_count >= 100{
        draw_sprite_ext(sprite_get("pda_disp_b"), 0, x - 115, y - 175, 2, 2, 0, c_white, 0.7);
    } else{
        draw_sprite_ext(sprite_get("pda_disp_nm"), 0, x - 115, y - 175, 2, 2, 0, c_white, 0.7);
    }
    if tp_alive == true{
        draw_sprite_ext(sprite_get("pda_tp_d"), 0, x + 37, y - 175, 2, 2, 0, c_white, 0.7);
    } else if metal_count >= 50{
        draw_sprite_ext(sprite_get("pda_tp_b"), 0, x + 37, y - 175, 2, 2, 0, c_white, 0.7);
    } else{
        draw_sprite_ext(sprite_get("pda_tp_nm"), 0, x + 37, y - 175, 2, 2, 0, c_white, 0.7);
    }
}

//respawn platform
shader_start();
if respawn_platform_spawn == true{
    plat_anim = plat_anim + 0.175;
    if plat_anim = 4{
        plat_anim = 0;
    }
    draw_sprite_ext(sprite_get("platform"), plat_anim, x, y, 1, 1, 0, c_white, 0.9);
}

//uspecial's after image
if (attack == AT_USPECIAL) && (window == 5) && (window_timer == 12){
    uspecialafterimage_fader = 4;
    uspecialafterimage_x = x;
    uspecialafterimage_y = y;
}
if uspecialafterimage_fader >= 1{
    uspecialafterimage_fader ++;
    if get_player_color(player) == 0{ //it wouldn't recolor the green on the red alt for some reason
        draw_sprite_ext(sprite_get("uspecialafterimage_red"), uspecialafterimage_fader/6 - 1, uspecialafterimage_x, uspecialafterimage_y, 2, 2, 0, c_white, 1); //(16/uspecialafterimage_fader)/16
    } else{
        draw_sprite_ext(sprite_get("uspecialafterimage"), uspecialafterimage_fader/6 - 1, uspecialafterimage_x, uspecialafterimage_y, 2, 2, 0, c_white, 1); //(16/uspecialafterimage_fader)/16
    }
    if uspecialafterimage_fader == 26{
        uspecialafterimage_fader = 0;
    }
}
shader_end();

//(-(state_timer*state_timer/6) + state_timer)/2, (-(state_timer*state_timer/6) + state_timer)/2

if state == PS_PARRY{
    flash = draw_sprite_ext(sprite_get("parryfx"), state_timer/6, x - 110, y - 150, 1, 1, 0, c_white, 1);
}
