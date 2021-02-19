//debug-draw

//draw_debug_text(x,y,"window: " + string(window));
//draw_debug_text(x+96,y+32,string(tutorial_on));
/*if code1 {
    with obj_article1 {
        
        draw_debug_text(x+128,y-32,string(kb_power));
        //draw_debug_text(x+128,y-32,string(ou_state_timer));
        
        
        //draw_debug_text(x+64,y+32,string(_ag_window_anim_frame_start));
        //draw_debug_text(x+96,y-32,string(spr_dir));
        draw_debug_text(x+96,y+32,string(get_state_name(disp_state)));
        
        draw_debug_text(x+32,y+64,string(hit_id));
        draw_debug_text(x+64,y,string(hitstun));
        draw_debug_text(x,y,string(percent));
        draw_debug_text(x+64,y-32,string(hitpause));
        draw_debug_text(x+32,y-32,string(kb_power));
        draw_debug_text(x+32,y,string(spr_dir));
        
        
        draw_debug_text(x+64,y,string(window));
        draw_debug_text(x+64,y-32,string(window_timer));
        draw_debug_text(x+32,y+32,string(_ag_num_windows));
        draw_debug_text(x+96,y,string(get_state_name(ou_state)));
       
    }
    
    
    
    //draw_debug_text(x+64,y-32,string(state_timer));

}*/

//draw_debug_text(x+64,y-32,string(visible));
draw_windows_world();

#define draw_windows_world()
var i = 0;
repeat ds_list_size(list_window) {
    if list_window[| i].visibl {
        switch list_window[| i].content_type {
            case 2: //Arrow Sprite
                draw_sprite_ext(list_window[| i].bg_sprite_index, list_window[| i].bg_image_index,list_window[| i]._x,list_window[| i]._y,1,1,0,c_white,1);
                draw_sprite_ext(list_window[| i]._sprite_index, list_window[| i]._image_index,list_window[| i]._x+list_window[| i]._in_x,list_window[| i]._y+list_window[| i]._in_y,1,1,0,c_white,1);
                break;
        }
    }
    i++;
}

