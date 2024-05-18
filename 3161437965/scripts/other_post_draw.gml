if "other_player_id" in self && instance_exists(other_player_id) && instance_exists(other_player_id.artc_savepoint) && other_player_id.artc_savepoint.saved_player == self {
    var col_light = 6;
    var aura_offset = 2;
    
    var alph_timer = other_player_id.artc_savepoint.enemy_warp_timer;
    var alph = 0;
    // if alph_timer <= 30 alph = (30-alph_timer)/30;
    if alph_timer <= 30 alph = ((alph_timer-30)*(alph_timer-30))/900;
    
    gpu_set_fog(1, make_color_rgb(255,253,69), 0, 1);
    draw_sprite_ext(sprite_index, image_index, x + draw_x, y + draw_y, (1 + small_sprites)*spr_dir, (1 + small_sprites), spr_angle, c_white, alph);
    gpu_set_fog(0, c_white, 0, 0);
}

if "other_player_id" in self && instance_exists(other_player_id){
    with(other_player_id) var runeN = has_rune("N")
    
    if(runeN && hit_player_obj == other_player_id && !hitpause){
        if(state == PS_HITSTUN){
            gpu_set_alphatestenable(true);
            gpu_set_fog(1, c_black, 0, 1);
            draw_sprite_ext(sprite_index, image_index, x + draw_x, y + draw_y, (1 + small_sprites)*spr_dir, (1 + small_sprites), spr_angle, c_white, (state_timer/hitstun)/2);
            gpu_set_fog(0, c_white, 0, 0);
            gpu_set_alphatestenable(false);
        }
        if(state == PS_HITSTUN_LAND){
            gpu_set_alphatestenable(true);
            gpu_set_fog(1, c_black, 0, 1);
            draw_sprite_ext(sprite_index, image_index, x + draw_x, y + draw_y, (1 + small_sprites)*spr_dir, (1 + small_sprites), spr_angle, c_white, (state_timer/12)/2);
            gpu_set_fog(0, c_white, 0, 0);
            gpu_set_alphatestenable(false);
        }
    }
}