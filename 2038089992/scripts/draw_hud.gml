//draw-hud
if !("meter_water" in self) {
    exit;
}
shader_start();

var xOffset = temp_x + 24;
var yOffset = temp_y + 6;

//meter
var waterMeter = ceil(16 * meter_water/meter_capacity);
var steamMeter = ceil(16 * (meter_water + meter_steam)/meter_capacity);

if (allRunes) {
    draw_sprite(sprite_get("gold_meter_hud"), 0, xOffset, yOffset);
} else {
    draw_sprite(sprite_get("meter_hud"), 0, xOffset, yOffset);
}

draw_sprite(sprite_get("steam_hud"), steamMeter, xOffset, yOffset);
draw_sprite(sprite_get("water_hud"), waterMeter, xOffset, yOffset);

var limitMeter = ceil(16 * limitBreakCharge/100);
draw_sprite(sprite_get("limit_hud"), limitMeter, xOffset, yOffset);
if (limitBreak) {
    if (get_gameplay_time() mod 12 >= 6) {
        draw_sprite(sprite_get("steam_hud"), limitMeter, xOffset, yOffset);
    }
}
    
//draw_debug_text(285, 455, "water: " + string(meter_water));
//draw_debug_text(285, 475, "steam: " + string(meter_steam));

//debug text
/*
if (practice) {
    if (!abyssEnabled) {
        draw_debug_text(temp_x, temp_y - 35, "up + taunt = all runes");
    }
    draw_debug_text(temp_x, temp_y - 15, "down + taunt = limit break");
}
*/

if (practice) {
        if allRunes {
            var drawheight = 0;
            if (godmodeanimtimer < godmodemaxtimer * .5){
                drawheight = floor(ease_cubeOut(0, 20, godmodeanimtimer, godmodemaxtimer * .5))
            }
            else{
                drawheight = floor(ease_quartIn(20, -18, godmodeanimtimer - godmodemaxtimer * .5, godmodemaxtimer * .5))
            }
            if (limitBreak) {
                drawheight += 20;
            }
            draw_debug_text(temp_x+24,temp_y-16-drawheight,"Godmode: All Runes");
        }
        if limitBreak {
            var drawheight = 0;
            if (godmodeanimtimer < godmodemaxtimer * .5){
                drawheight = floor(ease_cubeOut(0, 20, godmodeanimtimer, godmodemaxtimer * .5))
            }
            else{
                drawheight = floor(ease_quartIn(20, -18, godmodeanimtimer - godmodemaxtimer * .5, godmodemaxtimer * .5))
            }
            draw_debug_text(temp_x+24,temp_y-16-drawheight,"Godmode: Limit Break");
        }
}

var iconX = temp_x + 196;
var iconY = temp_y - 2;
var iconColour = c_gray;
//print_debug(string(zoID.shieldEndTimer))
if move_cooldown[AT_DSPECIAL] == 0 {
    iconColour = c_white;
} else {
    iconColour = c_gray;
}
var percent = move_cooldown[AT_DSPECIAL]/360;
draw_sprite_ext(sprite_get("dspec_hud"), 0, iconX, iconY, 1, 1, 0, iconColour, 1);
draw_sprite_part_ext(sprite_get("dspec_hud_overlay"), 0, 0, 16 - percent*16, 16, percent*16, iconX - 8, iconY + 8 - percent*16, 1, 1, c_white, 0.8);

shader_end();




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