///

if get_player_color(player) == 5 and sakura == 1 && get_gameplay_time() <= 200{
       draw_debug_text(temp_x,temp_y - 25,"Sakura Tempest Activated");
}

if get_player_color(player) == 5 and sakura == 0 && get_gameplay_time() <= 120{
       draw_debug_text(temp_x,temp_y - 25,"Press taunt to active Sakura Tempest Mode");
}


if get_player_color(player) != 5 and shade == 1 && get_gameplay_time() <= 200{
       draw_debug_text(temp_x,temp_y - 25,"Extra Shaded");
}

if get_player_color(player) != 5 and shade == 0 && get_gameplay_time() <= 120{
       draw_debug_text(temp_x,temp_y - 25,"Press taunt to active More Shade");
}


shader_start();
if introtimer > 0 {
        draw_sprite(sprite_get("interaction"), 0, temp_x - 20, temp_y - 170);
     if introhit = -1 && introtimer < 150{
                  if introtimer == 150 {
        spawn_hit_fx( temp_x + 200 , temp_y + 60  , 304 )
        sound_play(sound_get("RI"));
    	sound_play(asset_get("sfx_blow_heavy2"));
    	sound_play(asset_get("sfx_burnapplied"))
    }
    
          draw_sprite(sprite_get("interactionbox"), 0, temp_x + 40, temp_y - 180);
      }
      
        if introhit = 1{
           draw_sprite(sprite_get("interactionbox"), 0, temp_x + 40, temp_y - 220);
      }

//Zetta
  if hit_player_obj.url == "1913869515"  {
      if introhit = -1 && introtimer < 150{
           draw_debug_text(temp_x + 34,temp_y - 28,"Still holding back aren't you?");
            draw_debug_text(temp_x + 36,temp_y - 12,"That hit weaker than Mayu's.");
      }
      
        if introhit = 1{
           draw_debug_text(temp_x + 36,temp_y - 68,"Going easy on me will");
            draw_debug_text(temp_x + 38,temp_y - 52,"be a mistake, aunt.");
      }
      
  }

//Alex
  if hit_player_obj.url == "2069283406"  {
      if introhit = -1 && introtimer < 150{
           draw_debug_text(temp_x + 32,temp_y - 28,"Hah, I cannot possibly");
            draw_debug_text(temp_x + 34,temp_y - 12,"have an evil twin brother.");
      }
      
        if introhit = 1{
           draw_debug_text(temp_x + 30,temp_y - 68,"No malice intent, pal, just");
            draw_debug_text(temp_x + 32,temp_y - 52,"want to have a good match.");
      }
      
  }
  
 //Mayu
  if hit_player_obj.url == "1997619532"  {
      if introhit = -1 && introtimer < 150{
           draw_debug_text(temp_x + 32,temp_y - 28,"You are last year already...");
            draw_debug_text(temp_x + 34,temp_y - 12,"Stop acting like a punk, sis.");
      }
      
        if introhit = 1{
           draw_debug_text(temp_x + 32,temp_y - 68,"Isn't this your class time??");
            draw_debug_text(temp_x + 34,temp_y - 52,"Sis, are you skipping again?");
      }
      
  }
  
   //Katie
  if hit_player_obj.url == "2085832560"  {
      if introhit = -1 && introtimer < 150{
           draw_debug_text(temp_x + 28,temp_y - 28,"All these jobs.. sure make");
            draw_debug_text(temp_x + 32,temp_y - 12,"you more dangerous than");
             draw_debug_text(temp_x + 34,temp_y + 4,"what meets the eye.");
      }
      
        if introhit = 1{
           draw_debug_text(temp_x + 16 ,temp_y - 68,"Take a rest, relentless demon ");
            draw_debug_text(temp_x + 18,temp_y - 52,"hunting is taking a toll on you.");
      }
      
  }
  


//Saji
  if hit_player_obj.url == "2108469290"  {
      if introhit = -1 && introtimer < 150{
          draw_debug_text(temp_x + 38,temp_y - 28,"My body is my weapon.");
            draw_debug_text(temp_x + 40,temp_y - 12,"I'll be fine.");
      }
      
        if introhit = 1{
             draw_debug_text(temp_x + 28,temp_y - 68,"Getting the chance to spar");
            draw_debug_text(temp_x + 30,temp_y - 52,"with a legend is my honor.");
      }
      
  }
  

//Uza
  if hit_player_obj.url == "2047413648"  {
      if introhit = -1 && introtimer < 150{
           draw_debug_text(temp_x + 42,temp_y - 28,"I was busy with");
            draw_debug_text(temp_x + 44,temp_y - 12,"a forest fire..");
      }
      
        if introhit = 1{
           draw_debug_text(temp_x - 10,temp_y - 68,"That ragged Hollow Bug is no more");
            draw_debug_text(temp_x - 8,temp_y - 52,"practical than your casual outfit..");
            draw_debug_text(temp_x - 6 ,temp_y - 34,"are you cosplaying or something ?");
      }
      
  }
 
///Nolan
  if hit_player_obj.url == "2154720280"  {
      if introhit = -1 && introtimer < 150 {
           draw_debug_text(temp_x + 30,temp_y - 28,"The poachers stopped coming");

      }
      
        if introhit = 1{
           draw_debug_text(temp_x + 30,temp_y - 68,"Oh, these moves are fresh!");

      }
      
  }

///Elice
    if hit_player_obj.url == "2136624834"  {
      if introhit = -1 && introtimer < 150 {
           draw_debug_text(temp_x + 24,temp_y - 28,"Ha ha, Drak would be proud!");
      }
      
        if introhit = 1{
           draw_debug_text(temp_x + 34,temp_y - 68,"pfft, who need AC when");
            draw_debug_text(temp_x + 36,temp_y - 52,"you have winter aura.");

      }
      
  }  
  
///Fuki

  
}


shader_end();
