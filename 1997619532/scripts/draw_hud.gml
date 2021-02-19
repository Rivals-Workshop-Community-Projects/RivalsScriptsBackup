shader_start();

draw_sprite(sprite_get("hud_nohalo"), 0, temp_x + 26, temp_y);


if halo >= 1 {
draw_sprite_part(sprite_get("hud_halo"), 0, 0, 0, (halotimer/180) * 182, 36, temp_x + 26, temp_y);
}

draw_sprite(sprite_get("hud_halo1"), halo, temp_x + 156, temp_y - 55);



shader_end();

if get_player_color(player) == 5 and sakura == 1 && get_gameplay_time() <= 200{
       draw_debug_text(temp_x,temp_y - 25,"Sakura Blizzard Activated");
}

if get_player_color(player) == 5 and sakura == 0 && get_gameplay_time() <= 120{
       draw_debug_text(temp_x,temp_y - 25,"Press taunt to active Sakura Blizzard Mode");
}


if get_player_color(player) == 1 and omega == 1 && get_gameplay_time() <= 200{
       draw_debug_text(temp_x,temp_y - 25,"Ware wa Messiah nari.");
}

if get_player_color(player) == 1 and omega == 0 && get_gameplay_time() <= 120{
       draw_debug_text(temp_x,temp_y - 25,"Press taunt to active Messiah voicepack.");
}


shader_start();
if introtimer > 0 {
        draw_sprite(sprite_get("interaction"), 0, temp_x - 20, temp_y - 170);
        
     if introhit = -1 && introtimer < 150 {
                            if introtimer == 150 {
        spawn_hit_fx( temp_x + 200 , temp_y + 60  , SC )
        sound_play(sound_get("counterhit"));
    	sound_play(sound_get("RI"));
    }
          draw_sprite(sprite_get("interactionbox"), 0, temp_x + 40, temp_y - 180);
      }
      
        if introhit = 1 {
           draw_sprite(sprite_get("interactionbox"), 0, temp_x + 40, temp_y - 220);
      }

//Zetta
  if hit_player_obj.url == "1913869515"  {
      if introhit = -1 && introtimer < 150 {
           draw_debug_text(temp_x + 36,temp_y - 28,"Screw attitude!");
            draw_debug_text(temp_x + 38,temp_y - 12,"I NEED MORE POWER!");
      }
      
        if introhit = 1 {
           draw_debug_text(temp_x + 36,temp_y - 68,"My father's techniques");
            draw_debug_text(temp_x + 38,temp_y - 52,"have far surpassed yours!");
      }
      
  }

//Alex
  if hit_player_obj.url == "2069283406"  {
      if introhit = -1 && introtimer < 150 {
           draw_debug_text(temp_x + 40,temp_y - 28,"Tch!");
      }
      
        if introhit = 1 {
           draw_debug_text(temp_x + 36,temp_y - 68,"I'll do whatever I want.");
      }
      
  }
  
 //Mayu
  if hit_player_obj.url == "1997619532"  {
      if introhit = -1 && introtimer < 150 {
           draw_debug_text(temp_x + 32,temp_y - 28,"HEY! SHUT YA MOUTH!");
            draw_debug_text(temp_x + 34,temp_y - 12,"");
      }
      
        if introhit = 1 {
           draw_debug_text(temp_x + 36,temp_y - 68,"HAhahaha..");
            draw_debug_text(temp_x + 38,temp_y - 52,"Your stance is sloppy!");
      }
      
  }
  
   //Katie
  if hit_player_obj.url == "2085832560"  {
      if introhit = -1 && introtimer < 150 {
           draw_debug_text(temp_x + 38,temp_y - 28,"Guns are for coward!");
      }
      
        if introhit = 1 {
           draw_debug_text(temp_x + 38,temp_y - 68,"Guns are for coward!");
      }
      
  }
  


//Saji
  if hit_player_obj.url == "2108469290"  {
      if introhit = -1 && introtimer < 150 {
           draw_debug_text(temp_x + 36,temp_y - 28,"ACK!!! WHO ARE YOU??");
      }
      
        if introhit = 1 {
           draw_debug_text(temp_x + 36,temp_y - 68,"Uh... who are you?");
      }
      
  }
  

//Uza
  if hit_player_obj.url == "2047413648"  {
      if introhit = -1 && introtimer < 150 {
           draw_debug_text(temp_x + 22,temp_y - 28,"Forget it! Your shows suck!");
      }
      
        if introhit = 1 {
           draw_debug_text(temp_x - 22,temp_y - 68,"HEY CAN I BUY YOUR GUITAR?");
      }
      
  }
 
///Nolan
  if hit_player_obj.url == "2154720280"  {
      if introhit = -1 && introtimer < 150 {
           draw_debug_text(temp_x + 38,temp_y - 28,"No one cares about");
           draw_debug_text(temp_x + 36,temp_y - 12,"your old sales anyway.");
      }
      
        if introhit = 1 {
           draw_debug_text(temp_x + 25,temp_y - 68,"FUNNY BURGER GUY GO HAHA!");

      }
      
  }

///Elice
    if hit_player_obj.url == "2136624834"  {
      if introhit = -1 && introtimer < 150 {
        draw_debug_text(temp_x + 48,temp_y - 28,"Just dont smack them");
           draw_debug_text(temp_x + 46,temp_y - 12,"at my face....");
      }
      
        if introhit = 1 {
           draw_debug_text(temp_x + 44,temp_y - 68,"Elice and Katie ~");
            draw_debug_text(temp_x + 46,temp_y - 52,"Sitting in a tre-.");

      }
      
  }  

///Fuki 

    if hit_player_obj.is_fuki {
      if introhit = -1 && introtimer < 150 {
           draw_debug_text(temp_x + 44,temp_y - 28,"I only need power.");
      }
      
        if introhit = 1{
           draw_debug_text(temp_x + 34,temp_y - 68,"HEY SIS wanna go");
            draw_debug_text(temp_x + 36,temp_y - 52,"out this weekend?");

      }
      
  }  
  
}


shader_end();