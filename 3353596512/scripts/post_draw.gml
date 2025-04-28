//postdraw


//draw_debug_text(x, y, "Bonus: " + string(overtime_bonus) + "%");
//draw_debug_text(x, y+16, "Fine: " + string(death_fine));

/*
if (show_result && result_timer > 0){
    draw_debug_text(x, y, "+ " + string(result_scrap));
    if (result_overtime > 0) draw_debug_text(x, y+16, "+ " + string(result_overtime) + " Overtime");
} else {
    draw_debug_text(x, y, "damage: " + string(overtime_damage));
    draw_debug_text(x, y+16, "overtime: " + string(overtime_bonus));
}
if (current_scrap != noone){
draw_debug_text(x, y+32, "current scrap: " + string(current_scrap.name));
draw_debug_text(x, y+48, "scrap size: " + string(current_scrap.size));
}
//draw_debug_text(x, y+64, "gravity: " + string(gravity_speed));
*/
/*
with (pHitBox){
    if (attack == AT_FSPECIAL && player_id == other && hbox_num == 1){
        draw_debug_text(x, y+16, string(hitbox_timer));
    }
}*/

if (state == PS_PARRY){
    switch (window){
        case 0:
            draw_sprite_ext(sprite_get("parry_doorclose"), 0 + (rabbit_suit*9), x, y, 2, 2, 0, c_white, 1);
        break;
    }
}

if (state == PS_RESPAWN || respawn_taunt > 0) && (visible){
    if (respawn_timer <= 95){
         draw_sprite_ext(sprite_get("parry"), 2, x, y, 2, 2, 0, c_white, 1);
    }
    draw_sprite_ext(sprite_get("plat_real"), 0, x, y, 2, 2, 0, c_white, 1);
}

if (draw_indicator){
if (uspec_gauge_fade > 0){
    draw_sprite_ext(sprite_get("uspec_gauge"), 0, x - 36, ((y - 92) - hud_offset) - rabbit_suit*16, 2, 2, 0, c_white, min(uspec_gauge_fade/10, 1));
    draw_sprite_part_ext(sprite_get("uspec_gauge_fill"), 0, 0, 0, 23 * jetpack_fuel/jetpack_fuel_max, 2, x - 16, ((y - 86) - hud_offset) - rabbit_suit*16, 2, 2, c_white, min(uspec_gauge_fade/10, 1));
    if (cant_use_jetpack){
        draw_sprite_ext(sprite_get("uspec_gauge"), 0, x - 36, ((y - 92) - hud_offset) - rabbit_suit*16, 2, 2, 0, c_black, 0.5);
    }
}
if (jeb_cooldown > 0){
    draw_sprite_ext(sprite_get("hud_cantsell"), get_gameplay_time()/12, x - (52 + (string_length(string(get_player_name(player)) ) > 4? (string_length(string(get_player_name(player)))*2) - 6 : 0)),  y - (46 + char_height + hud_offset), 2, 2, 0, c_white, 1);
}

if (has_scrap){
    draw_sprite_ext(sprite_get("hud_has_scrap"), 0, x + 20 + (string_length(string(get_player_name(player)) ) > 4? (string_length(string(get_player_name(player)))*2) - 6 : 0), y - (48 + char_height + hud_offset), 2, 2, 0, c_white, 1)
}

}


if (current_scrap != noone && is_attacking && attack == AT_DSPECIAL && !scan_nofind) && (window >= 3 && window < 7){
    draw_scrap_dspec();
}

if (current_scrap != noone && has_scrap && is_attacking && attack == AT_DSPECIAL_2){
    draw_scrap_throw();
}

if (got_masked && id == masked_id){ //replace with url later
        draw_sprite_ext(mask_sprite, masked_index + mask_type*7, x + 6*spr_dir, mask_position, 2*spr_dir, 2, 0, c_white, 1);
    }
    
