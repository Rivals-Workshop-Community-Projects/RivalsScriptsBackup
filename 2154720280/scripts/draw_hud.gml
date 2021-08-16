///
shader_start();

    
 
        draw_sprite(sprite_get("supply"),   supply  , temp_x+ 10, temp_y -42  );
    
    
    draw_sprite(sprite_get("batt"),   batt  , temp_x+ 114, temp_y -42  );
    draw_sprite(sprite_get("batt"),  6 + batt2/8.6  , temp_x+ 114, temp_y -42  );

if battfade == 88 or battfade == 86 or battfade == 84 or battfade == 82 or battfade == 80 {
    draw_sprite(sprite_get("batt"),   17  , temp_x+ 114, temp_y -42  );
    draw_sprite(sprite_get("batt"),   17  , temp_x+ 114, temp_y -42  );
    draw_sprite(sprite_get("batt"),   17  , temp_x+ 114, temp_y -42  );
    draw_sprite(sprite_get("batt"),   17  , temp_x+ 114, temp_y -42  );
}

if introtimer > 0 {
    
    
    
        draw_sprite(sprite_get("interaction"), 0, temp_x - 20, temp_y - 170);
    
    if introhit = -1 && introtimer < 150 {
         if introtimer == 150{
                     spawn_hit_fx( temp_x + 300 , temp_y + 60  , 305 )
         spawn_hit_fx( temp_x + 300 , temp_y + 60  , 304 )
        	sound_play(sound_get("shing"));
      
    }
          draw_sprite(sprite_get("interactionbox"), 0, temp_x + 40, temp_y - 180);
      }
      
        if introhit = 1 {
           draw_sprite(sprite_get("interactionbox"), 0, temp_x + 40, temp_y - 220);
      }

//Zetta
  if hit_player_obj.url == "1913869515"  {
      if introhit = -1 && introtimer < 150 {
           draw_debug_text(temp_x + 0,temp_y - 28,"Nothing personal, Mrs.Miko");
            draw_debug_text(temp_x + 2,temp_y - 12,"but I must follow my order.");
      }
      
        if introhit = 1 {
           draw_debug_text(temp_x + 30,temp_y - 68,"Hey Mrs.Miko can I...");
      }
      
  }

//Alex
  if hit_player_obj.url == "2069283406"  {
      if introhit = -1 && introtimer < 150 {
           draw_debug_text(temp_x + 34,temp_y - 28,"I have a new master.");
      }
      
        if introhit = 1 {
            draw_debug_text(temp_x + 20,temp_y - 68,"Your 'exotic meat' supplies");
            draw_debug_text(temp_x + 18,temp_y - 52,"dropped, What happened?.");
      }
      
  }
  
 //Mayu
  if hit_player_obj.url == "1997619532"  {
      if introhit = -1 && introtimer < 150 {
           draw_debug_text(temp_x + 32,temp_y - 28,"Oh.. it's YOU");
            draw_debug_text(temp_x + 34,temp_y - 12,"again. time to pay.");
      }
      
        if introhit = 1 {
           draw_debug_text(temp_x + 32,temp_y - 68,"Out of the way! I have");
            draw_debug_text(temp_x + 34,temp_y - 52,"bussiness to attend to.");
      }
      
  }
  
   //Katie
  if hit_player_obj.url == "2085832560"  {
      if introhit = -1 && introtimer < 150 {
           draw_debug_text(temp_x + 20,temp_y - 28,"You can try the no oil, full ");
           draw_debug_text(temp_x + 18,temp_y - 12,"vegan option for just 399$!");
      }
      
        if introhit = 1 {
            draw_debug_text(temp_x + 30,temp_y - 68,"Oh... uh.....");
            draw_debug_text(temp_x + 32,temp_y - 52,"I heard you like grills-");
      } 
      
  }
  


//Saji
  if hit_player_obj.url == "2108469290"  {
      if introhit = -1 && introtimer < 150 {
            draw_debug_text(temp_x + 40,temp_y - 28,"I do find beating people");
            draw_debug_text(temp_x + 42,temp_y - 16,"up more enjoyable.");
      }
      
        if introhit = 1 {
             draw_debug_text(temp_x + 34,temp_y - 68,"Would a ghost want ");
             draw_debug_text(temp_x + 36,temp_y - 52,"to eat a burger?");

      }
      
  }
  

//Uza
  if hit_player_obj.url == "2047413648"  {
      if introhit = -1 && introtimer < 150 {
           draw_debug_text(temp_x + 34,temp_y - 28,"Doing your own stunt?");
            draw_debug_text(temp_x + 36,temp_y - 12,"That's admirable.");
      }
      
        if introhit = 1 {
           draw_debug_text(temp_x + 34,temp_y - 68,"there are discount");
             draw_debug_text(temp_x + 36,temp_y - 52,"for Cosplayers.");

      }
      
  }
  
///Nolan
  if hit_player_obj.url == "2154720280"  {
      if introhit = -1 && introtimer < 150 {
           draw_debug_text(temp_x + 24,temp_y - 28,"No, i doubt he is.");
            draw_debug_text(temp_x + 16,temp_y - 12,"Either way, his fate is sealed");
      }
      
        if introhit = 1 {
           draw_debug_text(temp_x + 30,temp_y - 68,"Is the boss aware yet?");

      }
      
  }

///Elice
    if hit_player_obj.url == "2136624834"  {
      if introhit = -1 && introtimer < 150 {
           draw_debug_text(temp_x + 44,temp_y - 28,"Yeah...");
      }
      
        if introhit = 1 {
           draw_debug_text(temp_x + 34,temp_y - 68,"We can actually open");
            draw_debug_text(temp_x + 36,temp_y - 52,"a small business.");

      }
      
  }
}  



shader_end();    