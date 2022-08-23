
if cheapmode == 1 && get_gameplay_time() < 600 &&  get_gameplay_time() > 15 {
    draw_debug_text(x - 110 ,y -162,"Are you dishonoring this fight?");
	draw_debug_text(x - 105 ,y -142,"(Dstrong to active anticheap)");
}

if cheapmode == 3 && get_gameplay_time() < 660 && window != 3{
     draw_debug_text(x - 48 ,y -162,"You Shall Die.");
}


shader_start();

if move_cooldown[AT_EXTRA_3] > 0 && hit_player_obj != self{
        	draw_sprite_ext(sprite_get("slosh"), 0, hit_player_obj.x , hit_player_obj.y - 36,
        	1 - (move_cooldown[AT_EXTRA_3]/maxdraw)/2,
        	1 - (move_cooldown[AT_EXTRA_3]/maxdraw)/2, 
        	angledraw , -1 , move_cooldown[AT_EXTRA_3]/maxdraw + 0.2);

}

if state == PS_PARRY && state_timer < 20{
   draw_sprite_ext(sprite_get("parryfx"), state_timer/5, x, y, spr_dir,1,0, -1, 1 - state_timer/20); 
}

if state_cat == SC_HITSTUN {
		draw_sprite_ext(sprite_index, image_index, x  , y - triggered*15 , spr_dir, 1, 0 , c_red , 0.3);
}


