if(attack == AT_NSPECIAL){
    if(window == 2 && window_timer < get_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME)-1){
        var tlength = nspHboxX.x - (x+40*spr_dir);
        shader_start();
        draw_sprite_ext(tongue_length_spr, 0, x+58*spr_dir, y-32, tlength/sprite_get_width(tongue_length_spr), 1, 0, c_white, 1);
        draw_sprite_ext(tongue_end_spr, 0, nspHboxX.x+20*spr_dir, nspHboxX.y, 1*spr_dir, 1, 0, c_white, 1);
        shader_end();
        with(pHitBox){
            if(player_id == other && attack == AT_NSPECIAL && hbox_num == 1){
                other.lastNspecXpos = x;
            }
        }
    }
    if(window == 3 && window_timer < 7){
        var tx = ease_linear(lastNspecXpos, x+58*spr_dir, min(window_timer, 7), 7);
        var tlenght2 = tx - (x+60*spr_dir);
        shader_start();
        draw_sprite_ext(tongue_length_spr, 0, x+58*spr_dir, y-32, tlenght2/sprite_get_width(tongue_length_spr), 1, 0, c_white, 1);
        draw_sprite_ext(tongue_end_spr, 0, tx, y-30, 1*spr_dir, 1, 0, c_white, 1);
        shader_end();
    }
    if(window == 11){ //player
        var tlength = gplayer.x - (x+60*spr_dir);
        var flip = spr_dir;
        var xCord =  gplayer.x-8*spr_dir;
        if((gplayer.x-8*spr_dir < x+50*spr_dir && spr_dir == 1) || (gplayer.x-8*spr_dir > x+50*spr_dir && spr_dir == -1)){
            flip *= -1;
            xCord = gplayer.x-6*spr_dir;
        }
        shader_start();
        draw_sprite_ext(tongue_length_spr, 0, x+58*spr_dir, y-32, tlength/sprite_get_width(tongue_length_spr), 1, 0, c_white, 1);
        draw_sprite_ext(grabTongue_sprite, 0, xCord, y-38, 1*flip, 1, 0, c_white, 1);
        shader_end();
    }
    if(window == 7){ //platform
        var tlength = nSpecPlatHboxXpos - (x+60*spr_dir);
        shader_start();
        draw_sprite_ext(tongue_length_spr, 0, x+58*spr_dir, y-32, tlength/sprite_get_width(tongue_length_spr), 1, 0, c_white, 1);
        draw_sprite_ext(grabTongue_sprite, 0, nSpecPlatHboxXpos-5*spr_dir, y-38, 1*spr_dir, 1, 0, c_white, 1);
        shader_end();
    }
    if(window == 10){//totem
        var totalTime = get_window_value(AT_NSPECIAL, 10, AG_WINDOW_LENGTH) + get_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH);
        var tTopx = ease_linear(totemStorePos, x+65*spr_dir, min(totemSwallowTime, totalTime), totalTime);
        var tlength = tTopx - (x+60*spr_dir);
        var flip = spr_dir;
        var xCord =  tTopx-8*spr_dir;
        if((tTopx-8*spr_dir < x+50*spr_dir && spr_dir == 1) || (tTopx-8*spr_dir > x+50*spr_dir && spr_dir == -1)){
            flip *= -1;
            xCord = tTopx-6*spr_dir;
        }
        if(tlength*spr_dir > 0){
            shader_start();
            draw_sprite_ext(tongue_length_spr, 0, x+58*spr_dir, y-32, tlength/sprite_get_width(tongue_length_spr), 1, 0, c_white, 1);
            draw_sprite_ext(grabTongue_sprite, 0, xCord, y-38, 1*flip, 1, 0, c_white, 1);
            shader_end();
        }
    }
}
//draw_circle_color(x+10*spr_dir, y-30, 10, 1, 1,  false);

with(obj_article_platform){
    mag();
}
#define mag
    if(player_id == other){
        if (x < view_get_xview()){
            print_debug("left");
            xMag = view_get_xview() + 36;
            subMag = 4;
            offscreen = true;
            //article has fallen out of the left side of view
        }else if(x > view_get_xview() + view_get_wview()){
            //article has fallen out of the right side of view
            print_debug("right");
            xMag = view_get_xview() + view_get_wview() - 36;
            subMag = 4;
            offscreen = true;
        }else{
            xMag = x;
            subMag = 6;
            offscreen = false;
        }
        if((y < view_get_yview()) || (y > view_get_yview() + view_get_hview())){
            offscreen = true;
        }
        draw_sprite_ext(asset_get("offscreen_cloud_bg_spr"), subMag, xMag, view_get_yview()+view_get_hview()-84, spr_dir, 1, 0,
        get_player_hud_color( player ), offscreen);
        draw_sprite_ext(sprite_get("offscreen_platform"), subMag, xMag, view_get_yview()+view_get_hview()-84, spr_dir, 1, 0,
        c_white, offscreen);
    }