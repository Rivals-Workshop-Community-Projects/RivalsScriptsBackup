// MunoPhone Touch code - don't touch
// should be at TOP of file
muno_event_type = 4;  
user_event(14);

shader_start();
//G7 Glitch effect by Giik
if install_timer > 0{
    if (get_player_color(player) == 26 && random_func(4, 2, 1) == 0  && !(is_attacking)) {
    var fs = random_func(0, sprite_height -1, 1);
    draw_sprite_part_ext(sprite_index,image_index,0,fs, abs(sprite_width), random_func(1, 50, 1)+1, (x+(random_func(2, 3, 1)-1)*7) - sprite_get_xoffset(sprite_index)*spr_dir*1, y+fs*1 - sprite_get_yoffset(sprite_index)*1, spr_dir*1, 1, image_blend, .8);
    }
}


    if (get_player_color(player) == 26 && random_func(4, 2, 1) == 0  && !(is_attacking)) {
    var fs = random_func(0, sprite_height -1, 1);
    draw_sprite_part_ext(lantern,image_index,0,fs, abs(sprite_width), random_func(1, 50, 1)+1, (lantern_x+(random_func(2, 3, 1)-1)*7) - sprite_get_xoffset(lantern)*spr_dir*1, lantern_y+fs*1 - sprite_get_yoffset(lantern)*1, spr_dir*1, 1, image_blend, 1);
    }

shader_end();




#define rectDraw(x1, y1, width, height, color)

draw_rectangle_color(x1, y1, x1 + width, y1 + height, color, color, color, color, false);



#define textDraw(x1, y1, font, color, lineb, linew, align, scale, outline, alpha, text, array_bool)

draw_set_font(asset_get(font));
draw_set_halign(align);

if outline {
    for (i = -1; i < 2; i++) {
        for (j = -1; j < 2; j++) {
            draw_text_ext_transformed_color(x1 + i * 2, y1 + j * 2, text, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
        }
    }
}

if alpha draw_text_ext_transformed_color(x1, y1, text, lineb, linew, scale, scale, 0, color, color, color, color, alpha);

if array_bool return [string_width_ext(text, lineb, linew), string_height_ext(text, lineb, linew)];
else return;