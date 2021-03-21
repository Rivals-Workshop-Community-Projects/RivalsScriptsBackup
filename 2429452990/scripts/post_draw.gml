//post-draw
if ((state = PS_ATTACK_AIR || state = PS_ATTACK_GROUND) && attack == AT_FSPECIAL && window = 3){
    gpu_set_blendmode(bm_add);
    draw_sprite_ext( sprite_get( "fspecialheat" ), -1, x, y, 1 * spr_dir, 1, 0, c_white, wagnus_overheat / 90);
    gpu_set_blendmode(bm_normal);
}

user_event(12);