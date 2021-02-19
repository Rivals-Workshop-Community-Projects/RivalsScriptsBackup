if !("menu_open" in self) exit;

//The Menu(tm)
if(menu_open == true){
    shader_start();
    if(menu_timer > 120){
        draw_sprite(hud_menu, ((menu_timer - 120) / 3) - 2, temp_x - 12, temp_y - 144);
        shader_end();
    }else{
        draw_sprite(hud_menu, 2, temp_x - 12, temp_y - 144);
        shader_end();
        var menuy = -124;
        var i;
        for(var menux = 40; menux <= 174; menux += 44){
            menuy = -124;
            switch (menux){
                case 40:
                    var specstripname = "hud_nspecs";
                    i = 0;
                    break;
            
                case 84:
                    specstripname = "hud_fspecs";
                    i = 1;
                    break;
            
                case 128:
                    specstripname = "hud_uspecs";
                    i = 2;
                    break;
            
                case 172:
                    specstripname = "hud_dspecs";
                    i = 3;
                    break;
            }
            for(var j = 0; j < 3; j++){
                if(specs_chosen[i, j] == true){
                    draw_sprite(sprite_get(specstripname), j, temp_x + menux, temp_y + menuy);
                }
                menuy += 40;
            }
        }
        var width = 52 + (44 * (active_col + 1));
        draw_sprite_part_ext(sprite_get("hud_blackout"), 0, width, 0, 232 - width, 146, temp_x - 12 + width, temp_y - 144, 1, 1, c_black, 0.5);
        if(menu_dir != -1){
            draw_sprite_ext(sprite_get("hud_arrowglow"), menu_dir, temp_x -12, temp_y - 144, 1, 1, 0, c_white, 0.7);
        }
    }
}
//Menu Closing
if(close_timer >= 0){
    shader_start();
    draw_sprite(hud_menu, ((close_timer) / 2) - 3, temp_x - 12, temp_y - 144);
    shader_end();
    close_timer--;
}

//Hud Icons
if(!menu_open){
    draw_sprite(sprite_get("hud_nspecs"), specialnums[0], temp_x + 40, temp_y - 26);
    draw_sprite(sprite_get("hud_fspecs"), specialnums[1], temp_x + 84, temp_y - 26);
    draw_sprite(sprite_get("hud_uspecs"), specialnums[2], temp_x + 128, temp_y - 26);
    draw_sprite(sprite_get("hud_dspecs"), specialnums[3], temp_x + 172, temp_y - 26);
}

//Hud Indicators for Ultimate Uppercut, Suplex, and Feint Jump
if(specialnums[0] == 1 && ultupper == 6){
    if(shinetimer > 0 && shinetimer <= 14){
        draw_sprite_ext(sprite_get("hud_nspec_2_charge"), 0, temp_x + 40, temp_y - 26, 1, 1, 0, c_white, (shinetimer * 0.071));
    }
}
if(specialnums[1] == 2 && !has_suplex){
    draw_sprite_ext(sprite_get("hud_fspecs"), 2, temp_x + 84, temp_y - 26, 1, 1, 0, c_black, 0.5);
}
if(specialnums[3] == 1 && move_cooldown[AT_DSPECIAL] > 0){
    draw_sprite_ext(sprite_get("hud_dspecs"), 1, temp_x + 172, temp_y - 26, 1, 1, 0, c_black, 0.5);
}


if(practice && menu_timer == -1 && close_timer == -1 && !classic){
    draw_debug_text(temp_x, temp_y - 36, "Taunt in Practice for Special Menu!");
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