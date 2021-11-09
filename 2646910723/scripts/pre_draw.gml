///
shader_start();


with pHitBox {
	if (player_id == other.id && attack == AT_DTILT && abs(hsp) < 3 ) {
	 
	 if player_id.brage < 98  {   
	    	draw_sprite_ext(sprite_get("scythe"), (get_gameplay_time()/8)%5, x , y , spr_dir, 1, 0 , c_white , 1);
	
   
   
		if player_id.bragesub >= 50  {
	    
	     if (get_gameplay_time()/8)%5 < 1 {
	       	    	draw_sprite_ext(sprite_get("scythe"), 6, x + 4*spr_dir  , y , spr_dir, 1, 0 , c_white , 1);
         }  
         
         if get_gameplay_time() % 6 < 2 {
	         	draw_sprite_ext(sprite_get("scythe"), 6, x + 8*spr_dir - 2 + random_func(1,3,true)*2 , y - 2 + random_func(2,2,true)*4, spr_dir, 1, 0 , c_white , 1);
	     }
   
        }

    } else {
      if get_gameplay_time() % 5 <= 2 {
      	draw_sprite_ext(sprite_get("scythe"), 16 + (get_gameplay_time()/2)%4, x + 40 - random_func(1,81,true), y + 40 - random_func(2,81,true), spr_dir, 1, 0 , c_white , 1);
      }
         if get_gameplay_time() % 4 == 0 {
               sound_play(sound_get("swingw1"),false,noone,.5, 1.3)
         }
    }
        
	}
}



if move_cooldown[AT_EXTRA_3] == 0 && get_gameplay_time() > 120 && (move_cooldown[AT_EXTRA_2] == 0 or move_cooldown[AT_EXTRA_2] > 5) {

  if brage < 98 {
      
	draw_sprite_ext(sprite_get("scythe"), (get_gameplay_time()/8)%5, famix , famiy , spr_dir, 1, 0 , c_white , 1);
	
   
   

    if bragesub >= 50  {
	    
	
	     if (get_gameplay_time()/8)%5 < 1 {
	       	    	draw_sprite_ext(sprite_get("scythe"), 6, famix + 4*spr_dir  , famiy , spr_dir, 1, 0 , c_white , 1);
         }  
         
         if get_gameplay_time() % 6 < 2 {
	         	draw_sprite_ext(sprite_get("scythe"), 6, famix + 8*spr_dir - 2 + random_func(1,3,true)*2 , famiy - 2 + random_func(2,2,true)*4, spr_dir, 1, 0 , c_white , 1);
	     }
   

   }
   
  } else {
      if get_gameplay_time() % 5 <= 2 {
      	draw_sprite_ext(sprite_get("scythe"), 16 + (get_gameplay_time()/2)%4, famix , famiy , spr_dir, 1, 0 , c_white , 1);
      }
         if get_gameplay_time() % 4 == 0 {
               sound_play(sound_get("swingw1"),false,noone,.5, 1.3)
         }
  }
    
}
    
shader_end() 