if (scrap_visual){
        draw_sprite_ext(sprite_get("scan_scrap_inner"), 0, scrap_visual_x + (scrap_visual_size == 0? 26 : 18)*scrap_visual_dir, scrap_visual_y - (scrap_visual_size == 0? 38 : 44), scrap_visual_zoom_inner*scrap_visual_dir, scrap_visual_zoom_inner, 0, c_white, scrap_visual_alpha*0.5);
        draw_sprite_ext(sprite_get("scan_scrap_outer"), 0, scrap_visual_x - (scrap_visual_size == 0 ? 2 : 10)*scrap_visual_dir, scrap_visual_y - (scrap_visual_size == 0? 66 : 72), scrap_visual_zoom_outer*scrap_visual_dir, scrap_visual_zoom_outer, 0, c_white, scrap_visual_alpha*0.5);
        draw_sprite_ext(sprite_get("scan_scrap_box_upper"), 0, scrap_visual_x + (scrap_visual_dir == 1? (46 - scrap_visual_size*8) : (-8 + scrap_visual_size*8)), scrap_visual_y - (54 + scrap_visual_size*8), scrap_box_upper + 0.2, 2, 0, c_white, (scrap_visual_alpha+0.4)*0.4);
        draw_sprite_ext(sprite_get("scan_scrap_box_lower"), 0, scrap_visual_x + (scrap_visual_dir == 1? (46 - scrap_visual_size*8) : (-8 + scrap_visual_size*8)), scrap_visual_y - (30 + scrap_visual_size*8), scrap_box_lower + 0.4, 2, 0, c_white, (scrap_visual_alpha+0.4)*0.4);
        textDraw(scrap_visual_x + (scrap_visual_dir == 1? (48 - scrap_visual_size*8) : (-6 + scrap_visual_size*8)), scrap_visual_y - (50 + scrap_visual_size*8), "fName", $34ee16, 0, 9999, fa_left, 1, 0, scrap_visual_alpha, string(scrap_visual_name), 0);
        textDraw(scrap_visual_x + (scrap_visual_dir == 1? (48 - scrap_visual_size*8) : (-6 + scrap_visual_size*8)), scrap_visual_y - (29 + scrap_visual_size*8), "fName", $34ee16, 0, 9999, fa_left, 1, 0, scrap_visual_alpha, "Value: ", 0);
        draw_set_halign(fa_left);
        draw_set_font(quota_font);
        draw_text_ext_transformed_color(scrap_visual_x + (scrap_visual_dir == 1? (86 - scrap_visual_size*8) : (32 + scrap_visual_size*8)), scrap_visual_y - (32 + scrap_visual_size*8), "c" + string(scrap_visual_value), 0, 9999, 1, 1, 0, c_white, c_white, c_white, c_white, scrap_visual_alpha);
    
}

if (is_attacking && attack == AT_USPECIAL_2 && hsp != 0 && window == 2){
    draw_sprite_ext(sprite_get("uspecial2_wheels"), wheels_index, x, y, 2*spr_dir, 2, 0, c_white, 1);
}

#define textDraw(x1, y1, font, color, lineb, linew, align, scale, outline, alpha, text, array_bool)

draw_set_font(asset_get(font));
draw_set_halign(align);

