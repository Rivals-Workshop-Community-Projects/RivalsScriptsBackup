// if(!is_ai) exit;

// if(keyboard_lastkey == 84) {
// 	keyboard_lastkey = 0;
// 	showing_thoughts = !showing_thoughts;
// }
// if(!showing_thoughts) exit;

// var thinky_x = x + 20, thinky_y = y - 140, thinky_col = ai_thoughts_colour, thinky_alpha = 0.7, text_col = make_colour_hsv(255 - colour_get_hue(thinky_col), colour_get_saturation(thinky_col), 255 - colour_get_value(thinky_col));

// draw_sprite_ext(thoughts_bubble, 0, thinky_x + 18, thinky_y + 60, 2, 2, 0, thinky_col, thinky_alpha);
// draw_sprite_ext(thoughts_bubble, 1, thinky_x, thinky_y, 2, 2, 0, thinky_col, thinky_alpha);

// draw_set_font(asset_get("roaMBLFont")); draw_set_halign(fa_left); draw_set_valign(fa_center); draw_set_colour(text_col);
// var thinky_xscale = 1.1, thinky_width = thinky_xscale * string_width(ai_thoughts), represented_thinky_width = 0;
// while(represented_thinky_width + 48 < thinky_width) {
// 	draw_sprite_ext(thoughts_bubble, 2, thinky_x + 58 + represented_thinky_width, thinky_y, 2, 2, 0, thinky_col, thinky_alpha);
// 	represented_thinky_width += 58;
// }

// draw_sprite_ext(thoughts_bubble, 3, thinky_x + 58 + represented_thinky_width, thinky_y, 2, 2, 0, thinky_col, thinky_alpha);

// draw_text_transformed(thinky_x + 33, thinky_y + 30, ai_thoughts, thinky_xscale, 1.5, 0);

// // draw_rectangle_color(my_hit_left, my_hit_top, my_hit_right, my_hit_bottom, c_red, c_red, c_red, c_red, c_red)
// // draw_rectangle_color(target_left, target_top, target_right, target_bottom, c_blue, c_blue, c_blue, c_blue, c_blue)
// for (var rect_i=0; rect_i<array_length(rects_to_draw); rect_i++) {
// 	var this_rect = rects_to_draw[rect_i]
// 	draw_rectangle_color(this_rect.left, this_rect.top, this_rect.right, this_rect.bottom, this_rect.color, this_rect.color, this_rect.color, this_rect.color, this_rect.color)
// }
// rects_to_draw = []

// #define prints // Version 0
//     // Prints each parameter to console, separated by spaces.
//     var _out_string = string(argument[0])
//     for (var i=1; i<argument_count; i++) {
//         _out_string += " "
//         _out_string += string(argument[i])
//     }
//     print(_out_string)