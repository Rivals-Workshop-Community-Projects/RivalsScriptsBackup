//post draw is dr

if(nspec_flash > 0){
    var col = make_colour_rgb(195, 140, 234);
    
    gpu_set_fog(true,col,0,1);
        
    draw_sprite_ext(sprite_index, image_index, x, y, (1 + small_sprites) * spr_dir, 1 + small_sprites, 0, c_white, .16 * nspec_flash );
            
    gpu_set_fog(false,c_white,0,0);
    
    nspec_flash--;
}

shader_start();
if(attack == AT_FSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && image_index < 6 && ring_cd[add_on] < 0){
    draw_sprite_ext(sprite_get("fspecial_overlay"), image_index + (6 * add_on), x, y, 2 * spr_dir, 2, 0, c_white, 1);
}else if(attack == AT_USPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && image_index > 1 && image_index < 8){
    
    draw_sprite_ext(uspec_spin, image_index, x, y - 32, 1 * spr_dir, 1, uspec_angle, c_white, 1);
    
}else if(attack == AT_USPECIAL_2 && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && image_index > 1 && image_index < 8){
    
    draw_sprite_ext(uspec2_spin, image_index, x, y - 32, 1 * spr_dir, 1, uspec_angle, c_white, 1);
    
}

shader_end();
