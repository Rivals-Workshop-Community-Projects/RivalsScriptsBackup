//registry check :)
//gpu_set_colorwriteenable(true,true,true,true)

if "beacon" in self {
    if t_active {
        draw_set_alpha(t_shade/15);
        draw_sprite(sprite_get("screen_ovr"),0,0,0);
        draw_set_alpha(1);
        draw_set_halign(fa_left);
        draw_text_plus(20,20,current_text[0],3,c_lime);
        draw_text_plus(20,20+30,current_text[1],3,c_lime);
        draw_text_plus(20,20+60,current_text[2],3,c_lime);
        
        
    }
    shader_start();
    draw_sprite_ext(sprite_get("article2_hud"),(beacon!=noone),temp_x+162,temp_y-32,1,1,0,move_cooldown[AT_DSPECIAL]>0 && beacon == noone?c_gray:c_white,1);
    shader_end();
    //draw_debug_text(5,5,string(t_timer));
    /*draw_rectangle_color(temp_x+26,temp_y+6,temp_x+38,temp_y+41,c_black,c_black,c_black,c_black,false);
    draw_rectangle_color(temp_x+28,temp_y+8,temp_x+36,temp_y+39,temp_ecolor[0],temp_ecolor[0],temp_ecolor[0],temp_ecolor[0],false);
    if bullet_cd < bullet_cd_max {
        draw_rectangle_color(temp_x+26,temp_y+6,temp_x+38,temp_y+41-(floor((bullet_cd/bullet_cd_max)*34)&~1),c_black,c_black,c_black,c_black,false);
        draw_rectangle_color(temp_x+28,temp_y+8,temp_x+36,temp_y+39-(floor((bullet_cd/bullet_cd_max)*34)&~1),c_gray,c_gray,c_gray,c_gray,false);
    }*/
}

if "temp_pause" in self && instance_exists(temp_pause) && start_down && training && enable_help {
    pause_draw++;
    var timing = ease_quartOut(-660,0,clamp(pause_draw,0,30),30);
    draw_set_alpha(0.5);
    draw_rectangle_color(timing+660+1,0,timing+660+2,540,c_white,c_white,c_white,c_white,false);
    draw_rectangle_color(0,0,timing+660,540,c_black,c_black,c_black,c_black,false);
    draw_set_alpha(1);
    var baseY = 0;
    draw_text_plus(timing+300,18,"Rokesha - How to Play",3);
    //gimmick
    baseY = 46;
    draw_text_plus(timing+10,baseY+4,"MECHANIC - Blind-Fire",2);
    baseY += 26;
    draw_debug_text(round(timing+16),floor(baseY+4),"Rokesha's Blind-Fire allows Rokesha to fire ");
    draw_debug_text(round(timing+16),floor(baseY+4+14),"a bullet at close range on attacks that ");
    draw_debug_text(round(timing+16),floor(baseY+4+(14*2)),"use her rifle by holding the button down.");
    //dspecial
    baseY = 116;
    draw_text_plus(timing+10,baseY+4,"DSPECIAL - Beacon",2);
    baseY += 26;
    draw_debug_text(round(timing+16),floor(baseY+4),"Rokesha's Beacon is a powerful tool that ");
    draw_debug_text(round(timing+16),floor(baseY+4+14),"interacts with all of her specials, buffing ");
    draw_debug_text(round(timing+16),floor(baseY+4+(14*2)),"them at the cost of the beacon's charges.");
    baseY = 186;
    draw_text_plus(timing+10,baseY+4,"FSPECIAL - Holotag",2);
    baseY += 26;
    draw_debug_text(round(timing+16),floor(baseY+4),"Rokesha's Holotags increase the effective");
    draw_debug_text(round(timing+16),floor(baseY+4+14),"hurtbox of the tagged opponent for rifle");
    draw_debug_text(round(timing+16),floor(baseY+4+(14*2)),"shots and blindfire, making them easier");
    draw_debug_text(round(timing+16),floor(baseY+4+(14*3)),"to hit. Stacks up to 3 times.");
//draw stuff
}

//if (menu_isOpen) drawMenu();

//abyss gui code
ab_hud_x = temp_x;
ab_hud_y = temp_y;
//this is for the outdated warning message
//if ("depNotice" not in self) depNotice = 0;
//if ("abyssEnabled" in self && abyssEnabled && (menuActive || timerActive)) abyssDraw();
#define drawMenu

if (menuDebug) {
    draw_sprite(sprite_get("gui_devmode"),0,0,0);
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
draw_set_halign(fa_left)
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