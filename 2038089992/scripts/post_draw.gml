//post-draw
shader_start();
//meter
if (char_height >= 40) && (draw_indicator) {
    var waterMeter = ceil(30 * meter_water/meter_capacity);
    var steamMeter = ceil(30 * (meter_water + meter_steam)/meter_capacity);

    if (allRunes) {
        draw_sprite(sprite_get("gold_meter"), 0, x-32, y-30-char_height);
    } else {
        draw_sprite(sprite_get("meter"), 0, x-32, y-30-char_height);
    }

    draw_sprite(sprite_get("steam_bar"), steamMeter, x-32, y-30-char_height);
    draw_sprite(sprite_get("water_bar"), waterMeter, x-32, y-30-char_height);

    var limitMeter = ceil(30 * limitBreakCharge/100);
    draw_sprite(sprite_get("limit_bar"), limitMeter, x-32, y-70);
    if (limitBreak) {
        if (get_gameplay_time() mod 12 >= 6) {
            draw_sprite(sprite_get("steam_bar"), limitMeter, x-32, y-70);
        }
    }
}

/*
//fstrong steam
if (state == PS_ATTACK_GROUND) && (attack == AT_FSTRONG) && (window == 1) && (meter_steam > 0) && (strong_charge >= 4) {
    draw_sprite(sprite_get("steam_vfx"), (strong_charge - 4)/1.5, x + (20 * spr_dir), y - 20);
}

//dstrong steam
if (state == PS_ATTACK_GROUND) && (attack == AT_DSTRONG) && (window == 1) && (meter_steam > 0) && (strong_charge >= 4) {
    draw_sprite(sprite_get("steam_vfx"), (strong_charge - 4)/1.5, x - (25 * spr_dir), y - 10);
    draw_sprite(sprite_get("steam_vfx"), (strong_charge - 4)/1.5, x + (25 * spr_dir), y - 10);
}

//ustrong steam
if (state == PS_ATTACK_GROUND) && (attack == AT_USTRONG) && (window == 1) && (meter_steam > 0) && (strong_charge >= 4) {
    draw_sprite(sprite_get("steam_vfx"), (strong_charge - 4)/1.5, x - (5 * spr_dir), y - 70);
}
*/

//ftilt steam
if (state == PS_ATTACK_GROUND) && (attack == AT_FTILT) && (window == 2) && (meter_steam > 0) && (window_timer >= 2) {
    draw_sprite(steam_vfx, (state_timer - 6)/1.5, x + (55 * spr_dir), y - 20);
}

//hover steam
if (state == PS_FIRST_JUMP || state == PS_WALL_JUMP || state == PS_DOUBLE_JUMP || state == PS_IDLE_AIR || state == PS_TUMBLE || (state == PS_ATTACK_AIR && attack != AT_USPECIAL && attack != AT_FSPECIAL)) && (djumpPressVar == 2) {
    draw_sprite(steam_vfx, get_gameplay_time()/1.5, x + (10 * spr_dir) + (spr_dir * djumpXMod), y + 15);
    draw_sprite(steam_vfx, get_gameplay_time()/1.5 + 2, x - (10 * spr_dir) + (spr_dir * djumpXMod), y + 18);
}

//fstrong water
if (state == PS_ATTACK_GROUND) && (attack == AT_FSTRONG) && (window == 2) && (window_timer >= 6) && (dryFstrong == false) {
    draw_sprite_ext(sprite_get("fstrong_water"), (window_timer - 6)/3, x, y, spr_dir, 1, 0, c_white, 1);
}

//dstrong water
if (state == PS_ATTACK_GROUND) && (attack == AT_DSTRONG) && (window == 2) && (dryDstrong == false) {
    draw_sprite_ext(sprite_get("dstrong_water"), window_timer/2, x, y, spr_dir, 1, 0, c_white, 1);
}

//ustrong water
if (state == PS_ATTACK_GROUND) && (attack == AT_USTRONG) && (window == 2) && (dryUstrong == false) {
    draw_sprite_ext(sprite_get("ustrong_water"), window_timer/3, x, y, spr_dir, 1, 0, c_white, 1);
}

