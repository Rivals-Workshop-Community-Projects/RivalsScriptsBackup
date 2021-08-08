if !loaded exit

draw_set_valign(fa_top);



textDraw(x - 80, y - 193, "fName", c_white, 300, 300, fa_center, 1, 1, 1, string(other.team[0]))
textDraw(x + 80, y - 193, "fName", c_white, 300, 300, fa_center, 1, 1, 1, string(other.team[1]))

with oPlayer {
    if player = 1 {
        shader_start()
        draw_sprite_ext(other.select[0], 0, other.x - 364, other.y - 340, 2, 2, 0, c_white, 1);
        shader_end()
    }

    if player = 2 {
        shader_start()
        draw_sprite_ext(other.select[1], 0, other.x + 364, other.y - 340, -2, 2, 0, c_white, 1);
        shader_end()
    }

}

draw_sprite_ext(sprite_get("logos"), team1[0], x - 148, y - 340, 2, 2, 0, c_white, 1);
draw_sprite_ext(sprite_get("logos"), team1[1], x + 14, y - 340, 2, 2, 0, c_white, 1);

textDraw(x - 160, y - 181, "fName", c_white, 300, 300, fa_right, 1, 1, 1, string(name[0]))
textDraw(x + 162, y - 181, "fName", c_white, 300, 300, fa_left, 1, 1, 1, string(name[1]))

with oPlayer {
    if player = 1 {
        switch (get_player_stocks(player)) {
        case 3:
            shader_start()
            draw_sprite_ext(other.icon[0], 0, other.x - 138, other.y - 168, 2, 2, 0, c_white, 1);
            draw_sprite_ext(other.icon[0], 0, other.x - 96, other.y - 168, 2, 2, 0, c_white, 1);
            draw_sprite_ext(other.icon[0], 0, other.x - 54, other.y - 168, 2, 2, 0, c_white, 1);
            shader_end()
            break;
        case 2:
            shader_start()
            draw_sprite_ext(other.icon[0], 0, other.x - 138, other.y - 168, 2, 2, 0, c_white, 1);
            draw_sprite_ext(other.icon[0], 0, other.x - 96, other.y - 168, 2, 2, 0, c_white, 1);
            draw_sprite_ext(other.icon[0], 0, other.x - 54, other.y - 168, 2, 2, 0, c_white, .1);
            shader_end()
            break;
        case 1:
            shader_start()
            draw_sprite_ext(other.icon[0], 0, other.x - 138, other.y - 168, 2, 2, 0, c_white, 1);
            draw_sprite_ext(other.icon[0], 0, other.x - 96, other.y - 168, 2, 2, 0, c_white, .1);
            draw_sprite_ext(other.icon[0], 0, other.x - 54, other.y - 168, 2, 2, 0, c_white, .1);
            shader_end()
            break;
        case 0:
            shader_start()
            draw_sprite_ext(other.icon[0], 0, other.x - 138, other.y - 168, 2, 2, 0, c_white, .1);
            draw_sprite_ext(other.icon[0], 0, other.x - 96, other.y - 168, 2, 2, 0, c_white, .1);
            draw_sprite_ext(other.icon[0], 0, other.x - 54, other.y - 168, 2, 2, 0, c_white, .1);
            shader_end()
            break;
        default:
        }

    }
    if player = 2 {
        switch (get_player_stocks(player)) {
        case 3:
            shader_start()
            draw_sprite_ext(other.icon[1], 0, other.x + 138, other.y - 168, -2, 2, 0, c_white, 1);
            draw_sprite_ext(other.icon[1], 0, other.x + 96, other.y - 168, -2, 2, 0, c_white, 1);
            draw_sprite_ext(other.icon[1], 0, other.x + 54, other.y - 168, -2, 2, 0, c_white, 1);
            shader_end()
            break;
        case 2:
            shader_start()
            draw_sprite_ext(other.icon[1], 0, other.x + 138, other.y - 168, -2, 2, 0, c_white, 1);
            draw_sprite_ext(other.icon[1], 0, other.x + 96, other.y - 168, -2, 2, 0, c_white, 1);
            draw_sprite_ext(other.icon[1], 0, other.x + 54, other.y - 168, -2, 2, 0, c_white, .1);
            shader_end()
            break;
        case 1:
            shader_start()
            draw_sprite_ext(other.icon[1], 0, other.x + 138, other.y - 168, -2, 2, 0, c_white, 1);
            draw_sprite_ext(other.icon[1], 0, other.x + 96, other.y - 168, -2, 2, 0, c_white, .1);
            draw_sprite_ext(other.icon[1], 0, other.x + 54, other.y - 168, -2, 2, 0, c_white, .1);
            shader_end()
            break;
        case 0:
            shader_start()
            draw_sprite_ext(other.icon[1], 0, other.x + 138, other.y - 168, -2, 2, 0, c_white, .1);
            draw_sprite_ext(other.icon[1], 0, other.x + 96, other.y - 168, -2, 2, 0, c_white, .1);
            draw_sprite_ext(other.icon[1], 0, other.x + 54, other.y - 168, -2, 2, 0, c_white, .1);
            shader_end()
            break;
        default:
        }

    }
}



for (var cur = 0; cur < array_length(bg_chars); cur++){
	drawObj(bg_chars[cur]);
}



#define drawObj(obj) // Draw an object to the screen, as long as it has all of the proper image_ variables

draw_sprite_ext(obj.sprite_index, obj.image_index, obj.x, obj.y, obj.image_xscale, obj.image_yscale, obj.image_angle, obj.image_blend, obj.image_alpha);



#define textDraw(x1, y1, font, color, lineb, linew, align, scale, outline, alpha, text)

draw_set_font(asset_get(font));
draw_set_halign(align);

if outline {
    for (i = -1; i < 2; i++) {
        for (j = -1; j < 2; j++) {
            draw_text_ext_transformed_color(x1 + i * 2, y1 + j * 2, text, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
        }
    }
}

draw_text_ext_transformed_color(x1, y1, text, lineb, linew, scale, scale, 0, color, color, color, color, alpha);

return [string_width_ext(text, lineb, linew), string_height_ext(text, lineb, linew)];