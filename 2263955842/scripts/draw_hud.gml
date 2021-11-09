// draw hud

if ("char_height" in self){ //Error wrapping
  // Choose your gear! (Marisa is sadly not playable... yet!)
  /*
  if (state == PS_SPAWN)
  {
      draw_sprite(sprite_get("nspecial_info"),0,temp_x,temp_y);


      draw_sprite(sprite_get("yinyang"),0,temp_x - 50 ,temp_y - 40 - type_selection_a  * 40);



      if (down_pressed)
      {
          type_selection_a = false;
          is_reimu_a = false;
      }
      if (up_pressed)
      {
          type_selection_a = true;
          is_reimu_a = true;
      }
  }
    */


    //Graze/Power Meter
    /*
    draw_sprite(sprite_get("powerHud"), 1, temp_x, temp_y-20,);

    draw_debug_text(temp_x+35, temp_y-12, string(grazeMeter));
    */
    
    draw_sprite(sprite_get("uspe_hud"),has_used_uspecial,temp_x + 180, temp_y - 24)
    draw_sprite(sprite_get("nspe_hud"),!move_cooldown[AT_NSPECIAL],temp_x + 155, temp_y - 24)
}


