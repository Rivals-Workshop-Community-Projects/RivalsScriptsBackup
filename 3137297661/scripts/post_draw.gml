//post_draw.gml
//draw VFX for fspec2 and uspec2. we are doing it here to manually recolour the extra colours that dont fit
//into the colour range system. 
init_shader();
shader_start();
if(attack == AT_FSPECIAL_2){
    if(window == 2 && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)){
        var frame_time = 8/get_window_value(attack, window, AG_WINDOW_LENGTH);
        draw_sprite_ext(fspec_fx, window_timer*frame_time, x, y, 2 * spr_dir, 2, 0, c_white, 1);
    }
    if(window == 3){
        var num_frames = (3/5) * get_window_value(attack, window, AG_WINDOW_LENGTH);
        var frame_time = 3/num_frames;
        var subimg = 8 + (window_timer * frame_time);
        subimg = subimg > 11? 0 : subimg;
        if (subimg) draw_sprite_ext(fspec_fx, subimg, x, y, 2 * spr_dir, 2, 0, c_white, 1);
    }
}
else if(attack == AT_USPECIAL_2 && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)){
    if(window == 2){
        var frame_time = 10/get_window_value(attack, window, AG_WINDOW_LENGTH);
        draw_sprite_ext(uspec_fx, window_timer*frame_time, x, y, 2 * spr_dir, 2, 0, c_white, 1);
    }
}

if(k_finish_timer && k_finish_timer/k_finish_anim_speed < sprite_get_number(finish_spr) - 1){
    draw_sprite_ext(finish_spr, k_finish_timer/k_finish_anim_speed, x, y, 2 * spr_dir, 2, 0, c_white, 1);
}
shader_end();
init_shader();