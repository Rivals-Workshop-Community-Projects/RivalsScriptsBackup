if (instance_exists(mycat))
{
    var canblink = dspecial_gague >= dspecial_gague_max;
    var blink = dspecial_blink_timer % 12 > 6;
    shader_start();
        if (mycat.visible) {
            draw_sprite_ext(sprite_get("hud_cat"), canblink && blink, temp_x + 96, temp_y - 16, 1, 1, 0, c_white, 1);
            for (var i = 1; i <= dspecial_gague_max; i++) {
                if (i <= dspecial_gague)
                    draw_sprite_ext(sprite_get("hud_dot"), 1 + (canblink && blink), temp_x + 96 + 16 * i, temp_y - 32, 1, 1, 0, c_white, 1);
                else
                    draw_sprite_ext(sprite_get("hud_dot"), 0, temp_x + 96 + 16 * i, temp_y - 32, 1, 1, 0, c_white, 1);
            }
            draw_sprite_ext(sprite_get("hud_catbar"), 0, temp_x + 128, temp_y - 8, 1, 1, 0, c_white, 1);
            draw_sprite_part(sprite_get("hud_catbar"), 1, 0, 0, 80 * (mycat.hitpoints / mycat.hitpoints_max), 16, temp_x + 128, temp_y - 8);
        }
        else {
            draw_sprite_ext(sprite_get("hud_cat"), 2, temp_x + 96, temp_y - 16, 1, 1, 0, c_white, 1);
            for (var i = 1; i <= dspecial_gague_max; i++) {
                 draw_sprite_ext(sprite_get("hud_dot"), 3, temp_x + 96 + 16 * i, temp_y - 32, 1, 1, 0, c_white, 1);
            }
            draw_sprite_ext(sprite_get("hud_catbar"), 0, temp_x + 128, temp_y - 8, 1, 1, 0, c_white, 1);
        }
    shader_end();
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
