switch (get_player_color(player)) {
  //the format is as follows..  
  //case palette_number:
  case 14: //EA palette
    //set_character_color_shading(shade_slot, amount)
    //tweak the amount to get more or less shading.
    //e.g. the following for half the shading on the pants.
    //set_character_color_shading(2,0.5);
    
    set_character_color_shading(0,0);
    set_character_color_shading(1,0);
    set_character_color_shading(2,0);
    set_character_color_shading(3,0);
    set_character_color_shading(4,0);
    set_character_color_shading(5,0);
    set_character_color_shading(6,0);
    set_character_color_shading(7,0);


    
  break; //this should go between every case.
  
  case 17: //iroh
  
  
    set_character_color_shading(7,-100);
    
   break; //this should go between every case.
  
  case 24: //dony
  
  
    set_character_color_shading(7,-100);
  
  
  
  
  
  
}