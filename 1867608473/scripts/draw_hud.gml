//draw_hud.gml
var temp_color = c_white;

// Draws the gauge above the actual HUD
if "diamondkrisbutbetterkrisbbutbetter" in self && diamondbutbetterkrisbbutbetter{
    if tp_gauge <= 100{
        draw_sprite_ext(guage_sprite, (floor(tp_gauge/1)), temp_x - 5, temp_y - 21, 1, 1, 0, c_white, 1);
        draw_sprite_ext(guage_sprite, 0, temp_x - 5, temp_y - 42, 1, 1, 0, c_white, tp2_vis);
    } else {
        draw_sprite_ext(guage_sprite, 100, temp_x - 5, temp_y - 21, 1, 1, 0, c_white, 1);
        draw_sprite_ext(guage_sprite, (floor(tp_gauge/1)), temp_x - 5, temp_y - 42, 1, 1, 0, c_white, tp2_vis);
    }
} else if "guage_sprite" in self {
    draw_sprite(guage_sprite, (floor(tp_gauge/1)), temp_x - 5, temp_y - 21);
}


// Displays the percent of TP currently available
if "tp_gauge" in self {
    draw_debug_text(temp_x + 195, temp_y - 13, string(tp_gauge) + "%");
}

if "diamondbutbetterkrisbbutbetter" in self && diamondbutbetterkrisbbutbetter{
    draw_debug_text(temp_x+0,temp_y-73,"This player just activated");
    draw_debug_text(temp_x+0,temp_y-55,"Diamond Kris. You can DQ them now.");
}

//abyss gui code
if !get_match_setting(SET_RUNES) {
	//abyss gui code
	ab_hud_x = temp_x;
	ab_hud_y = temp_y;
	//this is for the outdated warning message
	if ("depNotice" not in self) depNotice = 0;
	if ("abyssEnabled" in self && abyssEnabled && (menuActive || timerActive)) abyssDraw();
}
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
var x/*:int*/ = argument[0], y/*:int*/ = argument[1], text/*:string*/ = argument[2], font/*:int*/ = argument[3];
var color = argument_count > 4 ? argument[4] : c_white;
if draw_get_font() != font {
    draw_set_font(font);
}
draw_text_color(x+2,y,text,c_black,c_black,c_black,c_black,1);
draw_text_color(x-2,y,text,c_black,c_black,c_black,c_black,1);
draw_text_color(x,y-2,text,c_black,c_black,c_black,c_black,1);
draw_text_color(x,y+2,text,c_black,c_black,c_black,c_black,1);
draw_text_color(x+2,y-2,text,c_black,c_black,c_black,c_black,1);
draw_text_color(x-2,y-2,text,c_black,c_black,c_black,c_black,1);
draw_text_color(x+2,y+2,text,c_black,c_black,c_black,c_black,1);
draw_text_color(x-2,y+2,text,c_black,c_black,c_black,c_black,1);
draw_text_color(x,y,text,color,color,color,color,1);