if outline {
    for (i = -1; i < 2; i++) {
        for (j = -1; j < 2; j++) {
            draw_text_ext_transformed_color(floor(x1) + i * 2, floor(y1) + j * 2, text, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
        }
    }
}

if alpha > 0 draw_text_ext_transformed_color(x1, y1, text, lineb, linew, scale, scale, 0, color, color, color, color, alpha);

if array_bool return [string_width_ext(text, lineb, linew), string_height_ext(text, lineb, linew)];
else return;

#define draw_scrap_dspec()

    switch (image_index){
    case 7:
    case 23:
        draw_sprite_ext(sprite_get("scrap_proj"), current_scrap.index, x + 34*spr_dir, y - 48, 1*spr_dir, 1, 0, c_white, 1);
        if (current_scrap.index == 30){
            draw_sprite_ext(sprite_get("scrap_cork_visual"), 0, x + 34*spr_dir, y - 48, 1*spr_dir, 1, 0, c_white, 1);
        }
    break;
    case 8:
    case 24:
        draw_sprite_ext(sprite_get("scrap_proj"), current_scrap.index, x + 38*spr_dir, y - 26, 1*spr_dir, 1, 0, c_white, 1);
        if (current_scrap.index == 30){
            draw_sprite_ext(sprite_get("scrap_cork_visual"), 0, x + 38*spr_dir, y - 26, 1*spr_dir, 1, 0, c_white, 1);
        }
    break;
    case 9:
    case 25:
        draw_sprite_ext(sprite_get("scrap_proj"), current_scrap.index, x + 32*spr_dir, y - 34, 1*spr_dir, 1, 0, c_white, 1);
        if (current_scrap.index == 30){
            draw_sprite_ext(sprite_get("scrap_cork_visual"), 0, x + 32*spr_dir, y - 34, 1*spr_dir, 1, 0, c_white, 1);
        }
    break;
    case 10:
    case 26:
        draw_sprite_ext(sprite_get("scrap_proj"), current_scrap.index, x + 28*spr_dir, y - 36, 1*spr_dir, 1, 0, c_white, 1);
        if (current_scrap.index == 30){
            draw_sprite_ext(sprite_get("scrap_cork_visual"), 0, x + 28*spr_dir, y - 36, 1*spr_dir, 1, 0, c_white, 1);
        }
    break;
    case 11:
    case 27:
        draw_sprite_ext(sprite_get("scrap_proj"), current_scrap.index, x + 26*spr_dir, y - 28, 1*spr_dir, 1, 0, c_white, 1);
        if (current_scrap.index == 30){
            draw_sprite_ext(sprite_get("scrap_cork_visual"), 0, x + 26*spr_dir, y - 28, 1*spr_dir, 1, 0, c_white, 1);
        }
    break;
    case 12:
    case 28:
        draw_sprite_ext(sprite_get("scrap_large"), current_scrap.index - (current_scrap.index <= 15? 11 : 22), x + 22*spr_dir, y - 38, 1*spr_dir, 1, 0, c_white, 1);
    break;
    case 13:
    case 29:
        draw_sprite_ext(sprite_get("scrap_large"), current_scrap.index - (current_scrap.index <= 15? 11 : 22), x + 18*spr_dir, y - 42, 1*spr_dir, 1, 0, c_white, 1);
    break;
    case 14:
    case 30:
        draw_sprite_ext(sprite_get("scrap_large"), current_scrap.index - (current_scrap.index <= 15? 11 : 22), x + 18*spr_dir, y - 44, 1*spr_dir, 1, 0, c_white, 1);
    break;
    case 15:
    case 31:
        draw_sprite_ext(sprite_get("scrap_proj"), current_scrap.index, x + 2*spr_dir, y - 28, 1*spr_dir, 1, 0, c_white, 1);
    break;
    
    }
    
#define draw_scrap_throw()

switch (image_index){
//FORWARD THROW
    case 0:
    case 45:
        draw_sprite_ext(sprite_get("scrap_proj"), current_scrap.index, x + 26*spr_dir, y - 44, 1*spr_dir, 1, 0, c_white, 1);
    break;
    case 1:
    case 46:
        draw_sprite_ext(sprite_get("scrap_proj"), current_scrap.index, x - 12*spr_dir, y - 86, 1*spr_dir, 1, 0, c_white, 1);
    break;
    case 2:
    case 47:
        draw_sprite_ext(sprite_get("scrap_proj"), current_scrap.index, x - 16*spr_dir, y - 80, 1*spr_dir, 1, 0, c_white, 1);
    break;
    
    case 21:
    case 66:
        draw_sprite_ext(sprite_get("scrap_large"), current_scrap.index - (current_scrap.index <= 15? 11 : 22), x + 14*spr_dir, y - 56, 1*spr_dir, 1, 0, c_white, 1);
    break;
    case 22:
    case 67:
        draw_sprite_ext(sprite_get("scrap_large"), current_scrap.index - (current_scrap.index <= 15? 11 : 22), x - 18*spr_dir, y - 86, 1*spr_dir, 1, 0, c_white, 1);
    break;
    case 23:
    case 68:
        draw_sprite_ext(sprite_get("scrap_large"), current_scrap.index - (current_scrap.index <= 15? 11 : 22), x - 24*spr_dir, y - 82, 1*spr_dir, 1, 0, c_white, 1);
    break;
    case 24:
    case 69:
        draw_sprite_ext(sprite_get("scrap_large"), current_scrap.index - (current_scrap.index <= 15? 11 : 22), x - 2*spr_dir, y - 84, 1*spr_dir, 1, 0, c_white, 1);
    break;
    
//UP THROW
    case 7:
    case 52:
        draw_sprite_ext(sprite_get("scrap_proj"), current_scrap.index, x + 30*spr_dir, y - 54, 1*spr_dir, 1, 0, c_white, 1);
    break;
    case 8:
    case 53:
        draw_sprite_ext(sprite_get("scrap_proj"), current_scrap.index, x - 16*spr_dir, y - 64, 1*spr_dir, 1, 0, c_white, 1);
    break;
    case 9:
    case 54:
        draw_sprite_ext(sprite_get("scrap_proj"), current_scrap.index, x - 20*spr_dir, y - 56, 1*spr_dir, 1, 0, c_white, 1);
    break;
    
    case 29:
    case 74:
        draw_sprite_ext(sprite_get("scrap_large"), current_scrap.index - (current_scrap.index <= 15? 11 : 22), x + 10*spr_dir, y - 72, 1*spr_dir, 1, 0, c_white, 1);
    break;
    case 30:
    case 75:
        draw_sprite_ext(sprite_get("scrap_large"), current_scrap.index - (current_scrap.index <= 15? 11 : 22), x - 16*spr_dir, y - 70, 1*spr_dir, 1, 0, c_white, 1);
    break;
    case 31:
    case 76:
        draw_sprite_ext(sprite_get("scrap_large"), current_scrap.index - (current_scrap.index <= 15? 11 : 22), x - 20*spr_dir, y - 66, 1*spr_dir, 1, 0, c_white, 1);
    break;
    case 32:
    case 77:
        draw_sprite_ext(sprite_get("scrap_large"), current_scrap.index - (current_scrap.index <= 15? 11 : 22), x - 10*spr_dir, y - 84, 1*spr_dir, 1, 0, c_white, 1);
    break;
    
//DOWN THROW
    case 14:
    case 59:
        draw_sprite_ext(sprite_get("scrap_proj"), current_scrap.index, x + 28*spr_dir, y - 54, 1*spr_dir, 1, 0, c_white, 1);
    break;
    case 15:
    case 60:
        draw_sprite_ext(sprite_get("scrap_proj"), current_scrap.index, x + 20*spr_dir, y - 82, 1*spr_dir, 1, 0, c_white, 1);
    break;
    case 16:
    case 61:
        draw_sprite_ext(sprite_get("scrap_proj"), current_scrap.index, x + 16*spr_dir, y - 84, 1*spr_dir, 1, 0, c_white, 1);
    break;
    
    case 37:
    case 82:
        draw_sprite_ext(sprite_get("scrap_large"), current_scrap.index - (current_scrap.index <= 15? 11 : 22), x + 4*spr_dir, y - 58, 1*spr_dir, 1, 0, c_white, 1);
    break;
    case 38:
    case 83:
        draw_sprite_ext(sprite_get("scrap_large"), current_scrap.index - (current_scrap.index <= 15? 11 : 22), x - 0*spr_dir, y - 92, 1*spr_dir, 1, 0, c_white, 1);
    break;
    case 39:
    case 84:
        draw_sprite_ext(sprite_get("scrap_large"), current_scrap.index - (current_scrap.index <= 15? 11 : 22), x - 0*spr_dir, y - 94, 1*spr_dir, 1, 0, c_white, 1);
    break;
    case 40:
    case 85:
        draw_sprite_ext(sprite_get("scrap_large"), current_scrap.index - (current_scrap.index <= 15? 11 : 22), x - 0*spr_dir, y - 76, 1*spr_dir, 1, 0, c_white, 1);
    break;
    
}