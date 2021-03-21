// pre-draw

if ((state = PS_ATTACK_AIR || state = PS_ATTACK_GROUND) && attack == AT_FSPECIAL && window = 1){
    if (spr_dir = 1){
    gpu_set_blendmode(bm_add);
    draw_sprite_ext( sprite_get( "fspecialbeam" ), -1, x - 16, y - 34, 1 * spr_dir, 1, 0, c_white, window_timer / 6);
    gpu_set_blendmode(bm_normal);
    draw_sprite_ext( sprite_get( "fspecialbeam" ), -1, x - 16, y - 34, 1 * spr_dir, 1, 0, c_red, window_timer * 0.03);
    }
    
    if (spr_dir = -1){
    gpu_set_blendmode(bm_add);
    draw_sprite_ext( sprite_get( "fspecialbeam" ), -1, x + 16, y - 34, 1 * spr_dir, 1, 0, c_white, window_timer / 6);
    gpu_set_blendmode(bm_normal);
    draw_sprite_ext( sprite_get( "fspecialbeam" ), -1, x + 16, y - 34, 1 * spr_dir, 1, 0, c_red, window_timer * 0.03);
    }
}