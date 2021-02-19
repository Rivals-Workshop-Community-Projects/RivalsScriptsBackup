// HODAN'S DRAW_HUD

if ("practice_mode" in self && practice_mode) {
    // Practice Mode Steam Stuff
    var selected_line = 0; // Draw_hud; the line currently selected
    hud_x = temp_x - 8; // Draw_hud; the x value of the hud;
    hud_y = temp_y + 14; // Draw_hud; the y value of the hud;
    var taunt_pos_x = hud_x + 188; // Draw_hud; determining the x value of the taunt indicator
    var taunt_pos_y = hud_y - 34; // Draw_hud; determining the y value of the taunt indicator7
    var steam_x_value = hud_x + 10; // Draw_hud; the x position for the regular steam indicator
    var v_steam_x_value = hud_x + 104; // Draw_hud; the x position for the vertical steam indicator
    var steam_y_value = hud_y - 20; // Draw_hud; the y position for the steam indicators
    var taunt_close_pos_y = hud_y - 244; // Draw_hud; determining the y value of the taunt indicator
    var left_line_x = hud_x + 18; // Draw_hud; determining the x value for left-aligned text
    var right_line_x = hud_x + 182; // Draw_hud; determining the x value for right-aligned text
    var centre_line_x = hud_x + 97; // Draw_hud; the x value of centered text 47 once you add frame data
    var title_x = hud_x + 113; // Draw_hud; the x value for titles
    var starting_line_y = hud_y - 212; // Draw_hud; determinign the starting y-value for all lines
    var cursor_x = hud_x + 4; // Draw_hud; the x value of the cursor
    var rcursor_x = hud_x + hud_w - 4; // Draw_hud; the x value of the right cursor
    var framedata_cursor_adj = 16; // Draw_hud; how much the cursors go in when on the framedata page
    for (i = 0; i < 12; i++) {
        line_y[i] = starting_line_y + line_height * i;
    }
    
    if (inf_steam_override) {
        inf_steam_text = "Yes";
    } else {
        inf_steam_text = "No";
    }
    if (player_info) {
        steam_player_text = "Yes";
    } else {
        steam_player_text = "No";
    }
    if (god_mode) {
        god_mode_text = "Yes";
    } else {
        god_mode_text = "No";
    }
    
    if (!("is_ai" in self)) {
        if (invis_hud) {
            // Check if the hud is supposed to be invisible, then draw
            // the hud overlay judging by the frame given.
            draw_sprite(sprite_get("invishud" + string(player)), bighud_frame, hud_x, hud_y);
        } else {
            draw_sprite(sprite_get("bighud" + string(player)), bighud_frame, hud_x, hud_y);
        }
        
        draw_set_font(asset_get("fName")); // Set the font to default rivals font
        if (taunt_direction == -1) {
            taunt_angle -= taunt_speed;
        } else {
            taunt_angle += taunt_speed;
        }
        if (taunt_angle == -taunt_max || taunt_angle == taunt_max) {
            taunt_direction *= -1;
        }
        if (!taunt_menu && !taunt_switched) {
            // Display the text saying to open the menu at all times
            draw_set_halign(fa_center);
            for (i = -1; i < 2; i++) {
                for (j = -1; j < 2; j++) {
                    // Outlines the text by making black versions of it in all directions
                    draw_text_transformed_colour(taunt_pos_x + i * 2, taunt_pos_y + j * 2, 
                    taunt_open_text, 1, 1, taunt_angle, c_black, c_black, c_black, c_black, 1);
                }
            }
            draw_text_transformed_colour(taunt_pos_x, taunt_pos_y, 
            taunt_open_text, 1, 1, taunt_angle, c_white, c_white, c_white, c_white, 1);
        } else if (taunt_menu && taunt_switched) {
            
                // Display the text saying to open the menu at all times
                // Magic numbers because all these values are so specific, sorry :(
                draw_debug_text(taunt_pos_x, taunt_close_pos_y, "Taunt:");
                draw_debug_text(taunt_pos_x + 5, taunt_close_pos_y + 15, "Close");
                draw_debug_text(taunt_pos_x - 194, taunt_close_pos_y, "↑+Taunt:");
                if (taunt_frozen) {
                    draw_debug_text(taunt_pos_x - 193, taunt_close_pos_y + 15, "Unfreeze");
                } else {
                    draw_debug_text(taunt_pos_x - 185, taunt_close_pos_y + 15, "Freeze");
                }
                
            if (!frame_data) {
                // Rest of taunt menu options
                // Tbh I was gonna write an API for this but I got lazy: so this is mostly hardcoded.
                // Don't be me. Don't do this.
                draw_debug_text(left_line_x, line_y[1], "Steam Player Display:");
                draw_debug_text(right_line_x, line_y[1], steam_player_text);
                draw_debug_text(left_line_x, line_y[4], "Infinite Steam:");
                draw_debug_text(right_line_x, line_y[4], inf_steam_text);
                draw_debug_text(left_line_x, line_y[7], "God Mode:");
                draw_debug_text(right_line_x, line_y[7], god_mode_text);
                draw_debug_text(centre_line_x, line_y[10], "Info");
                draw_sprite(sprite_get("cursor" + string(player)), cursor_frame, cursor_x, line_y[cursor_line]);
            } else {
                // Draw the left and right cursors at all times
                draw_sprite_ext(sprite_get("cursor" + string(player)), cursor_frame, cursor_x + framedata_cursor_adj, line_y[0], -1, 1, 0, c_white, 1);
                draw_sprite(sprite_get("cursor" + string(player)), cursor_frame, rcursor_x - framedata_cursor_adj, line_y[0]);
                draw_set_halign(fa_center);
                for (i = -1; i < 2; i++) {
                    for (j = -1; j < 2; j++) {
                        // Outlines the text by making black versions of it in all directions
                        draw_text_transformed_colour(title_x + i * 2, line_y[0] + j * 2, 
                        "Steam Info", 1, 1, 0, c_black, c_black, c_black, c_black, 1);
                    }
                }
                draw_text_transformed_colour(title_x, line_y[0], 
                "Steam Info", 1, 1, 0, c_white, c_white, c_white, c_white, 1);
                draw_debug_text(left_line_x, line_y[1], steam_text[displayed_steam_text]);
            }
        }
    } else {
        // AI always have the default gray one
        draw_sprite(sprite_get("bighud5"), 0, hud_x, hud_y);
    }
    // Display the steam amount always
    draw_debug_text(steam_x_value, steam_y_value, "Steam: " + string(steam));
    draw_debug_text(v_steam_x_value, steam_y_value, "V. Steam: " + string(v_steam));
}

