//
/*
shader_start();
var spriteX = temp_x + 28;
var spriteY = temp_y + 8;
var oldSpeed = sqrt(old_vsp*old_vsp + old_hsp*old_hsp);

if (zoID != undefined) && (instance_exists(zoID)) {
    var zoOldSpeed = zoID.hitKnockback;
    if (zoID.state == PS_HITSTUN) && (zoOldSpeed >= 10) {
        draw_sprite(sprite_get("hud_zo_hurt"), 0, spriteX, spriteY);
    } else {
        draw_sprite(sprite_get("hud_zo"), 0, spriteX, spriteY);
    }
} else {
    draw_sprite_ext(sprite_get("hud_zo_hurt"), 0, spriteX, spriteY, 1, 1, 0, c_gray, 1);
}

if (justDied > 0) {
    draw_sprite(sprite_get("hud_ru_hurt"), 0, spriteX, spriteY);
} else {
    if (oldSpeed >= 10) && (state == PS_HITSTUN) {
        draw_sprite(sprite_get("hud_ru_hurt"), 0, spriteX, spriteY);
    } else {
        draw_sprite(sprite_get("hud_ru"), 0, spriteX, spriteY);
    }
}
shader_end();
*/

var iconX = temp_x + 200;
var iconY = temp_y;
var iconColour = c_gray;
//print_debug(string(zoID.shieldEndTimer))
if (zoID != undefined) && (instance_exists(zoID))  {
    if (zoID.shieldEndTimer > zoID.shieldMaxTime || zoID.shieldActive || runeF) {
        iconColour = c_white;
    } else {
        iconColour = c_gray;
    }
}
draw_sprite_ext(sprite_get("shield_B_hud"), 0, iconX, iconY, 1, 1, 0, iconColour, 1);

if (zoID != undefined) && (instance_exists(zoID)) {
    var textX = temp_x + 154;
    var textY = temp_y + 10;
    draw_debug_text(textX, textY, string(zoID.damage) + "%");
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

#define draw_text_colour_outline
///draw_text_colour_outline(x, y, string, textColor1, textColor2, textAlpha, outlineColor1, outlineColor2, outlineAlpha, outlineThickness, outlineQuality, xscale, yscale, angle);
//By Blokatt - @blokatt, blokatt.net
var i;
for (i = 0; i < 360; i += 360 / argument10){
    draw_text_transformed_color(argument0 + lengthdir_x(argument9, i), argument1 + lengthdir_y(argument9, i), string(argument2), argument11, argument12, argument13, argument6, argument6, argument7, argument7, argument8);
}
draw_text_transformed_color(argument0, argument1, string(argument2), argument11, argument12, argument13, argument3, argument3, argument4, argument4, argument5);