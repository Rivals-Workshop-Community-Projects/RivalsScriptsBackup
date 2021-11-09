///
shader_start();


    
if brage < bragesub {
    
    if get_gameplay_time() % 15 < 4 {
    draw_sprite_ext(sprite_index,image_index,x - 2 + random_func(1,3,true)*2,y - 2 + random_func(2,3,true)*2,spr_dir,1,0,-1,.5)
    }
    
}

if ragemode != 0 {
   
    if get_gameplay_time() % 10 < 3 {
    gpu_set_blendmode(bm_add);     
    draw_sprite_ext(sprite_index,image_index,x - 2 + random_func(1,3,true)*2,y - 2 + random_func(2,3,true)*2,spr_dir,1,0,-1,.5)
    gpu_set_blendmode(bm_normal);
    }
    
}


shader_end() 