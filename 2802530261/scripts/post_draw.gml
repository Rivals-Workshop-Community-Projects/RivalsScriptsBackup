//post-draw
if(attack == AT_NSPECIAL && window == 2 && charge >= 20 && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)){
    draw_sprite_ext(sprite_get(string(beam_sprite) + "_charging"), (charge = 90? ((state_timer) / 90 * 20) % 2 + 18: (charge / 90) * 17), x + (spr_dir = 1? (free? 16: 24): (free? -54: -62)), y - (spr_dir = 1? 62: 64), 2, 2, 0, c_white, 1);
}

blink_timer += (blink_timer < 40? 1: -40);
if((attack == AT_NSPECIAL && window == 2 && charge >= 90) || charge >= 90){
    gpu_set_fog(true, c_yellow, true, false);
    draw_sprite_ext(sprite_index, image_index, x, y + draw_y, 2 * spr_dir, 2, 0, c_white, (state_timer % ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_NSPECIAL && window == 2? 6: 35) <= 1? 0.4: 0));
    gpu_set_fog(false, c_yellow, false, true);
}else{
    gpu_set_fog(false, c_yellow, false, true);
}

if(attack == AT_FSTRONG && window == 1 && window_timer >= 17 && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)){
    draw_sprite_ext(sprite_get("2_charging"), (state_timer - 27) * 0.3, x + (spr_dir = 1? 22: -54), y - 50, 2, 2, 0, c_white, 1);
}

if(attack == AT_USTRONG && window == 1 && window_timer >= 11 && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)){
    draw_sprite_ext(sprite_get("2_charging"), (state_timer - 11) * 0.3, x + (spr_dir = 1? -22: -18), y - 104, 2, 2, 0, c_white, 1);
}

if(power_charge > 20 && attack == AT_DSPECIAL && window == 2 && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)){
    draw_sprite_ext(sprite_get("power_charge"), (power_charge <= 100? ((power_charge - 20) / 80) * 13: (state_timer / 10) % 2 + 13), x, y + draw_y, 2, 2, 0, c_white, 1);
}

if((state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD || state == PS_AIR_DODGE) && power_ups[5] == 1){
    if(state_timer == 0){
        dodgex[@dodge_amount] = x;
        dodgey[@dodge_amount] = y;
        flash_alpha[@dodge_amount] = 35;
    }
    dodgendx[@dodge_amount] = x;
    dodgendy[@dodge_amount] = y;
}

if(attack == AT_BAIR && state == PS_ATTACK_AIR && missile_amount >= 1){
    switch(window){
        case 2:
        draw_sprite_ext(sprite_get(string(missile_sprite) + "_missile_hit"), window_timer / 8 * 5, x + (spr_dir = 1? -60: 28), y - 72, 2, 2, 0, c_white, 1);
        break;
        case 3:
        draw_sprite_ext(sprite_get(string(missile_sprite) + "_missile_hit"), window_timer / 8 * 5, x + (spr_dir = 1? -68: 36), y - 34, 2, 2, 0, c_white, 1);
        break;
        case 4:
        draw_sprite_ext(sprite_get(string(missile_sprite) + "_missile_hit"), window_timer / 8 * 5, x + (spr_dir = 1? -56: 24), y - 6, 2, 2, 0, c_white, 1);
        break;
    }
}

if(attack == AT_USPECIAL && window == 1 && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)){
    if(joy_dir >= -22.5 && joy_dir < 22.5) || (joy_dir >= 157.5 && joy_dir < 202.5){
        draw_sprite_ext(sprite_get("uspecial_arrow"), get_player_team(player - 1), x + 40 * spr_dir - 4, y - 40, 2, 2, (spr_dir = 1? 0: 180), c_white, 1);
    }else if(joy_dir >= 22.5 && joy_dir < 67.5) || (joy_dir >= 112.5 && joy_dir < 157.5){
        draw_sprite_ext(sprite_get("uspecial_arrow"), get_player_team(player) - 1, x + 28 * spr_dir - 4, y - 28 - 40, 2, 2, (spr_dir = 1? 45: 135), c_white, 1);
    }else if(joy_dir >= 67.5 && joy_dir < 112.5){
        draw_sprite_ext(sprite_get("uspecial_arrow"), get_player_team(player) - 1, x - 4, y - 40 - 40, 2, 2, 90, c_white, 1);
    }else if(joy_dir >= 247.5 && joy_dir <292.5){
        draw_sprite_ext(sprite_get("uspecial_arrow"), get_player_team(player) - 1, x - 4, y + 40 - 40, 2, 2, -90, c_white, 1);
    }else if(joy_dir >= 292.5 && joy_dir < 337.5) || (joy_dir >= 202.5 && joy_dir < 247.5){
        draw_sprite_ext(sprite_get("uspecial_arrow"), get_player_team(player) - 1, x + 28 * spr_dir - 4, y + 28 - 40, 2, 2, (spr_dir = 1? -45: -135), c_white, 1);
    }
}

