// draw hud



draw_sprite(sprite_get("nowplaying"),0,temp_x + 152,temp_y - 20);


var is_turn = false;
with (obj_article1)
{
    if (player_id == other)
    {
        var is_turn = true;
        var inst = self;
    }
}


if (is_turn)
{
    switch (inst.col){
        case 0:
        	var sprite = sprite_get("cd_black")
        break;
        case 1:
        	var sprite = sprite_get("cd_blue")
        break;
        case 2:
            var sprite = sprite_get("cd_green")
        break;
        case 3:
        	var sprite = sprite_get("cd_yellow")
        break;
        case 4:
        	var sprite = sprite_get("cd_orange")
        break;
        case 5:
        	var sprite = sprite_get("cd_red")
        break;
        case 6:
        	var sprite = sprite_get("cd_purple")
        break;
    }

    draw_sprite(sprite,hcd_image,temp_x + 152, temp_y - 20);
    draw_sprite(sprite_get("number"), inst.col,temp_x + 166,temp_y - 18);
}

draw_sprite(sprite_get("nowplaying2"),0,temp_x + 156,temp_y - 34);








//abyss gui code
ab_hud_x = temp_x; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
ab_hud_y = temp_y; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
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

// End rune