var temp_color = c_white;

//hud stuff

if sentry_alive == false && disp_alive == false && tp_alive == false && get_gameplay_time() > 100{
    draw_debug_text( temp_x - 6, temp_y-64, "Press Taunt to use the PDA.");
}

//mute option
if(get_synced_var (player) > 0) && get_gameplay_time() < 100{
    if engi_muted == false{
        draw_debug_text( temp_x - 6, temp_y-64, "Press [TAUNT] to mute Engineer.");
    } else{
        draw_debug_text( temp_x - 6, temp_y-64, "Engineer Muted.");
    }
}
if engi_muted == true{
    draw_sprite(sprite_get("hud_muted"), 0, temp_x + 66, temp_y + 6);
}

shader_start();
//this is all for the metal count
draw_sprite_ext(sprite_get("hud_metal_bar"), 0,temp_x + 130, temp_y - 46, 2, 2, 0, c_white, 1);
//third digit
if metal_count >= 200{
    draw_sprite_ext(sprite_get("hud_numbers_big"), 2, temp_x + 156, temp_y - 34, 2, 2, 0, c_white, 1);
} else if metal_count >= 100{
    draw_sprite_ext(sprite_get("hud_numbers_big"), 1, temp_x + 156, temp_y - 34, 2, 2, 0, c_white, 1);
}
//second digit
if (metal_count == 0) or (metal_count == 100) or (metal_count == 200){
    draw_sprite_ext(sprite_get("hud_numbers_big"), 0, temp_x + 172, temp_y - 34, 2, 2, 0, c_white, 1);
} else if (metal_count == 25) or (metal_count == 125){
    draw_sprite_ext(sprite_get("hud_numbers_big"), 2, temp_x + 172, temp_y - 34, 2, 2, 0, c_white, 1);
} else if (metal_count == 50) or (metal_count == 150){
    draw_sprite_ext(sprite_get("hud_numbers_big"), 5, temp_x + 172, temp_y - 34, 2, 2, 0, c_white, 1);
} else if (metal_count == 75) or (metal_count == 175){
    draw_sprite_ext(sprite_get("hud_numbers_big"), 7, temp_x + 172, temp_y - 34, 2, 2, 0, c_white, 1);
}
//first digit
if (metal_count == 0) or (metal_count == 50) or (metal_count == 100) or (metal_count == 150) or (metal_count == 200){
    draw_sprite_ext(sprite_get("hud_numbers_big"), 0, temp_x + 188, temp_y - 34, 2, 2, 0, c_white, 1);
} else{
    draw_sprite_ext(sprite_get("hud_numbers_big"), 5, temp_x + 188, temp_y - 34, 2, 2, 0, c_white, 1);
}



//this is all for the buildings
//sentry
if sentry_alive == true{
    if sentry.building_state != 200{
        draw_sprite_ext(sprite_get("hud_sentry_box"), 0, temp_x + 38, temp_y - 60, 2, 2, 0, c_white, 1);
        draw_sprite_ext(sprite_get("hud_hpbar"), 6-((sentry.building_health/sentry.building_max_health)*6),temp_x+38,temp_y-60, 2, 2, 0, c_white, 1);
        if sentry.building_level == 1{
            draw_sprite_ext(sprite_get("hud_metalbar"), sentry.building_upgrade,temp_x+44,temp_y-18, 2, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("hud_sentry_lv1"), 0, temp_x + 44, temp_y - 92, 2, 2, 0, c_white, 1);
        }
        if sentry.building_level == 2{
            draw_sprite_ext(sprite_get("hud_metalbar"), sentry.building_upgrade,temp_x+44,temp_y-18, 2, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("hud_sentry_lv2"), 0, temp_x + 44, temp_y - 92, 2, 2, 0, c_white, 1);
        }
        if sentry.building_level == 3{
            draw_sprite_ext(sprite_get("hud_sentry_lv3"), 0, temp_x + 44, temp_y - 92, 2, 2, 0, c_white, 1);
        }
    }else{
    draw_sprite_ext(sprite_get("hud_no_sentry"), 0, temp_x + 38, temp_y - 60, 2, 2, 0, c_white, 1);
    }
} else{
    draw_sprite_ext(sprite_get("hud_no_sentry"), 0, temp_x + 38, temp_y - 60, 2, 2, 0, c_white, 1);
}
//dispenser
if disp_alive == true{
    if disp.building_state != 200{
        draw_sprite_ext(sprite_get("hud_disp_box"), 0, temp_x - 8, temp_y - 60, 2, 2, 0, c_white, 1);
        draw_sprite_ext(sprite_get("hud_hpbar"), 6-((disp.building_health/disp.building_max_health)*6),temp_x-8,temp_y-60, 2, 2, 0, c_white, 1);
        if disp.building_level == 1{
            draw_sprite_ext(sprite_get("hud_metalbar"), disp.building_upgrade,temp_x-2,temp_y-18, 2, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("hud_disp_lv1"), 0, temp_x - 2, temp_y - 92, 2, 2, 0, c_white, 1);
        }
        if disp.building_level == 2{
            draw_sprite_ext(sprite_get("hud_metalbar"), disp.building_upgrade,temp_x-2,temp_y-18, 2, 2, 0, c_white, 1);
            draw_sprite_ext(sprite_get("hud_disp_lv2"), 0, temp_x - 2, temp_y - 92, 2, 2, 0, c_white, 1);
        }
        if disp.building_level == 3{
            draw_sprite_ext(sprite_get("hud_disp_lv3"), 0, temp_x - 2, temp_y - 92, 2, 2, 0, c_white, 1);
        }
    }else{
    draw_sprite_ext(sprite_get("hud_no_disp"), 0, temp_x - 8, temp_y - 60, 2, 2, 0, c_white, 1);
    }
} else{
    draw_sprite_ext(sprite_get("hud_no_disp"), 0, temp_x - 8, temp_y - 60, 2, 2, 0, c_white, 1);
}
//you'll never guess
if tp_alive == true{
    if tp.building_state != 200{
        draw_sprite_ext(sprite_get("hud_tele_box"), 0, temp_x + 84, temp_y - 60, 2, 2, 0, c_white, 1);
        draw_sprite_ext(sprite_get("hud_hpbar"), 6-((tp.building_health/tp.building_max_health)*6),temp_x+84,temp_y-60, 2, 2, 0, c_white, 1);
        draw_sprite_ext(sprite_get("hud_tele"), 0, temp_x + 90, temp_y - 92, 2, 2, 0, c_white, 1);
    }else{
    draw_sprite_ext(sprite_get("hud_no_tele"), 0, temp_x + 84, temp_y - 60, 2, 2, 0, c_white, 1);
    }
} else{
    draw_sprite_ext(sprite_get("hud_no_tele"), 0, temp_x + 84, temp_y - 60, 2, 2, 0, c_white, 1);
}

shader_end();

if(get_training_cpu_action() != CPU_FIGHT && metal_count != 200){
    draw_debug_text(temp_x - 6,temp_y + 4,"Parry + Special: Restores Metal");
}

//debug

// draw_debug_text( temp_x+60, temp_y-900, string(metal_count));
// draw_debug_text( temp_x-60, temp_y-16, string(sentry.life_timer));
// draw_debug_text( temp_x, temp_y-16, string(sentry.sprite_index));
// draw_debug_text( temp_x+180, temp_y-16, string(sentry.enemy_being_shot));
// draw_debug_text( temp_x+10, temp_y-16, string(despawn_timer));