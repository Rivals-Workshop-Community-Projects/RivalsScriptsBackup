//draw_hud - the x position of your HUD element is 48*(i-1)
is_clutch = 0;
with obj_article1 {
    if aei_id == other.id other.is_clutch = (shield_down || up_strong_down || down_strong_down || right_strong_down || left_strong_down);
        
}
shader_start();

if state == PS_SPAWN {
    draw_debug_text(temp_x,temp_y-20,"Press Attack+Shield to activate hold attack");
}

if "hudfull" in self draw_sprite_ext(hudfull,!is_ou,temp_x+28,temp_y+8,1,1,0,c_white,1);
shader_end();
//draw_sprite_ext(sprite_get("clutch"),is_clutch,temp_x+110,temp_y-20,1,1,0,c_white,1);
if "Ou" in self && Ou != noone {
    draw_debug_text(temp_x+160,temp_y+20,string(Ou.percent)+"%");
    
    //Controller
    /*draw_debug_text(temp_x-128,temp_y,string(Ou.attack_down3));
    draw_debug_text(temp_x-128,temp_y+16,string(Ou.down_down3));
    draw_debug_text(temp_x-128,temp_y-16,string(Ou.up_down3));
    draw_debug_text(temp_x-112,temp_y,string(Ou.right_down3));
    draw_debug_text(temp_x-144,temp_y,string(Ou.left_down3));
    draw_debug_text(temp_x-100,temp_y,string(Ou.jump_down3));
    draw_debug_text(temp_x-100,temp_y-32,string(Ou.shield_down3));*/
}


//draw_set_font(asset_get("medFont"));
//draw_text_trans_outline(temp_x,temp_y,"TEST FONT",10,1000,1,1,0,c_white,c_black,1);
//draw_debug_text(temp_x-200,temp_y-470,string(right_stick_pressed));
//draw_debug_text(temp_x-200,temp_y-430,string(cur_scene_time));
//draw_debug_text(temp_x-200,temp_y-400,string(cur_scene_time_end));
//draw_debug_text(temp_x,temp_y-420,string(move_timer));
//draw_debug_text(temp_x,temp_y-400,string(list_window[| 0].path));
//draw_debug_text(temp_x,temp_y-380,string(array_scene_data));

//draw_debug_text(2,2,string(visible));
if "list_window" in self draw_windows();

#define draw_windows()
var i = 0;
repeat ds_list_size(list_window) {
    if list_window[| i].visibl {
        
        switch list_window[| i].content_type {
            case 0: //Textbox
                draw_sprite_ext(list_window[| i].bg_sprite_index, list_window[| i].bg_image_index,list_window[| i]._x,list_window[| i]._y,1,1,0,c_white,1);
                if list_window[| i].font != "" draw_set_font(asset_get(list_window[| i].font));
                draw_text_trans_outline(list_window[| i]._x+list_window[| i]._in_x,list_window[| i]._y+list_window[| i]._in_y,string_copy(list_window[| i].text_full,1,floor(list_window[| i].vis_chars)),30,list_window[| i].text_spacing,1,1,0,c_white,c_black,1);
                break;
            case 1: //Animated Sprite 
                draw_sprite_ext(list_window[| i].bg_sprite_index, list_window[| i].bg_image_index,list_window[| i]._x,list_window[| i]._y,1,1,0,c_white,1);
                draw_sprite_ext(list_window[| i]._sprite_index, list_window[| i]._image_index,list_window[| i]._x+list_window[| i]._in_x,list_window[| i]._y+list_window[| i]._in_y,1,1,0,c_white,1);
                break;
            /*case 2: //Arrow Sprite
                draw_sprite_ext(list_window[| i]._sprite_index, list_window[| i]._image_index,list_window[| i]._x+list_window[| i]._in_x,list_window[| i]._y+list_window[| i]._in_y,1,1,0,c_white,1);
                break;*/
        }
    }
    i++;
}

#define draw_text_trans_outline(_x, _y, str, separ, w, xscale, yscale, angl, text_colour, outline_colour, alph)
for (i = - 1; i < 2; i++) for (j = -1; j < 2; j++) draw_text_ext_transformed_color(_x+i*2,_y+j*2,str,separ, w, xscale, yscale, angl, outline_colour, outline_colour, outline_colour, outline_colour, 1);
draw_text_ext_transformed_color(_x,_y,str,separ, w, xscale, yscale, angl, text_colour, text_colour, text_colour, text_colour, 1);