if attacking && attack == AT_DSTRONG {
	if window == 1 {
		draw_sprite_ext(sprite_index, image_index, x + 4 - random_func(1,8,true) , y - random_func(2,8,true)  , spr_dir, 1, 0 , c_white , 0.4);
}

 if hitstop > 6 {     
 	draw_sprite_ext(sprite_get("RCEE"), state_timer  / 3, x , y, 1, 1, 0, -1, random_func(1,14,true)/15 );
 }
 

if cheapmode == 3 {
	
	
 if  get_gameplay_time() % 12 > 6 {     
 	draw_sprite_ext(sprite_get("RCEE"), state_timer  / 3, x , y, 3, 3, 0, -1, random_func(1,14,true)/10 );
 }
 
 if  get_gameplay_time() % 2 == 0 {     
 	draw_sprite_ext(sprite_get("RCEm"), state_timer  / 3, x , y, 3, 3, 0, -1, random_func(2,14,true)/10  )
 }
 
 if  get_gameplay_time() % 12 > 4 {     
 	draw_sprite_ext(sprite_get("RCEs"), state_timer  / 3, x , y, 3, 3, 0, -1, random_func(3,14,true)/10  );
 }

}

if window == 1 {

 if  window_timer % 12 > 6 {     
 	draw_sprite_ext(sprite_get("RCEE"), state_timer  / 3, x , y, 1, 1, 0, -1, random_func(1,14,true)/10 );
 }
 
 if  window_timer % 2 == 0 {     
 	draw_sprite_ext(sprite_get("RCEm"), state_timer  / 3, x , y, 1, 1, 0, -1, random_func(2,14,true)/10  )
 }
 
 if  window_timer % 12 > 4 {     
 	draw_sprite_ext(sprite_get("RCEs"), state_timer  / 3, x , y, 1, 1, 0, -1, random_func(3,14,true)/10  );
 }

}

if window == 3 && window_timer > 20{
     if  window_timer % 3 == 0 {     
 	draw_sprite_ext(sprite_get("RCEE"), state_timer  / 3, x , y, random_func(1,3,true)/10 + 0.7, random_func(1,3,true)/10 + 0.7, 0, -1, 1  )
 }
      if  window_timer % 3 == 0 {     
 	draw_sprite_ext(sprite_get("RCEE"), state_timer  / 3, x , y, 1, 1, 0, -1, 1  )
 }
 
 if  window_timer % 3 ==  1 {     
 	draw_sprite_ext(sprite_get("RCEs"), state_timer  / 3, x , y, 1, 1, 0, -1, 1  );
 }
    
     if  window_timer % 3 ==  1 {     
 	draw_sprite_ext(sprite_get("RCEs"), state_timer  / 3, x , y, random_func(1,3,true)/10 + 0.7, random_func(1,3,true)/10 + 0.7, 0, -1, 1  );
 }

}   


if window == 2{
   if window_timer <= 10 {
      draw_sprite_ext(sprite_get("airdodge"), window_timer / 2, x - 60 - window_timer*6, y , 1, 1,0, -1,0.7 - window_timer/10  );
      draw_sprite_ext(sprite_get("airdodge"), window_timer / 2, x - 120- window_timer*3, y , 1, 1,0, -1,0.7 - window_timer/10   );
      
      draw_sprite_ext(sprite_get("airdodge"), window_timer / 2, x - 40 - window_timer*4, y - 40 - window_timer*4 , 1, 1,0, -1,0.7 - window_timer/10   );
      draw_sprite_ext(sprite_get("airdodge"), window_timer / 2, x - 80 - window_timer*2, y - 80 - window_timer*2 , 1, 1,0, -1,0.7 - window_timer/10   );
      
      draw_sprite_ext(sprite_get("airdodge"), window_timer / 2, x , y - 60 - window_timer*6 , 1, 1,0, -1,0.7 - window_timer/10   );
      draw_sprite_ext(sprite_get("airdodge"), window_timer / 2, x , y - 120 - window_timer*3 , 1, 1,0, -1,0.7 - window_timer/10   );

      draw_sprite_ext(sprite_get("airdodge"), window_timer / 2, x + 40 + window_timer*4, y - 40 - window_timer*4 , 1, 1,0, -1,0.7 - window_timer/10   );
      draw_sprite_ext(sprite_get("airdodge"), window_timer / 2, x + 80 + window_timer*2, y - 80 - window_timer*2 , 1, 1,0, -1,0.7 - window_timer/10   );
      
            
      draw_sprite_ext(sprite_get("airdodge"), window_timer / 2, x + 60 + window_timer*6, y , 1, 1,0, -1,0.7 - window_timer/10   );
      draw_sprite_ext(sprite_get("airdodge"), window_timer / 2, x + 120 + window_timer*3, y , 1, 1,0, -1,0.7 - window_timer/10  );
  }  
}

if window == 4{
   if window_timer <= 10 {
      draw_sprite_ext(sprite_get("airdodge"), window_timer / 2, x - 60 + window_timer*6, y , spr_dir, 1,0, -1,0.7 - window_timer/10  );
      draw_sprite_ext(sprite_get("airdodge"), window_timer / 2, x - 120 + window_timer*3, y , spr_dir, 1,0, -1,0.7 - window_timer/10   );
      
      draw_sprite_ext(sprite_get("airdodge"), window_timer / 2, x - 40 + window_timer*4, y - 40 + window_timer*4 , spr_dir, 1,0, -1,0.7 - window_timer/10   );
      draw_sprite_ext(sprite_get("airdodge"), window_timer / 2, x - 80 + window_timer*2, y - 80 + window_timer*2 , spr_dir, 1,0, -1,0.7 - window_timer/10   );
      
      draw_sprite_ext(sprite_get("airdodge"), window_timer / 2, x , y - 60 + window_timer*6 , spr_dir, 1,0, -1,0.7 - window_timer/10   );
      draw_sprite_ext(sprite_get("airdodge"), window_timer / 2, x , y - 120 + window_timer*3 , spr_dir, 1,0, -1,0.7 - window_timer/10   );

      draw_sprite_ext(sprite_get("airdodge"), window_timer / 2, x + 40 - window_timer*4, y - 40 + window_timer*4 , spr_dir, 1,0, -1,0.7 - window_timer/10   );
      draw_sprite_ext(sprite_get("airdodge"), window_timer / 2, x + 80 - window_timer*2, y - 80 + window_timer*2 , spr_dir, 1,0, -1,0.7 - window_timer/10   );
      
            
      draw_sprite_ext(sprite_get("airdodge"), window_timer / 2, x + 60 - window_timer*6, y , spr_dir, 1,0, -1,0.7 - window_timer/10   );
      draw_sprite_ext(sprite_get("airdodge"), window_timer / 2, x + 120 - window_timer*3, y , spr_dir, 1,0, -1,0.7 - window_timer/10  );
  }  
}

if window == 3 && window_timer >= 20 {
	
 if  window_timer % 3 == 0  or window_timer == 20{     
       RSE1 = random_func(11, 300, true);
		 RSE2 = random_func(12, 300, true);
 }
		 
		 
 if  window_timer % 3 == 1 or window_timer == 20 {     
 	 RSE3 = random_func(13, 300, true);
	 RSE4 = random_func(14, 300, true);
 }
		 
       

 

         draw_sprite_ext(sprite_get("slashc"), window_timer / 2, x - 150 + RSE1, y - 150 + RSE2, spr_dir, 1,0, -1,0.6 );
         draw_sprite_ext(sprite_get("SC"), window_timer / 1, x - 150 + RSE3, y - 150 + RSE4, spr_dir, 1,0, -1,0.6  );
         draw_sprite_ext(sprite_get("airdodge"), window_timer / 2, x + 150 - RSE1, y + 150 - RSE2, spr_dir, 1,0, -1,0.6  );
         draw_sprite_ext(sprite_get("roll_backward"), window_timer / 2, x + 150 - RSE3, y + 150 - RSE4, spr_dir, 1,0, -1,0.6  );
         draw_sprite_ext(sprite_get("nair"), window_timer / 2, x + 150 - RSE4, y + 150 - RSE3, spr_dir, 1,0, -1,0.6  );
         draw_sprite_ext(sprite_get("dattack"), window_timer / 2, x + 150 - RSE2, y + 150 - RSE1, spr_dir, 1,0, -1,0.6  );

}


}


