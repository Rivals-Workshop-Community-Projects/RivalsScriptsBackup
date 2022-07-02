//post-draw

// pre-draw

if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_USPECIAL && ((window == 1 && window_timer > 1) || (window == 2 && window_timer < 18)))
{
    draw_sprite(sprite_get("uspecialbeam"), 0, x, planty);

}



if (attack == AT_TAUNT && window == 1 && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR))
{
 
if (taunt_trans = 0) 
{
if (taunt_menu = 1)
{
  if (taunt_num = 1)
  {
      draw_sprite(sprite_get("voice11"), 0, x-300, y-260);   
  }
  if (taunt_num = 2)
  {
      draw_sprite(sprite_get("voice12"), 0, x-300, y-260);   
  }
  if (taunt_num = 3)
  {
      draw_sprite(sprite_get("voice13"), 0, x-300, y-260);   
  }
  if (taunt_num = 4)
  {
      draw_sprite(sprite_get("voice14"), 0, x-300, y-260);   
  }
  if (taunt_num = 5)
  {
      draw_sprite(sprite_get("voice15"), 0, x-300, y-260);   
  }
  if (taunt_num = 6)
  {
      draw_sprite(sprite_get("voice16"), 0, x-300, y-260);   
  }
  if (taunt_num = 7)
  {
      draw_sprite(sprite_get("voice17"), 0, x-300, y-260);   
  }
  if (taunt_num = 8)
  {
      draw_sprite(sprite_get("voice18"), 0, x-300, y-260);   
  }
  if (taunt_num = 9)
  {
      draw_sprite(sprite_get("voice19"), 0, x-300, y-260);   
  }
  if (taunt_num = 10)
  {
      draw_sprite(sprite_get("voice110"), 0, x-300, y-260);   
  }
}

if (taunt_menu = 2)
{
  if (taunt_num = 1)
  {
      draw_sprite(sprite_get("voice21"), 0, x-300, y-260);   
  }
  if (taunt_num = 2)
  {
      draw_sprite(sprite_get("voice22"), 0, x-300, y-260);   
  }
  if (taunt_num = 3)
  {
      draw_sprite(sprite_get("voice23"), 0, x-300, y-260);   
  }
  if (taunt_num = 4)
  {
      draw_sprite(sprite_get("voice24"), 0, x-300, y-260);   
  }
  if (taunt_num = 5)
  {
      draw_sprite(sprite_get("voice25"), 0, x-300, y-260);   
  }
  if (taunt_num = 6)
  {
      draw_sprite(sprite_get("voice26"), 0, x-300, y-260);   
  }
  if (taunt_num = 7)
  {
      draw_sprite(sprite_get("voice27"), 0, x-300, y-260);   
  }
  if (taunt_num = 8)
  {
      draw_sprite(sprite_get("voice28"), 0, x-300, y-260);   
  }
  if (taunt_num = 9)
  {
      draw_sprite(sprite_get("voice29"), 0, x-300, y-260);   
  }
  if (taunt_num = 10)
  {
      draw_sprite(sprite_get("voice210"), 0, x-300, y-260);   
  }
}

if (taunt_menu = 3)
{
  if (taunt_num = 1)
  {
      draw_sprite(sprite_get("voice31"), 0, x-300, y-260);   
  }
  if (taunt_num = 2)
  {
      draw_sprite(sprite_get("voice32"), 0, x-300, y-260);   
  }
  if (taunt_num = 3)
  {
      draw_sprite(sprite_get("voice33"), 0, x-300, y-260);   
  }
  if (taunt_num = 4)
  {
      draw_sprite(sprite_get("voice34"), 0, x-300, y-260);   
  }
  if (taunt_num = 5)
  {
      draw_sprite(sprite_get("voice35"), 0, x-300, y-260);   
  }
  if (taunt_num = 6)
  {
      draw_sprite(sprite_get("voice36"), 0, x-300, y-260);   
  }
  if (taunt_num = 7)
  {
      draw_sprite(sprite_get("voice37"), 0, x-300, y-260);   
  }
  if (taunt_num = 8)
  {
      draw_sprite(sprite_get("voice38"), 0, x-300, y-260);   
  }
  if (taunt_num = 9)
  {
      draw_sprite(sprite_get("voice38"), 0, x-300, y-260);   
  }
  if (taunt_num = 10)
  {
      draw_sprite(sprite_get("voice310"), 0, x-300, y-260);   
  }
}
}

if (taunt_trans != 0)
{
    if (taunt_trans = 1)
        {
            if (taunt_trans_timer > 0 && taunt_trans_timer < 6)
            {
                draw_sprite(sprite_get("trans11"), 0, x-300, y-260);   
            }
            if (taunt_trans_timer > 5 && taunt_trans_timer < 11)
            {
                draw_sprite(sprite_get("trans12"), 0, x-300, y-260);   
            }
            if (taunt_trans_timer > 10 && taunt_trans_timer < 16)
            {
                draw_sprite(sprite_get("trans13"), 0, x-300, y-260);   
            }
            if (taunt_trans_timer > 15 && taunt_trans_timer < 21)
            {
                draw_sprite(sprite_get("trans14"), 0, x-300, y-260);   
            }
        }
    if (taunt_trans = 2)
        {
            if (taunt_trans_timer > 0 && taunt_trans_timer < 6)
            {
                draw_sprite(sprite_get("trans21"), 0, x-300, y-260);   
            }
            if (taunt_trans_timer > 5 && taunt_trans_timer < 11)
            {
                draw_sprite(sprite_get("trans22"), 0, x-300, y-260);   
            }
            if (taunt_trans_timer > 10 && taunt_trans_timer < 16)
            {
                draw_sprite(sprite_get("trans23"), 0, x-300, y-260);   
            }
            if (taunt_trans_timer > 15 && taunt_trans_timer < 21)
            {
                draw_sprite(sprite_get("trans24"), 0, x-300, y-260);   
            }
        }
    if (taunt_trans = 3)
        {
            if (taunt_trans_timer > 0 && taunt_trans_timer < 4)
            {
                draw_sprite(sprite_get("trans31"), 0, x-300, y-260);   
            }
            if (taunt_trans_timer > 3 && taunt_trans_timer < 8)
            {
                draw_sprite(sprite_get("trans32"), 0, x-300, y-260);   
            }
            if (taunt_trans_timer > 7 && taunt_trans_timer < 12)
            {
                draw_sprite(sprite_get("trans33"), 0, x-300, y-260);   
            }
            if (taunt_trans_timer > 11 && taunt_trans_timer < 16)
            {
                draw_sprite(sprite_get("trans34"), 0, x-300, y-260);   
            }
            if (taunt_trans_timer > 15 && taunt_trans_timer < 21)
            {
                draw_sprite(sprite_get("trans35"), 0, x-300, y-260);   
            }
        }
}

}