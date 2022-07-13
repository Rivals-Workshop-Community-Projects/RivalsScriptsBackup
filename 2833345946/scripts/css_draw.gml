//css_draw.gml

user_event(2)
init_shader()

/*
if player_col == custom_slot {
    draw_sprite_ext(sprite_get("_col_icon"), 0, x+icon_x, y+icon_y, 1, 1, 0, c_white, 1)
    draw_sprite_ext(sprite_get("_col_icon_box"), 0, x+icon_x, y+icon_y, 1, 1, 0, icon_hovering ? c_white : c_black, 1)
    
    if customise {
        //hue bar
        hue_alpha = lerp(hue_alpha, slider == 0 ? 1 : 0.3, 0.2)
        var _x = x+slider_offsets[0][0]
        var _y = y+slider_offsets[0][1]
        var _marker_offset = (col_hsv[0]*200/256) - 3
        draw_sprite_ext(sprite_get("_col_slider_box"), 0, _x, _y, 1, 1, 0, c_white, hue_alpha)
        draw_sprite_ext(sprite_get("_col_hue"), 0, _x, _y, 1, 1, 0, c_white, hue_alpha)
        draw_sprite_ext(sprite_get("_col_slider_marker"), 0, _x+_marker_offset, _y, 1, 1, 0, c_white, hue_alpha)
        
        //sat bar
        sat_alpha = lerp(sat_alpha, slider == 1 ? 1 : 0.3, 0.2)
        var _x = x+slider_offsets[1][0]
        var _y = y+slider_offsets[1][1]
        var _marker_offset = (col_hsv[1]*200/256) - 3
        draw_sprite_ext(sprite_get("_col_slider_box"), 0, _x, _y, 1, 1, 0, c_white, sat_alpha)
        draw_sprite_ext(sprite_get("_col_slider_bg"), 0, _x, _y, 1, 1, 0, c_white, sat_alpha)
        draw_sprite_ext(sprite_get("_col_satval"), 0, _x, _y, 1, 1, 0, hue_col, sat_alpha)
        draw_sprite_ext(sprite_get("_col_slider_marker"), 0, _x+_marker_offset, _y, 1, 1, 0, c_white, sat_alpha)
        
        //val bar
        val_alpha = lerp(val_alpha, slider == 2 ? 1 : 0.3, 0.2)
        var _x = x+slider_offsets[2][0]
        var _y = y+slider_offsets[2][1]
        var _marker_offset = (col_hsv[2]*200/256) - 3
        draw_sprite_ext(sprite_get("_col_slider_box"), 0, _x, _y, 1, 1, 0, c_white, val_alpha)
        draw_sprite_ext(sprite_get("_col_slider_bg"), 0, _x, _y, 1, 1, 0, c_black, val_alpha)
        draw_sprite_ext(sprite_get("_col_satval"), 0, _x, _y, 1, 1, 0, hue_col, val_alpha)
        draw_sprite_ext(sprite_get("_col_slider_marker"), 0, _x+_marker_offset, _y, 1, 1, 0, c_white, val_alpha)
        
        //shade squares
        var _x = x+shade_x
        var _y = y+shade_y
        var _w = shade_w
        var _h = shade_h
        var _sep = shade_sep
        for (var i = 0; i < num_shades; i++) {
            var _col_r = get_color_profile_slot_r(player_col, i)
            var _col_g = get_color_profile_slot_g(player_col, i)
            var _col_b = get_color_profile_slot_b(player_col, i)
            var _col_base = make_color_rgb(_col_r,_col_g,_col_b)
            var _alpha = shade_hover == i ? 1 : 0.7
            if shade_hover == i {
                draw_debug_text(floor(_x), floor(_y - 24), shade_names[i])
            }
            draw_set_alpha(_alpha)
            draw_rectangle_color(_x-_w/2 + i*_sep, _y-_h/2, _x+_w/2 + i*_sep, _y+_h/2, _col_base,_col_base,_col_base,_col_base, false)
            if i == shade_slot || i == shade_hover draw_rectangle_color(_x-_w/2 + i*_sep, _y-_h/2, _x+_w/2 + i*_sep, _y+_h/2, c_white,c_white,c_white,c_white, true)
            draw_set_alpha(1)
        }
        
        //load icon
        draw_sprite_ext(sprite_get("_col_load"), 0, x+load_x, y+load_y, 1, 1, 0, c_white, 1)
        draw_sprite_ext(sprite_get("_col_icon_box"), 0, x+load_x, y+load_y, 1, 1, 0, load_hovering ? c_white : c_black, 1)
    }
}
*/
/*
for (var i = 0; i < num_shades; i++) {
    for (var j = 0; j < bit_cols; j++) {
        var _c = predetermined_cols[i][j]
        draw_rectangle_color(j*12, 60+i*12, j*12 + 10, 60+i*12 + 10, _c,_c,_c,_c, false)
    }
}
*/