//abyss gui code
ab_hud_x = temp_x;
ab_hud_y = temp_y;
//this is for the outdated warning message
if ("depNotice" not in self) depNotice = 0;
if ("abyssEnabled" in self && abyssEnabled && (menuActive || timerActive)) abyssDraw();
#define abyssDraw 
/// abyssDraw()
/// draws text and images the player recieved from the abyss buddy.
if ("abyss_drawArray" in self && ds_list_valid(abyss_drawArray))  {
    if (ds_list_size(abyss_drawArray) > 0) {
        for (var _i = 0; _i < ds_list_size(abyss_drawArray);_i++) {
            var _text = abyss_drawArray[| _i];
            if draw_get_halign() != _text[6] {
                draw_set_halign(_text[6]);
            }
            switch (_text[0]) {
                case 0:
                    draw_debug_text(floor(_text[1]),floor(_text[2]),string(_text[3]));
                    break;
                case 1:
                    draw_sprite_ext(_text[3],_text[5],_text[1],_text[2],1,1,0,_text[4],1);
                    break;
                case 2:
                    draw_text_plus(floor(_text[1]),floor(_text[2]),string(_text[3]),floor(_text[5]),floor(_text[4]));
                    break;
                case 3:
                    if draw_get_font() != 1 draw_set_font(1);
              draw_text_ext_color(floor(_text[1]),floor(_text[2]),string(_text[3]),16,floor(_text[5]),_text[4],_text[4],_text[4],_text[4], 1);
                    break;
                default:
                break;
            }
        }
    }
    //finished drawing, so clear the table for the next frame.
    ds_list_clear(abyss_drawArray);
}
//return draw_calls;
#define draw_text_plus
/// draw_text_plus(x, y, text, font, color = c_white)
/// draws outlined text in any in-game font.
if draw_get_font() != argument[3] {
    draw_set_font(argument[3]);
}
draw_text_color(argument[0]+2,argument[1],argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]-2,argument[1],argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0],argument[1]-2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0],argument[1]+2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]+2,argument[1]-2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]-2,argument[1]-2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]+2,argument[1]+2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0]-2,argument[1]+2,argument[2],c_black,c_black,c_black,c_black,1);
draw_text_color(argument[0],argument[1],argument[2],argument_count > 4 ? argument[4] : c_white,argument_count > 4 ? argument[4] : c_white,argument_count > 4 ? argument[4] : c_white,argument_count > 4 ? argument[4] : c_white,1);