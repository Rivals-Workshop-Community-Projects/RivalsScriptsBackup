//draw_hud.gml

//------------------------------------------------------------------------------
//Final Smash
if (attack == 49){
    if(window <= 12){
    draw_sprite_ext(sprite_get("_fs_bg2"), 0, 0, 0, 8, 8, 0, c_white, FS_alpha);
    
    if(window == 10){
        if(jmp_start){//ジャンプ
            draw_sprite_ext(sprite_get("_fs_jump"), jmp_timer, 480, jmp_y, 4, 4, 0, c_white, 1);
        }
    }
    
    if(window >= 11){//All-out
            with (grabbedid){//敵
                draw_sprite_ext(sprite_index, -1, other.enemy_x+other.fs_shake_x, other.enemy_y+other.fs_hit_y+other.fs_shake_y, 2+other.fs_hit_scale, 2+other.fs_hit_scale, 0+other.fs_shake_r+other.fs_r2, c_black, 1);
            }
        if(atk_start){
           //攻撃
            draw_sprite_ext(sprite_get("_fs_atk"), atk_sub[0], atk_x[0], atk_y[0], 3*atk_xs[0], 3*atk_ys[0], atk_rot[0], c_white, atk_alpha[0]);
            draw_sprite_ext(sprite_get("_fs_atk"), atk_sub[1], atk_x[1], atk_y[1], 3*atk_xs[1], 3*atk_ys[1], atk_rot[1], c_white, atk_alpha[1]);
            draw_sprite_ext(sprite_get("_fs_do"), do_sub[0], do_x[0], do_y[0], 3, 3, 0, c_white, do_alpha[0]);
            draw_sprite_ext(sprite_get("_fs_do"), do_sub[1], do_x[1], do_y[1], 3, 3, 0, c_white, do_alpha[1]);
            draw_sprite_ext(sprite_get("_fs_hit"), hit_sub[0], hit_x[0], hit_y[0], hit_xs[0], hit_ys[0], hit_rot[0], c_white, hit_alpha[0]);
            draw_sprite_ext(sprite_get("_fs_hit"), hit_sub[1], hit_x[1], hit_y[1], hit_xs[1], hit_ys[1], hit_rot[1], c_white, hit_alpha[1]);
            draw_sprite_ext(sprite_get("_fs_hit"), hit_sub[2], hit_x[2], hit_y[2], hit_xs[2], hit_ys[2], hit_rot[2], c_white, hit_alpha[2]);
        }
    }

    if(window == 12){//finish
        draw_sprite_ext(sprite_get("_fs_bg3"), 0, atk_x[0], atk_y[0], 3, 3, atk_rot[0], c_white, 1);//床
        draw_sprite_ext(sprite_get("_fs_blood"), blo_timer, blo_x, blo_y, 2, 2, 0, c_white, blo_alpha);//血
        draw_sprite_ext(sprite_get("_fs_portrait2"), 0, hit_x[2], hit_y[2], 3, 3, pot_rot, c_black, hit_alpha[2]);//俺影
        draw_sprite_ext(sprite_get("_fs_portrait2"), 0, hit_x[1], hit_y[1], 3, 3, pot_rot, c_white, hit_alpha[0]);//俺白
        shader_start();
        draw_sprite_ext(sprite_get("_fs_finish"), atk_sub[1], atk_x[1], atk_y[1], atk_xs[1], atk_xs[1], atk_rot[1], c_white, atk_alpha[1]);//俺mini
        draw_sprite_ext(sprite_get("_fs_portrait1"), 0, hit_x[0], hit_y[0], 3, 3, pot_rot, c_white, hit_alpha[0]);//俺
        shader_end();
    }
    
        //光
        if(shine_start == 1){
            draw_sprite_ext(sprite_get("_fs_ef_shine"), 0, 480, 270, shine_xs, shine_ys, shine_rot, c_white, 1);
        }
        if(shine_start == 2){
            draw_sprite_ext(sprite_get("_fs_fog2"), shine_sub, 0, 0, 4, 4, 0, c_white, 1);
        }
        //煙
        if(fog_start){
            draw_sprite_ext(sprite_get("_fs_fog1"), fog_timer, 0, 0, 4, 4, 0, c_white, 1);
        }
        if(break_start){
            draw_sprite_ext(sprite_get("_fs_bg1"), break_timer, 0, 0, 4, 4, 0, c_white, 1);
        }
    }
}

