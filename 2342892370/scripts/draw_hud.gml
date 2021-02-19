///
shader_start();

if soultimer < 0 or karmatimer > 0 or (move_cooldown[AT_DSPECIAL] != 0) {
    

       draw_debug_text(temp_x + 0, temp_y - 15,"KR Damage:   "+ string(floor(karma + karmacom)));




}
    
 
   

shader_end();    



shader_start();
if introtimer > 0 {
        draw_sprite(sprite_get("interaction"), 0, temp_x - 20, temp_y - 170);
     if introhit = -1 && introtimer < 150{
                  if introtimer == 150 {
        spawn_hit_fx( temp_x + 200 , temp_y + 60  , 304 )
        sound_play(sound_get("ADfinish"));
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
           draw_debug_text(temp_x + 32,temp_y - 28,"Masters have their");
            draw_debug_text(temp_x + 34,temp_y - 12,"day off too, heh.");
      }
      
        if introhit = 1{
           draw_debug_text(temp_x + 24,temp_y - 68,"What are you doing");
            draw_debug_text(temp_x + 26,temp_y - 52,"to your adopted sister ?");
      }
      
  }
  
 //Mayu
  if hit_player_obj.url == "1997619532"  {
      if introhit = -1 && introtimer < 150{
           draw_debug_text(temp_x + 32,temp_y - 28,"Busy with my students.");
      }
      
        if introhit = 1{
           draw_debug_text(temp_x + 32,temp_y - 68,"You skipped many of my");
            draw_debug_text(temp_x + 34,temp_y - 52,"lesson, you lazy ass.");
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

    if hit_player_obj.souldmg == 0  {
      if introhit = -1 && introtimer < 150 {
           draw_debug_text(temp_x + 24,temp_y - 28,"Ha ha, Drak would be proud!");
      }
      
        if introhit = 1{
           draw_debug_text(temp_x + 34,temp_y - 68,"pfft, who need AC when");
            draw_debug_text(temp_x + 36,temp_y - 52,"you have winter aura.");

      }
      
    }  
  
}


shader_end();