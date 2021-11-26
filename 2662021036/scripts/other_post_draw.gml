if (vileplume_poison_effect = true){
    gpu_set_fog(1, 11285130, 0, 0);    
gpu_set_blendmode(bm_add);     
      draw_sprite_ext(sprite_index, image_index, x, y, 1 * spr_dir, 1, 0, 11285130, 0.45);      
gpu_set_blendmode(bm_normal);           
        gpu_set_fog(0, 0, 0, 0);    
        
        
}