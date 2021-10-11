shader_start();

if style == 4 && visible && state != PS_PRATFALL && state != PS_PRATLAND {
    
  gpu_set_blendmode(bm_add);
        draw_sprite_ext(sprite_index, image_index - 1 , x , y - 2 + random_func(2,4,true)  , spr_dir, 1, 0 , c_aqua , 0.2);
		draw_sprite_ext(sprite_index, image_index - 1, x , y + 2 - random_func(2,4,true)  , spr_dir, 1, 0 , c_fuchsia , 0.2);

        draw_sprite_ext(sprite_index, image_index-1, x + 2 - shsp*1.1 - random_func(1,4,true) , y - 2 - svsp*1.1 + random_func(2,4,true)  , spr_dir, 1, 0 , c_aqua , 0.2);
		draw_sprite_ext(sprite_index, image_index-1, x - 2 - shsp*1.05 + random_func(1,4,true) , y + 2 - svsp*1.05 - random_func(2,4,true)  , spr_dir, 1, 0 , c_fuchsia , 0.2);

        draw_sprite_ext(sprite_index, image_index, x + 2 - shsp*1.1 - random_func(1,4,true) , y - 2 - svsp*1.1 + random_func(2,4,true)  , spr_dir, 1, 0 , c_aqua , 0.2);
		draw_sprite_ext(sprite_index, image_index, x - 2 - shsp*1.05 + random_func(1,4,true) , y + 2 - svsp*1.05 - random_func(2,4,true)  , spr_dir, 1, 0 , c_fuchsia , 0.2);
  gpu_set_blendmode(bm_normal);
  
}


if get_gameplay_time() < 80 {
	gpu_set_blendmode(bm_add);
        draw_sprite_ext(sprite_get("idles"), image_index, x + 2 - shsp*1.1 - random_func(1,4,true) , y - 2 - svsp*1.1 + random_func(2,4,true)  , spr_dir, 1, 0 , c_aqua , 40/get_gameplay_time());
        draw_sprite_ext(sprite_get("idles"), image_index, x + 2 - shsp*1.1 - random_func(2,4,true) , y - 2 - svsp*1.1 + random_func(1,4,true)  , spr_dir, 1, 0 , c_fuchsia , 40/get_gameplay_time());

    gpu_set_blendmode(bm_normal);
	
}

if move_cooldown[AT_DSPECIAL_2] > 0 && ((window == 2 and window_timer < 27) or (window = 3 && window_timer > 14))  {
	        draw_sprite_ext(sprite_index, image_index-1, x + 2 - shsp*2 - random_func(1,4,true) , y - 2 - svsp*2 + random_func(2,4,true)  , spr_dir, 1, 0 , c_white , 0.4);
	  draw_sprite_ext(sprite_get("utaunt"), 0, x - 20*spr_dir + 2 - shsp*1.5 - random_func(1,2,true)*2 , y - 36 - svsp*1.5 + random_func(2,2,true)*2  , spr_dir, 1, 0 , c_white , 1);
     draw_debug_text(x + 2 - random_func(1,4,true) - 100,y + 2 - random_func(3,4,true) + 10,"Look at all these resources")	
     draw_debug_text(x + 2 - random_func(2,4,true) - 66,y + 2 - random_func(4,4,true) + 35,"I have to manage.")

}

if move_cooldown[AT_DSPECIAL_2] > 0 && ((window == 1 && window_timer > 4) or (window == 2 and window_timer >= 27)  or (window = 3 && window_timer <= 14)) {
	  draw_sprite_ext(sprite_get("utaunt"), 0, x - 24*spr_dir + 2 - shsp*1.5 - random_func(1,2,true)*2 , y - 40 - svsp*1.5 + random_func(2,2,true)*2  , spr_dir, 0.8, 0 , c_white , 0.8);

}

shader_end() 


