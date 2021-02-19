//draw_hud - the x position of your HUD element is 48*(i-1)
//Credit to FieryExplosion for the original meter sprite

if is_in_practice {
    if introTimer < 100 draw_debug_text(10, 10, "Pause the game to view the tutorial!");

    if ("temp_pause" in self && instance_exists(temp_pause) && start_down) {
        draw_sprite_ext(sprite_get("text_box"), 5, 0, 45, 1, 1, 0, c_white, 1);
        draw_debug_text(10, 60, "Gimmick: Chaos Boost");
        draw_debug_text(10, 78, "Chaos Boost allows Shadow to increase the power of Chaos moves.");
        draw_debug_text(10, 96, "This is done by pressing PARRY or SPECIAL (ATTACK for specials) during");
        draw_debug_text(10, 114, "the startup of these moves.");
        draw_debug_text(10, 132, "");
        draw_debug_text(10, 150, "Chaos moves are:");
        draw_debug_text(10, 168, "NAIR, FAIR, FTILT,");
        draw_debug_text(10, 186, "all SPECIAL moves,");
        draw_debug_text(10, 204, "all STRONGs.");
        draw_debug_text(10, 222, "");
        draw_debug_text(10, 240, "Boosting a move consumes a charge, shown next to the HUD meter.");
        draw_debug_text(10, 258, "Each charge represents 30% of the meter.");
        draw_debug_text(10, 276, "Strongs require 2 charges to boost.");
        
        //draw_debug_text(290, 320, "(If you want to use the custom abilities");
        //draw_debug_text(290, 338, " the level 9 CPU has, get Rune Buddy from");
        //draw_debug_text(290, 356, " Steam Workshop!)");
    }
}

var red_time = false;
var hud_color = move_cooldown[AT_DSPECIAL] > 0 ? c_gray : c_white;
if runeG && rune_meter {
    red_time = true;
}

if meter_current <= meter_max * 0.0075
    draw_sprite_ext(sprite_get("Meter_Base"), 0, temp_x, temp_y-26, 1, 1, 0, hud_color, 1);
else if meter_current < meter_max * 0.995 {
    draw_sprite_ext(sprite_get("Meter_Base"), 1, temp_x, temp_y-26, 1, 1, 0, hud_color, 1);
    var x_scale = floor((meter_current * 100 / meter_max)/2) / 50;
    draw_sprite_ext(sprite_get("Meter_Bar"), 0, temp_x+14, temp_y-14, x_scale, 1, 0, c_white, 1);
    draw_sprite_ext(sprite_get("Meter_Bit"), 0, temp_x + 12 + x_scale * 126, temp_y-14, 1, 1, 0, c_white, 1);
}
else if meter_current >= meter_max * 0.995
    draw_sprite_ext(sprite_get("Meter_Base"), 2, temp_x, temp_y-26, 1, 1, 0, hud_color, 1);



if meter_current >= drain draw_sprite_ext(sprite_get("Meter_Active"), 0, temp_x+178, temp_y-20, 1, 1, 0, red_time?boost_color:c_white, 1);
if meter_current >= drain2 draw_sprite_ext(sprite_get("Meter_Active"), 0, temp_x+194, temp_y-20, 1, 1, 0, red_time?boost_color:c_white, 1);
if meter_current >= drain + drain2 draw_sprite_ext(sprite_get("Meter_Active"), 0, temp_x+210, temp_y-20, 1, 1, 0, red_time?boost_color:c_white, 1);
if runeI {
    if meter_current >= 2 * drain2 draw_sprite_ext(sprite_get("Meter_Active"), 0, temp_x+184, temp_y-16, 1, 1, 0, red_time?boost_color:c_white, 1);
    if meter_current >= 2 * drain2 + drain draw_sprite_ext(sprite_get("Meter_Active"), 0, temp_x+200, temp_y-16, 1, 1, 0, red_time?boost_color:c_white, 1);
    if meter_current >= 3 * drain2 draw_sprite_ext(sprite_get("Meter_Active"), 0, temp_x+216, temp_y-16, 1, 1, 0, red_time?boost_color:c_white, 1);
}

if toggle_draw {
    draw_sprite_ext(sprite_get("custom_controls_icons_1"), 0, temp_x, temp_y-44, 1, 1, 0, c_white, 1);
    draw_debug_text( temp_x+26, temp_y-39, ": Toggle Prompt On");
}

if disp_on {
    if disp_trigger {
        draw_sprite_ext(sprite_get("custom_controls_icons_10"), 0, temp_x+154, temp_y+12, 1, 1, 0, c_white, 1);
        draw_sprite_ext(sprite_get("custom_controls_icons_11"), 0, temp_x+170, temp_y+12, 1, 1, 0, c_white, 1);
        if disp_special {
            draw_sprite_ext(sprite_get("custom_controls_icons_1"), 0, temp_x+182, temp_y-22, 1, 1, 0, c_white, 1);
        } 
        else if disp_attack {
            draw_sprite_ext(sprite_get("custom_controls_icons_0"), 0, temp_x+182, temp_y-22, 1, 1, 0, c_white, 1);
        }
        disp_trigger = false;
        disp_special = false;
        disp_attack = false;
    }
}
//asset_get("custom_controls_icons_0"); A
//asset_get("custom_controls_icons_1"); B
//asset_get("tut_joystick_spr_12"); Slash
//asset_get("custom_controls_icons_25"); L
//asset_get("custom_controls_icons_26"); R

if get_player_color(player) == 2
    draw_debug_text( temp_x+36, temp_y-27, "@SeggoAhmet");

/*Depereciated code
//var bit_color = c_gray;
//if meter_current > drain2 bit_color = c_white;
//else if meter_current > drain bit_color = c_blue;

draw_debug_text(temp_x-70, temp_y-24, "Window: " + string(window));
draw_debug_text(temp_x-70, temp_y-12, "Timer: " + string(window_timer));
draw_debug_text(temp_x, temp_y-12, "Timer: " + string(state_timer));
draw_debug_text(temp_x, temp_y-24, "State: " + string(get_state_name(state)));
draw_debug_text(temp_x, temp_y-36, "Has Hit: " + string(has_hit));
draw_debug_text(temp_x - 120, temp_y-12, "VSP: " + string(vsp));
draw_debug_text(temp_x - 120, temp_y-24, "HSP: " + string(hsp));



//for (i = 0; i < (meter_current / meter_max) * 127; i++)
   //    draw_sprite_ext(sprite_get("Meter_Bit"), 0, temp_x+12 + i, temp_y-14, 1, 1, 0, c_white, 1);
*/





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