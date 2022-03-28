shader_start();
shader_end();
/*
draw_debug_text( temp_x+60, temp_y-15, "state : " + get_state_name(state));
draw_debug_text( temp_x+60, temp_y-30, "state timer : " + string(state_timer));
draw_debug_text( temp_x+60, temp_y-45, "attack : " + string(attack));
draw_debug_text( temp_x+60, temp_y-60, "window : " + string(window));
draw_debug_text( temp_x+60, temp_y-75, "window timer : " + string(window_timer));
draw_debug_text( temp_x- 15, temp_y-15, "hsp: " + string(hsp));
draw_debug_text( temp_x- 15, temp_y-30, "vsp: " + string(vsp));
draw_debug_text( temp_x- 15, temp_y-45, "grav: " + string(grav));
draw_debug_text( 10, 10, "FPS : " + string(fps_real));
*/
/*
if get_player_color(player) != 5{
if zvoice == 1 && get_gameplay_time() <= 200{
       draw_debug_text(temp_x,temp_y - 15,"Voiced");
}

if zvoice == 0 && get_gameplay_time() <= 120{
       draw_debug_text(temp_x,temp_y - 15,"Taunt to active Zetta's voice.");
}
}

if get_player_color(player) == 5 and zvoice == 1 && get_gameplay_time() <= 200{
       draw_debug_text(temp_x,temp_y - 25,"Senbonzakura Activated");
}

if get_player_color(player) == 5 and zvoice == 0 && get_gameplay_time() <= 120{
       draw_debug_text(temp_x,temp_y - 25,"Taunt to active Senbonzakura Mode");
}
*/
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
           draw_debug_text(temp_x + 8,temp_y - 28,"Eh, still better than that one");
            draw_debug_text(temp_x + 14,temp_y - 12,"time I havd to kill a clown.");
      }
      
        if introhit = 1 {
           draw_debug_text(temp_x + 16,temp_y - 68,"Realiy is unstable as usual, huh.");
            draw_debug_text(temp_x + 18,temp_y - 52,"Rips and Tears are everywhere.");
      }
      
  }

//Alex
  if hit_player_obj.url == "2069283406"  {
      if introhit = -1 && introtimer < 150 {
           draw_debug_text(temp_x + 32,temp_y - 28,"Hmp. Try get me serious");
            draw_debug_text(temp_x + 34,temp_y - 12,"and you'll regret it.");
      }
      
        if introhit = 1 {
           draw_debug_text(temp_x + 36,temp_y - 68,"Blate's son.. let's see");
            draw_debug_text(temp_x + 38,temp_y - 52,"see much you can take.");
      }
      
  }
  
 //Mayu
  if hit_player_obj.url == "1997619532"  {
      if introhit = -1 && introtimer < 150 {
           draw_debug_text(temp_x + 26,temp_y - 28,"Need I remind you that");
            draw_debug_text(temp_x + 28,temp_y - 12," I was once his mentor?");
      }
      
        if introhit = 1 {
           draw_debug_text(temp_x + 22,temp_y - 68,"Power: weak. Attitude: bad.");
            draw_debug_text(temp_x + 24,temp_y - 52,"You are truly good for nothing.");
      }
      
  }
  
   //Katie
  if hit_player_obj.url == "2085832560"  {
      if introhit = -1 && introtimer < 150 {
           draw_debug_text(temp_x + 36,temp_y - 28,"If you want it. Then");
            draw_debug_text(temp_x + 37,temp_y - 12,"you have to take it.");
      }
      
        if introhit = 1 {
           draw_debug_text(temp_x + 36 ,temp_y - 68,"Without strength, you");
            draw_debug_text(temp_x + 36,temp_y - 52,"cannot protect anything.");
             draw_debug_text(temp_x + 38,temp_y - 34,"Including yourself.");
      } 
      
  }
  


//Saji
  if hit_player_obj.url == "2108469290"  {
      if introhit = -1 && introtimer < 150 {
           draw_debug_text(temp_x + 28,temp_y - 28,"You are NOT telling me that");
            draw_debug_text(temp_x + 30,temp_y - 12,"i'm your grandchild, ghost.");
      }
      
        if introhit = 1 {
           draw_debug_text(temp_x + 24,temp_y - 68,"That puppet body is limiting");
            draw_debug_text(temp_x + 26,temp_y - 52,"your power. What a shame.");
      }
      
  }
  

//Uza
  if hit_player_obj.url == "2047413648"  {
      if introhit = -1 && introtimer < 150 {
           draw_debug_text(temp_x + 12,temp_y - 28,"What is that awful outfit??");
            draw_debug_text(temp_x + 14,temp_y - 12,"And what is this 'war beaten");
             draw_debug_text(temp_x + 16,temp_y + 4,"warrior' thing? you wrote it?");
      }
      
        if introhit = 1 {
           draw_debug_text(temp_x - 20,temp_y - 68,"Long time no see, Ckater.");
            draw_debug_text(temp_x - 22,temp_y - 52,"Wielder of the legenadry AE.");

      }
      
  }
  
    if hit_player_obj.url == "1905208125"  {
      if introhit = -1 && introtimer < 150 {
           draw_debug_text(temp_x + 30,temp_y - 28,"Good, then there is");
            draw_debug_text(temp_x + 32,temp_y - 12,"no more talking needed.");
      }
      
        if introhit = 1 {
           draw_debug_text(temp_x + 36,temp_y - 68,"We meet again, Dai-san.");

      }
      
  }
  
///Nolan
  if hit_player_obj.url == "2154720280"  {
      if introhit = -1 && introtimer < 150 {
           draw_debug_text(temp_x + 24,temp_y - 28,"for the 100th time. No.");
            draw_debug_text(temp_x + 16,temp_y - 12,"No McDonald on the island.");
      }
      
        if introhit = 1 {
           draw_debug_text(temp_x + 10,temp_y - 68,"Hoh... you are approaching me?");

      }
      
  }

///Elice
    if hit_player_obj.url == "2136624834"  {
      if introhit = -1 && introtimer < 150 {
           draw_debug_text(temp_x + 34,temp_y - 28,"Drak had trained you well.");
      }
      
        if introhit = 1 {
           draw_debug_text(temp_x + 24,temp_y - 68,"Yo, how's your old man doing? ");
            draw_debug_text(temp_x + 26,temp_y - 52,"still making icecream?");

      }
      
  }  
  
}


shader_end();
