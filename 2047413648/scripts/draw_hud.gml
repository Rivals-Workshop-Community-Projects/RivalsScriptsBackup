shader_start();



if fcharge == 3{

draw_sprite_ext(sprite_get("charge3"), 0, temp_x+136, temp_y-32, 2, 2, 0, -1, 1);    

}

if fcharge == 2{

draw_sprite_ext(sprite_get("charge2"), 0, temp_x+136, temp_y-32, 2, 2, 0, -1, 1);    
}

if fcharge == 1{

draw_sprite_ext(sprite_get("charge1"), 0, temp_x+136, temp_y-32, 2, 2, 0, -1, 1);    
}

if fcharge == 0{

draw_sprite_ext(sprite_get("charge0"), 0, temp_x+136, temp_y-32, 2, 2, 0, -1, 1);    
}

shader_end();

if get_player_color(player) == 5 and sakura == 1 && get_gameplay_time() <= 200{
       draw_debug_text(temp_x,temp_y - 25,"Sakura Storm Activated");
}

if get_player_color(player) == 5 and sakura == 0 && get_gameplay_time() <= 120{
       draw_debug_text(temp_x,temp_y - 25,"Press taunt to active Sakura Storm Mode");
}


shader_start();
if introtimer > 0 {
        draw_sprite(sprite_get("interaction"), 0, temp_x - 20, temp_y - 170);
     if introhit = -1 && introtimer < 150{
                  if introtimer == 150 {
        spawn_hit_fx( temp_x + 200 , temp_y + 60  , 306 )
        sound_play(sound_get("RI"));
    		 sound_play(asset_get("sfx_ori_bash_launch"));
    }
    
          draw_sprite(sprite_get("interactionbox"), 0, temp_x + 40, temp_y - 180);
      }
      
        if introhit = 1 {
           draw_sprite(sprite_get("interactionbox"), 0, temp_x + 40, temp_y - 220);
      }

//Zetta
  if hit_player_obj.url == "1913869515"  {
      if introhit = -1 && introtimer < 150{
           draw_debug_text(temp_x + 34,temp_y - 28,"   ....");

      }
      
        if introhit = 1 {
           draw_debug_text(temp_x + 26,temp_y - 68,"Please dont ask anything..");
           draw_debug_text(temp_x + 28,temp_y - 52,"I was in a cosplay conventi..");
      }
      
  }

//Alex
  if hit_player_obj.url == "2069283406"  {
      if introhit = -1 && introtimer < 150{
           draw_debug_text(temp_x + 44,temp_y - 28,"S.. Sort of..");
      }
      
        if introhit = 1 {
           draw_debug_text(temp_x + 30,temp_y - 68,"You weren't there during my");
            draw_debug_text(temp_x + 32,temp_y - 52,"show.. You promised...");
      }
      
  }
  
 //Mayu
  if hit_player_obj.url == "1997619532"  {
      if introhit = -1 && introtimer < 150{
           draw_debug_text(temp_x + 32,temp_y - 28,"For the last time... No. ");
            draw_debug_text(temp_x + 34,temp_y - 12,"This is an important item.");
      }
      
        if introhit = 1 {
           draw_debug_text(temp_x + 32,temp_y - 68,"That, for being a paparazzi");

      }
      
  }
  
   //Katie
  if hit_player_obj.url == "2085832560"  {
      if introhit = -1 && introtimer < 150{
           draw_debug_text(temp_x + 28,temp_y - 28,"Sign me up!");
            draw_debug_text(temp_x + 30,temp_y - 12,"Gotta take a break from work.");
      }
      
        if introhit = 1 {
           draw_debug_text(temp_x + 36 ,temp_y - 68,"Heya, Any new event");
            draw_debug_text(temp_x + 38,temp_y - 52,"I can take part in?");
      }
      
  }
  


//Saji
  if hit_player_obj.url == "2108469290"  {
      if introhit = -1 && introtimer < 150{
          draw_debug_text(temp_x - 6,temp_y - 28,"You seems to be Zetta's relative..?");
            draw_debug_text(temp_x - 4,temp_y - 12,"Even knowing about the AE....");
      }
      
        if introhit = 1 {
             draw_debug_text(temp_x + 28,temp_y - 68,"This feeling.. are you a ");
            draw_debug_text(temp_x + 30,temp_y - 52,"ghost or something.. ?");
      }
      
  }
  

//Uza
  if hit_player_obj.url == "2047413648"  {
      if introhit = -1 && introtimer < 150{
           draw_debug_text(temp_x + 36,temp_y - 28,"HEY! say that to yourself!");
      }
      
        if introhit = 1 {
           draw_debug_text(temp_x - 30,temp_y - 68,"   Shameless 'Empty Bug' cosplay..");
      }
      
  }

///Nolan
  if hit_player_obj.url == "2154720280"  {
      if introhit = -1 && introtimer < 150 {
           draw_debug_text(temp_x + 44,temp_y - 28,"I dont like");
            draw_debug_text(temp_x + 46,temp_y - 12,"grease foods..");
      }
      
        if introhit = 1 {
            draw_debug_text(temp_x + 34,temp_y - 68,"This is for a");
            draw_debug_text(temp_x + 36,temp_y - 52,"TV show! I swear.");

      }
      
  }

///Elice
    if hit_player_obj.url == "2136624834"  {
      if introhit = -1 && introtimer < 150 {
           draw_debug_text(temp_x + 54,temp_y - 28,"H..");
      }
      
        if introhit = 1 {
           draw_debug_text(temp_x + 34,temp_y - 68,"the old King's daugter!?");

      }
      
  }
  
  
}


shader_end();