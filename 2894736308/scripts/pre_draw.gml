
//afterimages
    for (var i = 0; i < 10; i++){
        if (after_image[i] != -1 && after_image[i].alpha > 0){
            
            gpu_set_fog(true,addon_col[add_on],0,1);
            
            draw_sprite_ext(after_image[i].sprite_index, after_image[i].image_index, after_image[i].x, after_image[i].y,
            (1 + small_sprites) * after_image[i].spr_dir  * after_image[i].xscale, (1 + small_sprites) * after_image[i].yscale,
            after_image[i].spr_angle, c_white, after_image[i].alpha/10 );
                
            gpu_set_fog(false,c_white,0,0);
            
        }
    }

//dspec add-on visual
if(ring_follow != -1){
    draw_sprite_ext(ring_follow.sprite_index, ring_follow.image_index, ring_follow.x, ring_follow.y, ring_follow.spr_dir,
                1, 0, c_white, ring_follow.image_alpha );
}

//dspec outline

if(ring_equipped == 0){
    //if((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && (attack != AT_DSPECIAL)){
        
        gpu_set_fog(true,addon_col[add_on],0,1);
        
        draw_sprite_ext(sprite_index, image_index, x - 2, y - 2, (1 + small_sprites) * spr_dir, (1 + small_sprites), 0, c_white, 0.9 );
        draw_sprite_ext(sprite_index, image_index, x + 2, y - 2, (1 + small_sprites) * spr_dir, (1 + small_sprites), 0, c_white, 0.9 );
        draw_sprite_ext(sprite_index, image_index, x - 2, y + 2, (1 + small_sprites) * spr_dir, (1 + small_sprites), 0, c_white, 0.9 );
        draw_sprite_ext(sprite_index, image_index, x + 2, y + 2, (1 + small_sprites) * spr_dir, (1 + small_sprites), 0, c_white, 0.9 );
        
        gpu_set_fog(false,c_white,0,0);
    //}
}else if(ring_equipped == 1){
    if(hitpause){
        var h = old_hsp;
    }else{
        var h = hsp;
    }
    //if(state == PS_WALK || state == PS_DASH_TURN || state == PS_WAVELAND || abs(h) > 6){
        
        gpu_set_fog(true,addon_col[add_on],0,1);
        
        draw_sprite_ext(sprite_index, image_index, x - 2, y - 2, (1 + small_sprites) * spr_dir, (1 + small_sprites), 0, c_white, 0.9 );
        draw_sprite_ext(sprite_index, image_index, x + 2, y - 2, (1 + small_sprites) * spr_dir, (1 + small_sprites), 0, c_white, 0.9 );
        draw_sprite_ext(sprite_index, image_index, x - 2, y + 2, (1 + small_sprites) * spr_dir, (1 + small_sprites), 0, c_white, 0.9 );
        draw_sprite_ext(sprite_index, image_index, x + 2, y + 2, (1 + small_sprites) * spr_dir, (1 + small_sprites), 0, c_white, 0.9 );
        
        gpu_set_fog(false,c_white,0,0);
    //}
}else if(ring_equipped == 2){
    
    gpu_set_fog(true,addon_col[add_on],0,1);
    
    if((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) &&
    ((attack == AT_DTILT && (window == 2)) || (attack == AT_UTILT && (window == 2)) || (attack == AT_USTRONG && (window == 3)) ||
    (attack == AT_DSTRONG && (window == 3 || window == 5)) || (attack == AT_NAIR && (window == 2 || window == 3)) || (attack == AT_FAIR && (window == 3)) ||
    (attack == AT_DAIR && (window == 2)) || (attack == AT_BAIR && (window == 2)) || (attack == AT_NSPECIAL && (window == 4 || window == 7)))){
        
        //gpu_set_fog(true,addon_col[add_on],0,1);
        
        draw_sprite_ext(sprite_index, image_index, x , y, (1 + small_sprites) * spr_dir * epsilon_buff, (1 + small_sprites) * epsilon_buff, 0, c_white, 0.9 );
    }
        draw_sprite_ext(sprite_index, image_index, x - 2, y - 2, (1 + small_sprites) * spr_dir, (1 + small_sprites), 0, c_white, 0.9 );
        draw_sprite_ext(sprite_index, image_index, x + 2, y - 2, (1 + small_sprites) * spr_dir, (1 + small_sprites), 0, c_white, 0.9 );
        draw_sprite_ext(sprite_index, image_index, x - 2, y + 2, (1 + small_sprites) * spr_dir, (1 + small_sprites), 0, c_white, 0.9 );
        draw_sprite_ext(sprite_index, image_index, x + 2, y + 2, (1 + small_sprites) * spr_dir, (1 + small_sprites), 0, c_white, 0.9 );
        
        gpu_set_fog(false,c_white,0,0);
    //}
}

if(ring_equipped > -1){
    if((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_NSPECIAL){
        gpu_set_fog(true,addon_col[add_on],0,1);
        
        draw_sprite_ext(sprite_index, image_index, x - 2, y - 2, (1 + small_sprites) * spr_dir, (1 + small_sprites), 0, c_white, 0.9 );
        draw_sprite_ext(sprite_index, image_index, x + 2, y - 2, (1 + small_sprites) * spr_dir, (1 + small_sprites), 0, c_white, 0.9 );
        draw_sprite_ext(sprite_index, image_index, x - 2, y + 2, (1 + small_sprites) * spr_dir, (1 + small_sprites), 0, c_white, 0.9 );
        draw_sprite_ext(sprite_index, image_index, x + 2, y + 2, (1 + small_sprites) * spr_dir, (1 + small_sprites), 0, c_white, 0.9 );
        
        gpu_set_fog(false,c_white,0,0);
    }
}