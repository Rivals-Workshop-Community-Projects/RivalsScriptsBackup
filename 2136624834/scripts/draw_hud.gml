///
shader_start();
    if ncharge >= 20 && ncharge < 60 {
         draw_sprite_ext(sprite_get("sno1"), 0, temp_x + 35, temp_y-18, 2, 2, 0, -1, 1);    
    }
    
     if ncharge >= 60 {
         draw_sprite_ext(sprite_get("sno2"), 0, temp_x + 35, temp_y-18, 2, 2, 0, -1, 1);    
    }
    
    


    
    if timefreeze < 1 {
        draw_sprite(sprite_get("flake3"),  13*timestop / 100   , temp_x+ 40, temp_y -52  );
    }
    
    
    if timefreeze > 1 {
        draw_sprite(sprite_get("flake3"),   14*timefreeze/ 360  , temp_x+ 40, temp_y -52  );
    }
    
    
if timestop >= 100 {
        draw_sprite(sprite_get("flake3"),  13  , temp_x+ 40, temp_y -52  );
}    


if introtimer > 0 {
    
    
    
        draw_sprite(sprite_get("interaction"), 0, temp_x - 20, temp_y - 170);
    
    if introhit = -1 && introtimer < 150 {
         if introtimer == 150 {
                     spawn_hit_fx( temp_x + 300 , temp_y + 60  , 305 )
         spawn_hit_fx( temp_x + 300 , temp_y + 60  , 304 )
        	sound_play(asset_get("sfx_ice_on_player"));
      
    }
          draw_sprite(sprite_get("interactionbox"), 0, temp_x + 40, temp_y - 180);
      }
      
        if introhit = 1 {
           draw_sprite(sprite_get("interactionbox"), 0, temp_x + 40, temp_y - 220);
      }

//Zetta
  if hit_player_obj.url == "1913869515"  {
      if introhit = -1 && introtimer < 150 {
           draw_debug_text(temp_x + 0,temp_y - 28,"Yeah, the usual. Unless there is");
           draw_debug_text(temp_x + 2,temp_y - 12,"something world-threatening happens.");
      }
      
        if introhit = 1 {
           draw_debug_text(temp_x + 10,temp_y - 68,"How's THAT, Dad taught me that!");
      }
      
  }

//Alex
  if hit_player_obj.url == "2069283406"  {
      if introhit = -1 && introtimer < 150 {
           draw_debug_text(temp_x + 44,temp_y - 28,"I can never go to");
           draw_debug_text(temp_x + 46,temp_y - 12,"swim normally...");
      }
      
        if introhit = 1 {
            draw_debug_text(temp_x + 30,temp_y - 68,"I can freeze time now!");
      }
      
  }
  
 //Mayu
  if hit_player_obj.url == "1997619532"  {
      if introhit = -1 && introtimer < 150 {
            draw_debug_text(temp_x + 44,temp_y - 28,"Oh we're already");
            draw_debug_text(temp_x + 46,temp_y - 12,"far beyond that~");
      }
      
        if introhit = 1 {
           draw_debug_text(temp_x + 42,temp_y - 68,"Icecream BALLS!");
      }
      
  }
  
   //Katie
  if hit_player_obj.url == "2085832560"  {
      if introhit = -1 && introtimer < 150 {
           draw_debug_text(temp_x + 30,temp_y - 28,"why do you act like you");
           draw_debug_text(temp_x + 28,temp_y - 12,"have free healthcare!?");
      }
      
        if introhit = 1 {
            draw_debug_text(temp_x + 36,temp_y - 68,"Now can you tell me");
            draw_debug_text(temp_x + 34,temp_y - 52,"who is this Uza girl?");
      } 
      
  }
  


//Saji
  if hit_player_obj.url == "2108469290"  {
      if introhit = -1 && introtimer < 150 {
            draw_debug_text(temp_x + 40,temp_y - 28,"Always has been.");
      }
      
        if introhit = 1 {
             draw_debug_text(temp_x + 34,temp_y - 68,"these things are ");
             draw_debug_text(temp_x + 36,temp_y - 52,"actually ICECREAM!");

      }
      
  }
  

//Uza
  if hit_player_obj.url == "2047413648"  {
      if introhit = -1 && introtimer < 150 {
           draw_debug_text(temp_x + 46,temp_y - 28,"He is not much of");
           draw_debug_text(temp_x + 48,temp_y - 12,"a king any more.");
      }
      
        if introhit = 1 {
           draw_debug_text(temp_x + 44,temp_y - 68,"Oh, you are ");
            draw_debug_text(temp_x + 46,temp_y - 52,"approaching me?");


      }
      
  }
  
///Nolan
  if hit_player_obj.url == "2154720280"  {
      if introhit = -1 && introtimer < 150 {
           draw_debug_text(temp_x + 24,temp_y - 28,"Mhmm.. nope, not interested.");
      }
      
        if introhit = 1 {
           draw_debug_text(temp_x + 34,temp_y - 68,"Icecream machine");
            draw_debug_text(temp_x + 36,temp_y - 52,"still broken?");

      }
      
  }

///Elice
    if hit_player_obj.url == "2136624834"  {
      if introhit = -1 && introtimer < 150 {
           draw_debug_text(temp_x + 46,temp_y - 28,"So it's the same");
           draw_debug_text(temp_x + 48,temp_y - 12,"type of power huh?");
      }
      
        if introhit = 1 {
           draw_debug_text(temp_x + 44,temp_y - 68,"Shall we test");
            draw_debug_text(temp_x + 46,temp_y - 52,"our Rush Attack?");

      }
      
  }
}
  
  
shader_end();    