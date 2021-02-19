//post-draw


    //draw_debug_text(temp_x+160,temp_y+20,string(str_pos2));
    
    
    //Controller
    //draw_debug_text(temp_x-128,temp_y,string(str_array));
    
    //draw_debug_text(temp_x-128,temp_y+16,string(init));
    /*
    draw_debug_text(temp_x-128,temp_y-16,string(Ou.up_down3));
    draw_debug_text(temp_x-112,temp_y,string(Ou.right_down3));
    draw_debug_text(temp_x-144,temp_y,string(Ou.left_down3));
    draw_debug_text(temp_x-100,temp_y,string(Ou.jump_down3));
    draw_debug_text(temp_x-100,temp_y-32,string(Ou.shield_down3));*/
//draw_debug_text(5,5, string(get_player_hud_color(1)));
//15297156
//6612290

if "cam_frozen" in self && cam_frozen {
    draw_sprite_ext(sprite_get("dspecial_screen_vfx"),floor((get_gameplay_time() % (8*10))/10), 0, 0, 2, 2, 0, c_white, .4);
}

//draw_debug_text(16, 16, string(fps_real));

if ("scanlines" in self && scanlines) {
    draw_sprite(sprite_get("scanlines"), scanline_frame, 0, 0);
}

if ("v_scanlines" in self && v_scanlines) {
    draw_sprite(sprite_get("verticalscanlines"), scanline_frame, x - view_get_xview() - 30, 0);
}

if ("u_scanlines" in self && u_scanlines) {
    var x_var = 0;
    if (x - view_get_xview() > 0) {
        x_var = x - view_get_xview();
    }
    if (x - view_get_xview() > view_get_wview() ) {
        x_var = view_get_wview();
    }
    draw_sprite_ext(sprite_get("whitescanlines"), scanline_frame, x_var, y - 37 - view_get_yview(), 1, 1, uspec_rot, c_white, 1);
}

//draw_sprite(sprite_get("dan"),0,2,2);
/*if attack == AT_TAUNT && (state == 5 || state == 6) && window == 2 {
    draw_rectangle_color(0,210,1000,356,c_black,c_black,c_black,c_black,0);
    draw_sprite_ext(asset_get("connect_circ_spr"),0,480,270,1,1,0,c_white,1);
    draw_sprite_ext(asset_get("connect_tri_spr"),0,480,270,1,1,-taunt_rot*2,c_white,1);
    draw_set_font(asset_get("roundFont"));
    
    switch taunt_type {
        case 0:
            draw_text_transformed(475,325,"oldani gtaatﾕ?",1,1,0);
            draw_text_transformed(500,348,string(taunt_num)+" / "+string(taunt_sprites),1,1,0);
            if taunt_num > taunt_sprites {
                taunt_type++;
                taunt_num = 0;
            } else taunt_num += 4;
            break;
        case 1:
            draw_text_transformed(475,325,"loﾊﾂ?g attack｡",1,1,0);
            draw_text_transformed(450,348,string(taunt_num)+" / "+string(taunt_attacks),1,1,0);
            if taunt_num > taunt_attacks {
                taunt_type++;
                taunt_num = 0;
            } else taunt_num += taunt_attacks/30;
            break;
        case 2:
            draw_text_transformed(475,325,"oldani gpsirﾕ",1,1,0);
            draw_text_transformed(500,348,string(taunt_num)+" / "+string(taunt_scripts),1,1,0);
            if taunt_num > taunt_scripts {
                taunt_type++;
                taunt_num = 0;
                window_timer = 0;
                window = 3;
            } else taunt_num += .1;
            break;
    }
    
    
    taunt_rot++;
}*/