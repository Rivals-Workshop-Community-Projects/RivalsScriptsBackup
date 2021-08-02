//fs
if "fs_hit" in self && fs_hit && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == 49 {
    var fs_anim_speed = 5;
    var fs_intro_time = 40;
    var fs_index = (fs_timer - fs_intro_time)/fs_anim_speed;
    var lonk1 = sprite_get("lonk1")
    var lonk2 = sprite_get("lonk2")
    var lonk3 = sprite_get("lonk3")
    var lonk4 = sprite_get("lonk4")
    
    
    
    var fs_spr = asset_get("empty_sprite");
    var fs_index_mod = 0;
    var draw_hurt = false;
    var draw_hurt_outtro = false;
    if fs_index < 0 {
        draw_set_alpha(fs_timer/fs_intro_time)
        draw_rectangle_color(0, 0, 1000, 1000, c_white,c_white,c_white,c_white, false)
    } else if fs_index < 14 {
        fs_spr = lonk1;
        draw_hurt = true;
    } else if fs_index < 34 {
        fs_spr = lonk2;
        fs_index_mod = -14;
    } else if fs_index < 60 {
        fs_spr = lonk3;
        fs_index_mod = -34;
    } else if fs_index < 89 {
        fs_spr = lonk4;
        fs_index_mod = -60;
        if fs_index > 74 && fs_index < 78 draw_hurt_outtro = true;
    } else {
        fs_spr = asset_get("empty_sprite")
    }
    draw_sprite_ext(fs_spr, fs_index + fs_index_mod, -20, -20, 1, 1, 0, c_white, 1)
    
    if draw_hurt {
        draw_sprite_ext(fs_hitID.sprite_index, 0, 460, clamp(-260 + (fs_timer - fs_intro_time)*35, -1000, 290), 1, 1, 0, c_white, 1)
    }
    
    if draw_hurt_outtro {
        draw_sprite_ext(fs_hitID.sprite_index, 0, 570, 210, 1, 1, 0, c_white, 1)
    }
    
    if fs_timer >= 430 && (fs_timer-430)/2 < 16 {
        draw_sprite_ext(sprite_get("stock_explosion_large"), (fs_timer-430)/2, 590, 190, 1, 1, 0, c_white, 1)
        draw_sprite_ext(sprite_get("stock_explosion_large"), (fs_timer-430)/2, 630, 190, 1, 1, 0, c_white, 1)
    }
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