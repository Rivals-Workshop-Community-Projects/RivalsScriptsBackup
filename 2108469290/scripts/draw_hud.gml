///

shader_start();


if introtimer > 0 {
    

    
        draw_sprite(sprite_get("interaction"), 0, temp_x - 20, temp_y - 170);
    
    if introhit = -1 && introtimer < 150{
         if introtimer == 150 {
  spawn_hit_fx( temp_x + 300 , temp_y + 60  , SC )
        sound_play(sound_get("RI"));
    	sound_play(sound_get("Fstrong"));
    }
          draw_sprite(sprite_get("interactionbox"), 0, temp_x + 40, temp_y - 180);
      }
      
        if introhit = 1 {
           draw_sprite(sprite_get("interactionbox"), 0, temp_x + 40, temp_y - 220);
      }

//Zetta
  if hit_player_obj.url == "1913869515"  {
      if introhit = -1 && introtimer < 150{
           draw_debug_text(temp_x - 10,temp_y - 28,"Oh dear, you will be surprise");
            draw_debug_text(temp_x - 12,temp_y - 12,"at what i can still do in this.");
      }
      
        if introhit = 1 {
           draw_debug_text(temp_x + 36,temp_y - 68,"Hey, Zetta. I'm actually...");
      }
      
  }

//Alex
  if hit_player_obj.url == "2069283406"  {
      if introhit = -1 && introtimer < 150{
           draw_debug_text(temp_x + 42,temp_y - 28,"Hah, good boy.");
            draw_debug_text(temp_x + 44,temp_y - 12,"I like your spirit.");
      }
      
        if introhit = 1 {
            draw_debug_text(temp_x - 10,temp_y - 68,"Not going the way of the sword?");
            draw_debug_text(temp_x - 8,temp_y - 52,"You are sure a bold one, boy.");
      }
      
  }
  
 //Mayu
  if hit_player_obj.url == "1997619532"  {
      if introhit = -1 && introtimer < 150{
           draw_debug_text(temp_x + 32,temp_y - 28,"Didn't pay attention");
            draw_debug_text(temp_x + 34,temp_y - 12,"in history class, I see.");
      }
      
        if introhit = 1 {
           draw_debug_text(temp_x + 32,temp_y - 68,"I'm so gonna BONK that");
            draw_debug_text(temp_x + 34,temp_y - 52,"degenerate out of you!");
      }
      
  }
  
   //Katie
  if hit_player_obj.url == "2085832560"  {
      if introhit = -1 && introtimer < 150{
           draw_debug_text(temp_x + 36,temp_y - 28,"Basically, i'm a ghost.");
      }
      
        if introhit = 1 {
            draw_debug_text(temp_x + 40,temp_y - 68,"Hoh.. aren't you a");
            draw_debug_text(temp_x + 42,temp_y - 52,"small, little badass.");
      } 
      
  }
  


//Saji
  if hit_player_obj.url == "2108469290"  {
      if introhit = -1 && introtimer < 150{
           draw_debug_text(temp_x + 44,temp_y - 28,"Really.. ?");
      }
      
        if introhit = 1 {
           draw_debug_text(temp_x + 40,temp_y - 68,"AHHHH A GHOST!!");
      }
      
  }
  

//Uza
  if hit_player_obj.url == "2047413648"  {
      if introhit = -1 && introtimer < 150{
           draw_debug_text(temp_x + 24,temp_y - 28,"Ooo the legendary AE..");
            draw_debug_text(temp_x + 26,temp_y - 12,"Just as painful as i remember.");
      }
      
        if introhit = 1 {
           draw_debug_text(temp_x + 24,temp_y - 68,"Ain't that the legendary AE?");
            draw_debug_text(temp_x + 26,temp_y - 52,"Hope it's in good hand.");

      }
      
  }
  
///Nolan
  if hit_player_obj.url == "2154720280"  {
      if introhit = -1 && introtimer < 150{
             draw_debug_text(temp_x + 40,temp_y - 28,"Gotta tell Zetta to add");
            draw_debug_text(temp_x + 42,temp_y - 12,"tasting function first..");
      }
      
        if introhit = 1 {
            draw_debug_text(temp_x + 40,temp_y - 68,"Pffft, you would sit all");
            draw_debug_text(temp_x + 42,temp_y - 52,"day to sell food ??");
           
      }
      
  }

///Elice
    if hit_player_obj.url == "2136624834"  {
      if introhit = -1 && introtimer < 150{
           draw_debug_text(temp_x + 30,temp_y - 28,"Are you too, an icecream?");
      }
      
        if introhit = 1 {
           draw_debug_text(temp_x + 30,temp_y - 68,"Wait, it's all icecream!?");

      }
      
  }
}



  

shader_end();