if shoping == 1 && window < 3 {
	
     draw_sprite_ext(sprite_get("shop"), 1, x - 100 , y - 140  , 0.5, 0.5, 0 , c_white , 0.5);		
     draw_sprite_ext(sprite_get("shop"), 2, x - 60 , y - 140  , 0.5, 0.5, 0 , c_white , 0.5);	
     draw_sprite_ext(sprite_get("shop"), 3, x - 20 , y - 140  , 0.5, 0.5, 0 , c_white , 0.5);	
     draw_sprite_ext(sprite_get("shop"), 4, x + 20 , y - 140  , 0.5, 0.5, 0 , c_white , 0.5);		
     draw_sprite_ext(sprite_get("shop"), 5, x + 60 , y - 140  , 0.5, 0.5, 0 , c_white , 0.5);	
     draw_sprite_ext(sprite_get("shop"), 6, x + 100 , y - 140  , 0.5, 0.5, 0 , c_white , 0.5);
     
     draw_sprite_ext(sprite_get("shop"), item , x - 140 + item*40 , y - 140  , 1, 1, 0 , c_white , 1); 
     
     draw_debug_text(x - 120,y - 100,"Atk: Buy")
     draw_debug_text(x - 120,y - 85,"Spe: Cancel") 
      draw_debug_text(x + 30,y - 85,"Owns: " + string(LA) + " La")
         	
     if item == 1 {
     	draw_debug_text(x - 140,y - 200,"[Adaptive] Hitting Nspecial grant full Charge bar.")
     	draw_debug_text(x - 140,y - 185,"")
     	if adap = 0 {
     	draw_debug_text(x + 30,y - 100,"Cost: 1200 La")
     	} else {
     	draw_debug_text(x + 30,y - 100,"Owned")	
     	}
     }
    
     if item == 2 {
     	draw_debug_text(x - 140,y - 200,"[Enraged] Deals more damage for one hit   ")
     	draw_debug_text(x - 140,y - 185,"after parried or intercepted enemy attack.")
     	if raged = 0 {
     	draw_debug_text(x + 30,y - 100,"Cost: 1350 La")
     	} else {
     	draw_debug_text(x + 30,y - 100,"Owned")	
     	}
     }
     
     if item == 3 {
     	draw_debug_text(x - 140,y - 200,"[Parasitic] After taking damage, next successful")
     	draw_debug_text(x - 140,y - 185,"attack heal yourself proportional to damage dealt.")
     	if para = 0 {
     	draw_debug_text(x + 30,y - 100,"Cost: 1350 La")
     	} else {
     	draw_debug_text(x + 30,y - 100,"Owned")	
     	}
     }
     
     if item == 4 {
     	draw_debug_text(x - 140,y - 200,"[Untethered] Dodge and Roll speed is halved")
     	draw_debug_text(x - 140,y - 185,"but you freeze time when Roll thru an attack.")
     	if unte = 0 {
     	draw_debug_text(x + 30,y - 100,"Cost: 1500 La")
     	} else {
     	draw_debug_text(x + 30,y - 100,"Owned")	
     	}
     }
     
     if item == 5 {
     	draw_debug_text(x - 140,y - 200,"[Disconnected] Hold special while doing USpecial")
     	draw_debug_text(x - 140,y - 185,"to teleport (omnidirection), cost 1 charge.")
     	if disc = 0 {
     	draw_debug_text(x + 30,y - 100,"Cost: 1000 La")
     	} else {
     	draw_debug_text(x + 30,y - 100,"Owned")	
     	}
     }
     
     if item == 6 {
     	draw_debug_text(x - 140,y - 200,"[Gun] Add a new Fspecial while Transformed.")
     	draw_debug_text(x - 140,y - 185,"Cost all charge, high damage and power.")
     	if gun = 0 {
     	draw_debug_text(x + 30,y - 100,"Cost: 1500 La")
     	} else {
     	draw_debug_text(x + 30,y - 100,"Owned")	
     	}
     }
}

if move_cooldown[AT_NSPECIAL_2] > 2 {
    	
    	        
   gpu_set_blendmode(bm_add);
        draw_sprite_ext(sprite_index, image_index - 1 , x , y - 2 + random_func(2,4,true)  , spr_dir, 1, 0 , c_aqua , 0.2);
		draw_sprite_ext(sprite_index, image_index - 1, x , y + 2 - random_func(2,4,true)  , spr_dir, 1, 0 , c_fuchsia , 0.2);
  gpu_set_blendmode(bm_normal);

    
  gpu_set_blendmode(bm_add);
        draw_sprite_ext(sprite_index, image_index-1, x + 2 - shsp*2 - random_func(1,4,true) , y - 2 - svsp*2 + random_func(2,4,true)  , spr_dir, 1, 0 , c_aqua , 0.2);
		draw_sprite_ext(sprite_index, image_index-1, x - 2 - shsp*4 + random_func(1,4,true) , y + 2 - svsp*4 - random_func(2,4,true)  , spr_dir, 1, 0 , c_fuchsia , 0.2);
  gpu_set_blendmode(bm_normal);
  
    
  gpu_set_blendmode(bm_add);
        draw_sprite_ext(sprite_index, image_index, x + 2 - shsp*1.5 - random_func(1,4,true) , y - 2 - svsp*1.5 + random_func(2,4,true)  , spr_dir, 1, 0 , c_aqua , 0.2);
		draw_sprite_ext(sprite_index, image_index, x - 2 - shsp*3 + random_func(1,4,true) , y + 2 - svsp*3 - random_func(2,4,true)  , spr_dir, 1, 0 , c_fuchsia , 0.2);
  gpu_set_blendmode(bm_normal);
  
}



if get_gameplay_time() % 60 < 30 && LA >= 1000 && (adap != 1 or raged != 1 or para != 1 or unte != 1 or disc != 1 or gun != 1){
   draw_debug_text(shopx - 38,shopy + 15,"Taunt here")
}


