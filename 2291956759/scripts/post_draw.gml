shader_start();

if attacking && attack == AT_TAUNT && window == 4 {
  gpu_set_blendmode(bm_add);
        draw_sprite_ext(sprite_index, image_index , x  + 3 - random_func(1,6,true), y + 3 - random_func(2,6,true)  , spr_dir*1.05, 1.05, 0 , -1 , 0.3);
  gpu_set_blendmode(bm_normal);
}

 if cheapmode == 2 {
	  
	  if get_gameplay_time() < 600 {
	      draw_debug_text(x - 150 ,y -162,"A cheapie? Prepare to face my army then.");
	  }  
	    
	}

if cheapmode = 1 && get_gameplay_time() < 300{ 
	draw_debug_text(x - 80 ,y -162,"Your name seem sus.");
	draw_debug_text(x - 140 ,y -142,"(down + taunt to active anticheat.)");
}
/*
if invincible && invince_time <= 2 {
   		
		draw_sprite_ext(sprite_index, image_index, x, y, spr_dir, 1, 0, -1, 1);

	
}
*/

if (UImode == 4) && invincible && invince_time <= 2 {
   		
		draw_sprite_ext(sprite_index, image_index, x, y, spr_dir, 1, 0, -1, 1);

	
}

if triggercutscene > 390 {
    draw_sprite_ext(sprite_get("cutscene"),0,(room_width/2 - 200), room_height/2 ,4,5,0,-1,1)
}

shader_end() 

