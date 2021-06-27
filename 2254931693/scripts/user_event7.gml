if (_6261 > 1100){
    gpu_set_blendmode(bm_max);    
    draw_sprite_ext(sprite_get("tea_656e63726f616368696e67"), 5, 0, 0, 555, 555, 0, c_white, 0.3 );    
    gpu_set_blendmode(bm_normal);    
}

if (_6261 > 1800){
    gpu_set_blendmode(bm_add);    
    draw_sprite_ext(sprite_get("tea_656e63726f616368696e67"), 5, 0, 0, 555, 555, 0, c_white, 0.65 );    
    gpu_set_blendmode(bm_normal);
    draw_sprite_ext(sprite_get("tea_656e63726f616368696e67"), -1, 0, 0, 555, 555, 0, c_black, 0.3)    
}

if (_6261 > 2200){
    gpu_set_blendmode(bm_add);    
    draw_sprite_ext(sprite_get("final_flash"), -1, 0, 0, 555, 555, 0, 9310044, 0.3)
    gpu_set_blendmode(bm_normal);
    draw_sprite_ext(sprite_get("tea_656e63726f616368696e67"), -1, 0, 0, 555, 555, 0, c_black, 0.5)      
}

if (_6261 > 2750){
    gpu_set_blendmode(bm_add);    
    draw_sprite_ext(sprite_get("final_flash"), -1, 0, 0, 555, 555, 0, 9310044, 0.5)
    gpu_set_blendmode(bm_normal);
    draw_sprite_ext(sprite_get("tea_656e63726f616368696e67"), -1, 0, 0, 555, 555, 0, c_black, 0.25)
    
    if (_6261 < 2901){
        gpu_set_fog(1, c_black, 0, 0);    
      draw_sprite_ext(sprite_index, image_index, nbbx, y, 1 * spr_dir, 1, 0, c_white, 0.3);  
        gpu_set_fog(0, 0, 0, 0);
    }
}

if (_6261 > 2900){
        gpu_set_fog(1, c_black, 0, 0);    
      draw_sprite_ext(sprite_index, image_index, nbbx, y, 2 * spr_dir, 2, 0, c_white, 0.55);  
        gpu_set_fog(0, 0, 0, 0); 
}        
    