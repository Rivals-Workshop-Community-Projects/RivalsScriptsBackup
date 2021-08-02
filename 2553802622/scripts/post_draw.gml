
//Draw arrow in front
if(attack == AT_NSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND))
{
  if(get_gameplay_time() mod 5 == 0)
    animframe ++;

  switch(window)
  {
    case 2:
      shader_start();
      draw_sprite_ext(sprite_get("n_weapon_special"), 0, x-14*spr_dir, y-38, 1, 1*spr_dir, aim_angle, c_white, 1);
      shader_end();
      if(arrowsremain[select_cur] != 0)
      {
        switch(select_cur)
        {
          case 0:
            shader_start();
            draw_sprite_ext(sprite_get("powerarrow"), animframe, x-14*spr_dir, y-38, 1, 1*spr_dir, aim_angle, c_white, 1);
            break;
          case 1:
            draw_sprite_ext(sprite_get("firearrow"), animframe, x-14*spr_dir, y-38, 1, 1*spr_dir, aim_angle, c_white, 1);
            break;
          case 2:
            draw_sprite_ext(sprite_get("elecarrow"), animframe, x-14*spr_dir, y-38, 1, 1*spr_dir, aim_angle, c_white, 1);
            break;
          case 3:
            draw_sprite_ext(sprite_get("icearrow"), animframe, x-14*spr_dir, y-38, 1, 1*spr_dir, aim_angle, c_white, 1);
            break;
          case 4:
            draw_sprite_ext(sprite_get("rockarrow"), animframe, x-14*spr_dir, y-38, 1, 1*spr_dir, aim_angle, c_white, 1);
            break;
        }
      }
      else
      {
        draw_sprite_ext(sprite_get("powerarrow"), animframe, x-14*spr_dir, y-38, 1, 1*spr_dir, aim_angle, c_white, 1);
      }
      break;
    case 3:
      shader_start();
      draw_sprite_ext(sprite_get("n_weapon_special"), floor(window_timer/4)+1, x-14*spr_dir, y-38, 1, 1*spr_dir, aim_angle, c_white, 1);
      break;
  }
}
shader_end();

if(select_timer != 0) { //See that the timer is active
  //Draw the sprite overhead (gets sprite, frame value, x position, y position, rotation, color, alpha)
  // draw_sprite_ext(sprite_get("arrow_hud"), power_color, x, y+100, 1,1, 0, c_white, 1);
  for(uiIcon = 0; uiIcon < 4; uiIcon++)
  {
      uiSize = (select_cur == uiIcon+1 ? 2 : 1)
      uiRound = ((uiIcon/4*360+180)/180*-3.14)

      if(uiIcon == 0) uiCharge = arrowscharge[1] - (60*5)
      if(uiIcon == 1) uiCharge = arrowscharge[2] - (60*7)
      if(uiIcon == 2) uiCharge = arrowscharge[3] - (60*7)
      if(uiIcon == 3) uiCharge = arrowscharge[4] - (60*10)

      draw_sprite_ext(sprite_get("selectioneffect"), get_gameplay_time()/4, sin(uiRound)*80 + x, cos(uiRound)*80 + y - 50, 1, 1, 0, c_white, uiSize-1);
      draw_sprite_ext(sprite_get("arrow_hud"), uiIcon+1,  
      sin(uiRound)*80 + x, cos(uiRound)*80 + y - 50, 
      uiSize, uiSize, 0, c_white, 1);
      if(arrowsmax[uiIcon+1] != arrowsremain[uiIcon+1])
        draw_debug_text(floor(sin(uiRound)*80) + x-10, floor(cos(uiRound)*80) + y - 50, string(abs(uiCharge/60)));
  }
  if(select_cur == 0)
  { 
    draw_sprite_ext(sprite_get("selectioneffect"), get_gameplay_time()/4, x, y - 50, 1, 1, 0, c_white, 0.5);
    draw_sprite_ext(sprite_get("arrow_hud"), 0, x, y - 50, 1.5, 1.5, 0, c_white, 1);
  }
}