//fspec smoke
if (state == PS_ATTACK_GROUND) && (attack == AT_FSPECIAL) && (window == 3 || window == 4) && (fspecTimer < 24) {
    draw_sprite_ext(fspecSmoke, fspecTimer/4, x, y, spr_dir, 1, 0, c_white, 1);
}

shader_end();

//arcade taunt minigame
if arc_draw_sk == true {
    var sk_x = x - spr_dir*12;
    var sk_y = y - 50
    draw_sprite_ext(sprite_get("arc_sk"), 0, sk_x, sk_y, 2*spr_dir, 2, 0, c_white, 1)
    
    var text_x = x + 2*spr_dir;
    var text_y = y - 16;
    draw_debug_text(text_x + (spr_dir-1)*8, text_y, string(arc_score))
    
    var anchor_x = x - 1 + 21*spr_dir;
    var anchor_y = y - 28;
    
    switch arc_state {
        case 0:
        draw_sprite_ext(sprite_get("arc_anchor"), 0, anchor_x, anchor_y, 2, 2, 0, c_white, 1)
        break;
        
        case 1:
        draw_sprite_part_ext(sprite_get("arc_anchor"), 0, 0, 0, 5, 6 - clamp((arc_state_timer/2) - 6, 0, 100), anchor_x-4, anchor_y + arc_state_timer, 2, 2, c_white, 1)
        draw_sprite_part_ext(sprite_get("arc_line"), floor(arc_gametimer/2), 0, 0, 5, clamp((arc_state_timer/2), 0, 12), anchor_x, anchor_y, 2, 2, c_white, 1)
        break;
        
        case 2:
        draw_sprite_part_ext(sprite_get("arc_line"), floor(arc_gametimer/3), 0, 0, 5, 12, anchor_x, anchor_y, 2, 2, c_white, 1)
        break;
        
        case 3:
        draw_sprite_part_ext(sprite_get("arc_line"), floor(arc_gametimer/3), 0, 0, 5, 12, anchor_x, anchor_y, 2, 2, c_white, 1)
        draw_sprite_ext(sprite_get("arc_exclamation"), 0, sk_x + 12*spr_dir, sk_y + 16, 2, 2, 0, c_white, 1)
        break;
        
        case 4:
        draw_sprite_part_ext(sprite_get("arc_anchor"), 0, 0, 0, 5, 6 - clamp(((60-arc_state_timer)/2) - 6, 0, 100), anchor_x-4, anchor_y + (60-arc_state_timer), 2, 2, c_white, 1)
        draw_sprite_part_ext(sprite_get("arc_line"), 10000000 - floor(arc_gametimer/2), 0, 0, 5, clamp(((60-arc_state_timer)/2), 0, 12), anchor_x, anchor_y, 2, 2, c_white, 1)
        
        switch arc_loot_value {
            case 0:
            break;
            
            case 1: //good loot
            draw_sprite_part_ext(sprite_get("arc_fish"), 0, 0, 0, 5, 7 - clamp(((60-arc_state_timer)/2) - 2, 0, 100), anchor_x-4, anchor_y + 6 + (60-arc_state_timer), 2, 2, c_white, 1)
            break;
            
            case 2: //meh loot
            draw_sprite_part_ext(sprite_get("arc_rock"), 0, 0, 0, 5, 7 - clamp(((60-arc_state_timer)/2) - 2, 0, 100), anchor_x-4, anchor_y + 6 + (60-arc_state_timer), 2, 2, c_white, 1)
            break;
        }
        break;
        
        case 5:
        draw_sprite_ext(sprite_get("arc_anchor"), 0, anchor_x, anchor_y, 2, 2, 0, c_white, 1)
        switch arc_loot_value {
            case 0:
            break;
            
            case 1: //good loot
            draw_sprite_ext(sprite_get("arc_fish"), 0, anchor_x-4, anchor_y + 6, 2, 2, 0, c_white, 1)
            break;
            
            case 2: //meh loot
            draw_sprite_ext(sprite_get("arc_rock"), 0, anchor_x-4, anchor_y + 6, 2, 2, 0, c_white, 1)
            break;
        }
        break;
    }
}
