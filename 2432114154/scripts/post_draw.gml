shader_start();

if "danger" in self {
	
	if danger > 0 {
	shake_camera(2,2)
	danger -- 
	draw_sprite_ext(sprite_get("roundin1"),0,room_width/2 + 180 - danger*3, room_height/2 - 80, 1,1,0,-1,min(0.6,danger/30))
	draw_sprite_ext(sprite_get("roundin1"),0,room_width/2 - 180 + danger*3, room_height/2 + 90, 1,1,180,-1,min(danger/30))
	
	}
}

if taunt_down && special_down {
    if move_cooldown[AT_TAUNT] > 0 {
        draw_debug_text(x - 80 ,y - 155, "VA volume : " + string(zolume));	
        draw_debug_text(x - 80 ,y - 130, "VA pitch  : " + string(zitch));	
    }
    
}


if attacking && attack == AT_TAUNT && window == 4 {
  gpu_set_blendmode(bm_add);
        draw_sprite_ext(sprite_index, image_index , x  + 3 - random_func(1,6,true), y + 3 - random_func(2,6,true)  , spr_dir*1.05, 1.05, 0 , -1 , 0.3);
  gpu_set_blendmode(bm_normal);
}

if attacking && attack == AT_FSPECIAL && window == 3 {
    
    draw_sprite_ext(sprite_index , image_index, x  , y , spr_dir, 1, 0 , c_black , 0.4);
}

if attacking && attack == AT_EXTRA_2  {
    
    if window == 6 {
      gpu_set_blendmode(bm_add);
        draw_sprite_ext(sprite_index , image_index - 1, x - shsp , y - svsp  , spr_dir, 1, 0 , -1 , 0.2 - window_timer/30);
     gpu_set_blendmode(bm_normal);
  
      gpu_set_blendmode(bm_add);
        draw_sprite_ext(sprite_index , image_index  - 2, x - shsp*2 , y - svsp*2  , spr_dir, 1, 0 , -1 , 0.1 - window_timer/30);
      gpu_set_blendmode(bm_normal);
  
    } else {
      gpu_set_blendmode(bm_add);
        draw_sprite_ext(sprite_index , image_index - 1, x - shsp , y - svsp  , spr_dir, 1, 0 , -1 , 0.2);
     gpu_set_blendmode(bm_normal);
  
      gpu_set_blendmode(bm_add);
        draw_sprite_ext(sprite_index , image_index  - 2, x - shsp*2 , y - svsp*2  , spr_dir, 1, 0 , -1 , 0.1);
      gpu_set_blendmode(bm_normal); 
    }
    
    if window == 6 {
        
       gpu_set_blendmode(bm_add);
       draw_sprite_ext(finalattack, finalframe + window_timer/4, finalx, y , spr_dir*(1.2 + (window_timer/30)/4), (1.2 + (window_timer/30)/4), 0 , -1 , 0.6 - window_timer/30 );
            draw_sprite_ext(finalattack, finalframe + window_timer/4, finalx, y , spr_dir*1, 1, 0 , -1 , 0.5 - window_timer/30 );
       gpu_set_blendmode(bm_normal); 
       
       draw_sprite_ext(finalattack, finalframe + window_timer/4, finalx, y , spr_dir*1, 1, 0 , -1 , 1 - window_timer/30 );
    } else {
        draw_sprite_ext(finalattack, finalframe, finalx, y , spr_dir*1, 1, 0 , -1 , 0.8 - (window_timer%4)/20 );
    }
    
}

if (UImode == 4) && invincible && invince_time <= 2 {
   		
		draw_sprite_ext(sprite_index, image_index, x, y, spr_dir, 1, 0, -1, 1);

	
}

shader_end() 

if get_gameplay_time() <= 126  {
  
  draw_sprite_ext(sprite_get("intro"), min(29, get_gameplay_time()/4.2) , x - 132*spr_dir, y - 254 , spr_dir*2, 2, 0 , -1 , 1);

}