//表示確認
//UI----------------------------------------
var temp_color = c_white;
if (bodyloss == true) temp_color = c_gray;



var temp_xscale = 1;
var temp_barcolor = c_white;

if((state == PS_ATTACK_GROUND) or (state == PS_ATTACK_AIR)){
    if(strong_charge > bodyshot){
        temp_xscale = 1;
        temp_barcolor = c_orange;
    }else{
        temp_xscale = strong_charge * 0.05;
    }
}else{
 temp_xscale = 0;
}



if (bodyless == true) {
    draw_sprite_ext(sprite_get("body_icon"), 0, temp_x + 0, temp_y - 30, 2, 2, 0, temp_color, 1);

    if(bodyloss == true){
        draw_sprite_ext(sprite_get("hud_gauge"), 0, temp_x + 36, temp_y - 30, 2, 2, 0, c_white, 1);
        draw_sprite_ext(sprite_get("hud_bar"), 0, temp_x + 40, temp_y - 18, temp_xscale * 2, 2, 0, temp_barcolor, 1);
    }
}






//debug-------------------------------------------------------------------------
misodebug = false;
if(misodebug){
draw_debug_text(30, 110 + 13, "bodyless: " + string(bodyless));
draw_debug_text(30, 110 + 26, "bodyloss: " + string(bodyloss));
draw_debug_text(30, 110 + 39, "headdie: " + string(headdie));
draw_debug_text(30, 110 + 52, "hutaSP: " + string(hutaSP));
draw_debug_text(30, 110 + 65, "grabbedid: " + string(grabbedid));
draw_debug_text(30, 110 + 78, "hit_player_obj: " + string(hit_player_obj));
draw_debug_text(30, 110 + 91, "FS_alpha: " + string(FS_alpha));
draw_debug_text(30, 110 + 104, "fs_loop_count: " + string(fs_loop_count));
draw_debug_text(30, 110 + 117, "shine_start: " + string(shine_start));



draw_debug_text(temp_x + 0, temp_y - 13, "attack: " + string( attack ));
draw_debug_text(temp_x + 0, temp_y - 26, "charge: " + string( strong_charge ));

draw_debug_text(temp_x + 100, temp_y - 52, "state: " + get_state_name( state ));
draw_debug_text(temp_x + 100, temp_y - 39, "window timer: " + string( window_timer ));
draw_debug_text(temp_x + 100, temp_y - 26, "window: " + string(window));
draw_debug_text(temp_x + 100, temp_y - 13, "imageindex: " + string(image_index));
}

//debug-------------------------------------------------------------------------
if(misodebug){
    if(  bodyless = true ){
        draw_debug_text(temp_x + 100, temp_y - 117, "player_id: " + string( obj_article1.player_id ));
        draw_debug_text(temp_x + 100, temp_y - 104, "vsp: " + string( obj_article1.vsp ));
        draw_debug_text(temp_x + 100, temp_y - 91, "state: " + string( obj_article1.state ));
        draw_debug_text(temp_x + 100, temp_y - 78, "state_timer: " + string( obj_article1.state_timer ));
        
    }
    
    
    if( obj_article2.init == 1 ){
        draw_debug_text(temp_x + 0, temp_y - 117, "player_id: " + string( obj_article2.player_id));
        draw_debug_text(temp_x + 0, temp_y - 104, "state: " + string( obj_article2.state ));
        draw_debug_text(temp_x + 0, temp_y - 91, "state_tm: " + string( obj_article2.state_timer ));
        draw_debug_text(temp_x + 0, temp_y - 78, "stop_tm: " + string( obj_article2.stop_timer ));
    }
}
//------------------------------------------------------------------------------