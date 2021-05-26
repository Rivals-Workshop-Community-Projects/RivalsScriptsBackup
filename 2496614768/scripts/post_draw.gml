shader_start();

if state == PS_ROLL_BACKWARD or state == PS_ROLL_FORWARD or state == PS_TECH_BACKWARD 
   or state == PS_TECH_FORWARD or state == PS_AIR_DODGE{
    draw_sprite_ext(sprite_index,image_index,x,y, spr_dir,1,0,-1,0.6)
}

if state == PS_PARRY{
    draw_sprite_ext(sprite_index,image_index,x,y, spr_dir,1,0,-1,1)
}

if state != PS_PRATFALL and state != PS_PRATLAND  and (timebreak > 0 or shock >= 5) {
    gpu_set_blendmode(bm_add);
    draw_sprite_ext(sprite_index, image_index, x - shsp  , y - svsp ,spr_dir,1,0,-1,0.3)  
        draw_sprite_ext(sprite_index, image_index, x - shsp*2  , y - svsp*3 ,spr_dir,1,0,-1,0.2)  
        gpu_set_blendmode(bm_normal);
        draw_sprite_ext(sprite_index, image_index, x + 2 - random_func(1,5,true)   , y + 2 - random_func(2,5,true) ,spr_dir,1,0,-1,0.6)  
                      gpu_set_blendmode(bm_add);
                      draw_sprite_ext(sprite_index, image_index, x + 2 - random_func(2,5,true)   , y + 2 - random_func(1,5,true) ,spr_dir,1,0,-1,1)  
                                gpu_set_blendmode(bm_normal);
        

          
          

         

}


if shock >= 10  {
    
     draw_sprite_ext(sprite_get("aura"), get_gameplay_time()/3, x   , y  ,spr_dir,1,0,-1,0.4) 
                          gpu_set_blendmode(bm_add);
                      draw_sprite_ext(sprite_get("aura"), get_gameplay_time()/3, x + 2 - random_func(2,5,true)   , y + 2 - random_func(1,5,true) ,spr_dir,1,0,-1,0.4)  
                         gpu_set_blendmode(bm_normal);
}

shader_end() 