if rank >= 4 && get_gameplay_time() % 5 < 3{
	  gpu_set_blendmode(bm_add);
	  
	  switch get_player_color(player) {
	  	case 0 :
        draw_sprite_ext(sprite_index, image_index, x + 2 - shsp*1.1 - random_func(1,4,true) , y - 2 - (10 * triggered) - svsp*1.1 + random_func(2,4,true)  , spr_dir, 1, 0 , c_purple , 0.2);
		draw_sprite_ext(sprite_index, image_index, x - 2 - shsp*1.05 + random_func(1,4,true) , y + 2 - (10 * triggered) - svsp*1.05 - random_func(2,4,true)  , spr_dir, 1, 0 , c_aqua , 0.3);
        break ;

	  	case 1 :
        draw_sprite_ext(sprite_index, image_index, x + 2 - shsp*1.1 - random_func(1,4,true) , y - 2 - (10 * triggered) - svsp*1.1 + random_func(2,4,true)  , spr_dir, 1, 0 , c_red , 0.2);
		draw_sprite_ext(sprite_index, image_index, x - 2 - shsp*1.05 + random_func(1,4,true) , y + 2 - (10 * triggered) - svsp*1.05 - random_func(2,4,true)  , spr_dir, 1, 0 , c_red , 0.3);
        break ;

	  	case 2 :
        draw_sprite_ext(sprite_index, image_index, x + 2 - shsp*1.1 - random_func(1,4,true) , y - 2 - (10 * triggered) - svsp*1.1 + random_func(2,4,true)  , spr_dir, 1, 0 , c_purple , 0.2);
		draw_sprite_ext(sprite_index, image_index, x - 2 - shsp*1.05 + random_func(1,4,true) , y + 2 - (10 * triggered) - svsp*1.05 - random_func(2,4,true)  , spr_dir, 1, 0 , c_blue  , 0.3);
        break ;

	  	case 3 :
        draw_sprite_ext(sprite_index, image_index, x + 2 - shsp*1.1 - random_func(1,4,true) , y - 2 - (10 * triggered) - svsp*1.1 + random_func(2,4,true)  , spr_dir, 1, 0 , -1 , 0.1);
		draw_sprite_ext(sprite_index, image_index, x - 2 - shsp*1.05 + random_func(1,4,true) , y + 2 - (10 * triggered) - svsp*1.05 - random_func(2,4,true)  , spr_dir, 1, 0 , -1 , 0.2);
        break ;
        
	  	case 4 :
        draw_sprite_ext(sprite_index, image_index, x + 2 - shsp*1.1 - random_func(1,4,true) , y - 2 - (10 * triggered) - svsp*1.1 + random_func(2,4,true)  , spr_dir, 1, 0 , c_fuchsia , 0.2);
		draw_sprite_ext(sprite_index, image_index, x - 2 - shsp*1.05 + random_func(1,4,true) , y + 2 - (10 * triggered) - svsp*1.05 - random_func(2,4,true)  , spr_dir, 1, 0 , c_blue , 0.3);
        break ;

	  	case 5 :
        draw_sprite_ext(sprite_index, image_index, x + 2 - shsp*1.1 - random_func(1,4,true) , y - 2 - (10 * triggered) - svsp*1.1 + random_func(2,4,true)  , spr_dir, 1, 0 , c_red , 0.2);
		draw_sprite_ext(sprite_index, image_index, x - 2 - shsp*1.05 + random_func(1,4,true) , y + 2 - (10 * triggered) - svsp*1.05 - random_func(2,4,true)  , spr_dir, 1, 0 , c_yellow , 0.3);
        break ;

	  	case 6 :
        draw_sprite_ext(sprite_index, image_index, x + 2 - shsp*1.1 - random_func(1,4,true) , y - 2 - (10 * triggered) - svsp*1.1 + random_func(2,4,true)  , spr_dir, 1, 0 , c_aqua , 0.2);
		draw_sprite_ext(sprite_index, image_index, x - 2 - shsp*1.05 + random_func(1,4,true) , y + 2 - (10 * triggered) - svsp*1.05 - random_func(2,4,true)  , spr_dir, 1, 0 , c_blue , 0.3);
        break ;

	  	case 7 :
        draw_sprite_ext(sprite_index, image_index, x + 2 - shsp*1.1 - random_func(1,4,true) , y - 2 - (10 * triggered) - svsp*1.1 + random_func(2,4,true)  , spr_dir, 1, 0 , c_fuchsia , 0.2);
		draw_sprite_ext(sprite_index, image_index, x - 2 - shsp*1.05 + random_func(1,4,true) , y + 2 - (10 * triggered) - svsp*1.05 - random_func(2,4,true)  , spr_dir, 1, 0 , c_blue , 0.3);
        break ;        

	  	case 8 :
        draw_sprite_ext(sprite_index, image_index, x + 2 - shsp*1.1 - random_func(1,4,true) , y - 2 - (10 * triggered) - svsp*1.1 + random_func(2,4,true)  , spr_dir, 1, 0 , c_green , 0.2);
		draw_sprite_ext(sprite_index, image_index, x - 2 - shsp*1.05 + random_func(1,4,true) , y + 2 - (10 * triggered) - svsp*1.05 - random_func(2,4,true)  , spr_dir, 1, 0 , c_lime , 0.3);
        break ;      


	  	case 9 :
        draw_sprite_ext(sprite_index, image_index, x + 2 - shsp*1.1 - random_func(1,4,true) , y - 2 - (10 * triggered) - svsp*1.1 + random_func(2,4,true)  , spr_dir, 1, 0 , c_blue , 0.2);
		draw_sprite_ext(sprite_index, image_index, x - 2 - shsp*1.05 + random_func(1,4,true) , y + 2 - (10 * triggered) - svsp*1.05 - random_func(2,4,true)  , spr_dir, 1, 0 , c_yellow , 0.3);
        break ;    
        
	  }
 
  gpu_set_blendmode(bm_normal);
  
}


shader_end() 



