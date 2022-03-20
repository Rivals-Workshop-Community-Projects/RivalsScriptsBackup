//
shader_start();

if ending == 0 {
draw_debug_text(floor(x) - 40, floor(y) - 134,string(phaseh + 1));
draw_debug_text(floor(x) - 90, floor(y) - 134,"PHASE: ");
}

shader_end();


if ending > 0 {
		draw_set_alpha(0.4);
        draw_rectangle_color(0,0,room_width,room_height,0,0,0,0,false);
    	draw_set_alpha(1);
    	
    	total = stock + time + style

         draw_debug_text(room_width/2 - 80,room_height/2 - 105,"!!!BOSS DEFEATED!!!");
      
         
    	if ending < 520 {
    		   draw_debug_text(room_width/2 - 60,room_height/2 - 80,"Stock:  " + string(stock));
    	}
    	    	
    	if ending < 500 {
    		   draw_debug_text(room_width/2 - 60,room_height/2 - 65,"Style:  " + string(style));
    	}
    	
    	if ending < 480 {
    		   draw_debug_text(room_width/2 - 60,room_height/2 - 50,"Time:  " + string(time));
    	}
    	
    	if ending < 460 {
    		   draw_debug_text(room_width/2 - 60,room_height/2 - 35,"Total:  " + string(total));
    	}
    	
    	if ending < 400 {
    		   draw_debug_text(room_width/2 - 80,room_height/2 - 0,"RANK:");
    		   
    		   

    	             if total < 800 {
    	             	  draw_sprite_ext(sprite_get("rank"), 5, room_width/2 ,room_height/2 - 0 , 1, 1,0, -1,1  );
    		   		      draw_sprite_ext(sprite_get("rank"), 10, room_width/2 ,room_height/2 - 0 , 1, 1,0, -1, (ending - 360)/40  );
	                
                     }
	                 
	                 if total >= 800 && total < 1200{
	                      draw_sprite_ext(sprite_get("rank"), 6, room_width/2 ,room_height/2 - 0 , 1, 1,0, -1,1  );
    		   		      draw_sprite_ext(sprite_get("rank"), 11, room_width/2 ,room_height/2 - 0 , 1, 1,0, -1, (ending - 360)/40  );
	                 }
                 
	                 if total >= 1200 && total < 1600{
	                 	  draw_sprite_ext(sprite_get("rank"), 7, room_width/2 ,room_height/2 - 0 , 1, 1,0, -1,1  );
    		   		      draw_sprite_ext(sprite_get("rank"), 12, room_width/2 ,room_height/2 - 0 , 1, 1,0, -1, (ending - 360)/40  );
	                 }
                 
	                 if total >= 1600 && total < 2000{
	                 	  draw_sprite_ext(sprite_get("rank"), 8, room_width/2 ,room_height/2 - 0 , 1, 1,0, -1,1  );
    		   		      draw_sprite_ext(sprite_get("rank"), 13, room_width/2 ,room_height/2 - 0 , 1, 1,0, -1, (ending - 360)/40  );
	                 }
                 
	                 if total >= 2000 && total < 2400{
	                  	  draw_sprite_ext(sprite_get("rank"), 9, room_width/2 ,room_height/2 - 0 , 1, 1,0, -1,1  );
    		   		      draw_sprite_ext(sprite_get("rank"), 14, room_width/2 ,room_height/2 - 0 , 1, 1,0, -1, (ending - 360)/40  );
	                 }
	                 
	                 if total >= 2400 && total < 2800{
	                  	  draw_sprite_ext(sprite_get("rank"), 9, room_width/2 ,room_height/2 + 6 , 1, 1,0, -1,1  );
    		   		      draw_sprite_ext(sprite_get("rank"), 14, room_width/2 ,room_height/2 + 6 , 1, 1,0, -1, (ending - 360)/40  );	                 	
	                   	  draw_sprite_ext(sprite_get("rank"), 9, room_width/2 + 14,room_height/2 - 0 , 1, 1,0, -1,1  );
    		   		      draw_sprite_ext(sprite_get("rank"), 14, room_width/2 + 14 ,room_height/2 - 0 , 1, 1,0, -1, (ending - 360)/40  );
	                 }
	                 
	                 if total >= 2800 {
	                  	  draw_sprite_ext(sprite_get("rank"), 9, room_width/2 ,room_height/2 + 6 , 1, 1,0, -1,1  );
    		   		      draw_sprite_ext(sprite_get("rank"), 14, room_width/2 ,room_height/2 + 6 , 1, 1,0, -1, (ending - 360)/40  );	                 	
	                   	  draw_sprite_ext(sprite_get("rank"), 9, room_width/2 + 14,room_height/2 - 0 , 1, 1,0, -1,1  );
    		   		      draw_sprite_ext(sprite_get("rank"), 14, room_width/2 + 14 ,room_height/2 - 0 , 1, 1,0, -1, (ending - 360)/40  );
	                   	  draw_sprite_ext(sprite_get("rank"), 9, room_width/2 - 14,room_height/2 - 0 , 1, 1,0, -1,1  );
    		   		      draw_sprite_ext(sprite_get("rank"), 14, room_width/2 - 14 ,room_height/2 - 0 , 1, 1,0, -1, (ending - 360)/40  );    		   		      
	                 }
	                 
    	}
}