if(attack == AT_TAUNT && menu_y < -12 && menu_version == 0){
    draw_sprite_ext(sprite_get("hud_selected"), (hud_beam_cooldown = 0? 0: 1), x - 14, y - 94, 2, 2, 0, c_white, 1);
    draw_sprite_ext(sprite_get("hud_item_cursor"), 0, x - 12, y - 92, 2, 2, 0, c_white, abs(menu_alpha));
    switch(item_id){
        case 0:
            draw_sprite_ext(sprite_get("hud_items"), (hud_beam_cooldown = 0? 0: (has_rune("N")? 0: 1)), x - 10, y - 90, 2, 2, 0, c_white, 1);
        break;
        case 1:
            draw_sprite_ext(sprite_get("hud_items"), (hud_beam_cooldown = 0? 2: (has_rune("N")? 2: 3)), x - 10, y - 90, 2, 2, 0, c_white, 1);
        break;
        case 2:
            draw_sprite_ext(sprite_get("hud_items"), (hud_beam_cooldown = 0? 4: (has_rune("N")? 4: 5)), x - 10, y - 90, 2, 2, 0, c_white, 1);
        break;
        case 3:
            draw_sprite_ext(sprite_get("hud_items"), (hud_missile_cooldown = 0? 6: (has_rune("N")? 6: 7)), x - 10, y - 90, 2, 2, 0, c_white, 1);
        break;
        case 4:
            draw_sprite_ext(sprite_get("hud_items"), (hud_missile_cooldown = 0? 8: (has_rune("N")? 8: 9)), x - 10, y - 90, 2, 2, 0, c_white, 1);
        break;
        case 5:
            draw_sprite_ext(sprite_get("hud_items"), (hud_flash_shift_cooldown = 0? 10: (has_rune("N")? 10: 11)), x - 10, y - 90, 2, 2, 0, c_white, 1);
        break;
    }
}

for(k = 0; k < 3; k++){
    flash_alpha[k] -= (flash_alpha[k] > 0? 1: 0);
    draw_sprite_ext(sprite_get((free? "afterimage_air": "afterimage")), (35 - flash_alpha[k]) / 35 * 3, dodgex[k], dodgey[k], -2 *spr_dir, 2, 0, c_white, flash_alpha[k] / 35);
    draw_set_alpha(flash_alpha[k] / 35);
    draw_line_width_color(dodgex[k] - 10 * spr_dir, dodgey[k] - 50, dodgendx[k] - 10 * spr_dir, dodgendy[k] - 50, 2, c_aqua, c_aqua);
    draw_line_width_color(dodgex[k] + 12 * spr_dir, dodgey[k] - 10, dodgendx[k] + 10 * spr_dir, dodgendy[k] - 10, 2, c_aqua, c_aqua);
    draw_line_width_color(dodgex[k] + 8 * spr_dir, dodgey[k] - 20, dodgendx[k] + 8 * spr_dir, dodgendy[k] - 20, 2, c_aqua, c_aqua);
    draw_line_width_color(dodgex[k] - 12 * spr_dir, dodgey[k] - 30, dodgendx[k] - 12 * spr_dir, dodgendy[k] - 30, 2, c_aqua, c_aqua);
    draw_line_width_color(dodgex[k], dodgey[k] - 40, dodgendx[k], dodgendy[k] - 40, 2, c_aqua, c_aqua);
    draw_line_width_color(dodgex[k] - 10 * spr_dir, dodgey[k] - 56, dodgendx[k] - 10 * spr_dir, dodgendy[k] - 56, 2, c_aqua, c_aqua);
    draw_set_alpha(1);
}

for(n = 0; n < 15; n++){
    if(instance_exists(power_bomb[n]) && power_bomb[n].image_index = 5){
        draw_set_alpha((power_bomb[n].bomb_timer >= 66? 1 - ((power_bomb[n].bomb_timer - 66) / 10): 1));
        draw_ellipse_color(power_bomb[n].x - (power_bomb[n].bomb_xscale * 32), power_bomb[n].y - (power_bomb[n].bomb_xscale * 25), power_bomb[n].x + (power_bomb[n].bomb_xscale * 32), power_bomb[n].y + (power_bomb[n].bomb_xscale * 25), c_white, c_white, false)
        draw_set_alpha(1);
    }
}