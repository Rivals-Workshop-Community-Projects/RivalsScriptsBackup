//post-draw
draw_point_color(x, y, c_purple);

if(attack == AT_NSPECIAL && window == 2 && charge >= 20){
    draw_sprite_ext(sprite_get(string(beam_sprite) + "_charging"), (charge = 90? ((state_timer) / 90 * 20) % 2 + 18: (charge / 90) * 20), x + (spr_dir = 1? 24: -62), y - (spr_dir = 1? 62: 64), 2, 2, 0, c_white, 1);
}

if(attack == AT_FSTRONG && window == 1 && window_timer >= 17){
    draw_sprite_ext(sprite_get("2_charging"), (state_timer - 27) * 0.3, x + (spr_dir = 1? 22: -54), y - 50, 2, 2, 0, c_white, 1);
}

if(attack == AT_USTRONG && window == 1 && window_timer >= 11){
    draw_sprite_ext(sprite_get("2_charging"), (state_timer - 11) * 0.3, x + (spr_dir = 1? -22: -18), y - 104, 2, 2, 0, c_white, 1);
}

if(power_charge > 20 && attack == AT_DSPECIAL && window == 2){
    draw_sprite_ext(sprite_get("power_charge"), (power_charge <= 100? ((power_charge - 20) / 80) * 13: (state_timer / 10) % 2 + 13), x, y + draw_y, 2, 2, 0, c_white, 1);
}

if((state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD || state == PS_AIR_DODGE) && power_ups[5] == 1){
    if(state_timer == 0){
        dodgex = x;
        dodgey = y;
        flash_alpha = 35;
    }
    dodgendx = x;
    dodgendy = y;
}

if(attack == AT_BAIR && state == PS_ATTACK_AIR && missile_amount > 1){
    switch(window){
        case 2:
        draw_sprite_ext(sprite_get("0_missile_hit"), window_timer / 8 * 5, x + (spr_dir = 1? -60: 28), y - 72, 2, 2, 0, c_white, 1);
        break;
        case 3:
        draw_sprite_ext(sprite_get("0_missile_hit"), window_timer / 8 * 5, x + (spr_dir = 1? -68: 36), y - 34, 2, 2, 0, c_white, 1);
        break;
        case 4:
        draw_sprite_ext(sprite_get("0_missile_hit"), window_timer / 8 * 5, x + (spr_dir = 1? -56: 24), y - 6, 2, 2, 0, c_white, 1);
        break;
    }
}

if(attack == AT_TAUNT && menu_y < -12 && menu_version == 0){
    draw_sprite_ext(sprite_get("hud_selected"), (hud_beam_cooldown = 0? 0: 1), x - 14, y - 94, 2, 2, 0, c_white, 1);
    draw_sprite_ext(sprite_get("hud_item_cursor"), 0, x - 12, y - 92, 2, 2, 0, c_white, abs(menu_alpha));
    switch(item_id){
        case 0:
            draw_sprite_ext(sprite_get("hud_items"), (hud_beam_cooldown = 0? 0: 1), x - 10, y - 90, 2, 2, 0, c_white, 1);
        break;
        case 1:
            draw_sprite_ext(sprite_get("hud_items"), (hud_beam_cooldown = 0? 2: 3), x - 10, y - 90, 2, 2, 0, c_white, 1);
        break;
        case 2:
            draw_sprite_ext(sprite_get("hud_items"), (hud_beam_cooldown = 0? 4: 5), x - 10, y - 90, 2, 2, 0, c_white, 1);
        break;
        case 3:
            draw_sprite_ext(sprite_get("hud_items"), (hud_missile_cooldown = 0? 6: 7), x - 10, y - 90, 2, 2, 0, c_white, 1);
        break;
        case 4:
            draw_sprite_ext(sprite_get("hud_items"), (hud_missile_cooldown = 0? 8: 9), x - 10, y - 90, 2, 2, 0, c_white, 1);
        break;
        case 5:
            draw_sprite_ext(sprite_get("hud_items"), (hud_flash_shift_cooldown = 0? 10: 11), x - 10, y - 90, 2, 2, 0, c_white, 1);
        break;
    }
}

flash_alpha -= (flash_alpha > 0? 1: 0);
draw_sprite_ext(sprite_get((free? "afterimage_air": "afterimage")), (35 - flash_alpha) / 35 * 3, dodgex, dodgey, -2 *spr_dir, 2, 0, c_white, flash_alpha / 35);
draw_set_alpha(flash_alpha / 35);
draw_line_width_color(dodgex - 10 * spr_dir, dodgey - 50, dodgendx - 10 * spr_dir, dodgendy - 50, 2, c_aqua, c_aqua);
draw_line_width_color(dodgex + 12 * spr_dir, dodgey - 10, dodgendx + 10 * spr_dir, dodgendy - 10, 2, c_aqua, c_aqua);
draw_line_width_color(dodgex + 8 * spr_dir, dodgey - 20, dodgendx + 8 * spr_dir, dodgendy - 20, 2, c_aqua, c_aqua);
draw_line_width_color(dodgex - 12 * spr_dir, dodgey - 30, dodgendx - 12 * spr_dir, dodgendy - 30, 2, c_aqua, c_aqua);
draw_line_width_color(dodgex, dodgey - 40, dodgendx, dodgendy - 40, 2, c_aqua, c_aqua);
draw_line_width_color(dodgex - 10 * spr_dir, dodgey - 56, dodgendx - 10 * spr_dir, dodgendy - 56, 2, c_aqua, c_aqua);
draw_set_alpha(1);