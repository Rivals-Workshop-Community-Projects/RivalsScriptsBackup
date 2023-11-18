if (vileplume_poison_effect = true){
    gpu_set_fog(1, 11285130, 0, 0);    
    if small_sprites = 1{
      draw_sprite_ext(sprite_index, image_index, x + 2, y, 2 * spr_dir, 2, 0, 11285130, 1);      
      draw_sprite_ext(sprite_index, image_index, x - 2, y, 2 * spr_dir, 2, 0, 11285130, 1);            
       draw_sprite_ext(sprite_index, image_index, x, y + 2, 2 * spr_dir, 2, 0, 11285130, 1);      
      draw_sprite_ext(sprite_index, image_index, x, y - 2, 2 * spr_dir, 2, 0, 11285130, 1);  
    }else{
      draw_sprite_ext(sprite_index, image_index, x + 2, y, 1 * spr_dir, 1, 0, 11285130, 1);      
      draw_sprite_ext(sprite_index, image_index, x - 2, y, 1 * spr_dir, 1, 0, 11285130, 1);            
       draw_sprite_ext(sprite_index, image_index, x, y + 2, 1 * spr_dir, 1, 0, 11285130, 1);      
      draw_sprite_ext(sprite_index, image_index, x, y - 2, 1 * spr_dir, 1, 0, 11285130, 1);          
    }
        gpu_set_fog(0, 0, 0, 0);    
}