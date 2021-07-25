var temp_x = x;
var temp_y = y + draw_height;

var plat_option_y = temp_y + 32;
var ambi_option_y = temp_y + 64;

var cursor_x = temp_x;
var cursor_y = temp_y;

// Crouch Please :>
if display_text > 0{
    drawText(x, y - 29, "fName", c_white, 0, 1000, fa_center, 1, 1, 1, "Crouch!");
}

// Menu
if state{
    draw_sprite_ext(sprite_get("small_screen"), 0, x, y + draw_height, 1, 1, 0, c_white, .5);
    
    // Title
    drawText(x, y + draw_height, "fName", c_white, 19, 1000, fa_center, 1, 1, 1, "Training Mode Options");
    
    // Options
    switch(obj_stage_main.platform_select){
        case 0: // Default
            drawText(x, plat_option_y, "fName", c_white, 19, 1000, fa_center, 1, 1, 1, "Plat Pos: Default");
            break;
        case 1: // Left
            drawText(x, plat_option_y, "fName", c_white, 19, 1000, fa_center, 1, 1, 1, "Plat Pos: Left");
            break;
        case 2: // Left Middle
            drawText(x, plat_option_y, "fName", c_white, 19, 1000, fa_center, 1, 1, 1, "Plat Pos: Left Center");
            break;
        case 3: // Middle
            drawText(x, plat_option_y, "fName", c_white, 19, 1000, fa_center, 1, 1, 1, "Plat Pos: Center");
            break;
        case 4: // Right Middle
            drawText(x, plat_option_y, "fName", c_white, 19, 1000, fa_center, 1, 1, 1, "Plat Pos: Right Center");
            break;
        case 5: // Right
            drawText(x, plat_option_y, "fName", c_white, 19, 1000, fa_center, 1, 1, 1, "Plat Pos: Right");
            break;
    }
    switch(obj_stage_main.ambience_on){
        case 0:
            drawText(x, ambi_option_y, "fName", c_white, 19, 1000, fa_center, 1, 1, 1, "Ambience: Quiet");
            break;
        case 1:
            drawText(x, ambi_option_y, "fName", c_white, 19, 1000, fa_center, 1, 1, 1, "Ambience: Off");
            break;
        case 2:
            drawText(x, ambi_option_y, "fName", c_white, 19, 1000, fa_center, 1, 1, 1, "Ambience: On");
            break;
    }
    
	//arrows
	
    if (state == 2) && practice{
        switch(cursor){
            case 1:
                switch(obj_stage_main.platform_select){
                    case 0: // Default
                        cursor_x = temp_x - 70;
                        break;
                    case 1: // Left
                        cursor_x = temp_x - 60;
                        break;
                    case 2: // Left Middle
                        cursor_x = temp_x - 86;
                        break;
                    case 3: // Middle
                        cursor_x = temp_x - 68;
                        break;
                    case 4: // Right Middle
                        cursor_x = temp_x - 88;
                        break;
                    case 5: // Right
                        cursor_x = temp_x - 60;
                        break;
                }
                cursor_y = plat_option_y;
                break;
            case 2:
                switch(obj_stage_main.ambience_on){
                    case 0:
                        cursor_x = temp_x - 64;
                        break;
                    case 1:
                        cursor_x = temp_x - 58;
                        break;
                    case 2:
                        cursor_x = temp_x - 54;
                        break;
                }
                cursor_y = ambi_option_y;
                break;
        }
        draw_sprite_ext(sprite_get("select_arrow"), 0, cursor_x + draw_cursor, cursor_y, 1, 1, 0, c_white, 1);
    }
}

#define drawText(x1, y1, font, color, lineb, linew, align, scale, outline, alpha, text)

draw_set_font(asset_get(font));
draw_set_halign(align);

if outline{
    for (var i = -1; i < 2; i++){
        for (var j = -1; j < 2; j++){
            draw_text_ext_transformed_color(x1 + i * 2, y1 + j * 2, text, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
        }
    }
}

if alpha draw_text_ext_transformed_color(x1, y1, text, lineb, linew, scale, scale, 0, color, color, color, color, alpha);

return [string_width_ext(text, lineb, linew), string_height_ext(text, lineb, linew)];