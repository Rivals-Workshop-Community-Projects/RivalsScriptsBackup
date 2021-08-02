if state == PS_RESPAWN {
    draw_sprite(sprite_get("plat_anim"), plat_anim_speed, x,y);
}

if(select_timer == 0)
{
  shader_start();
  //depending on what mode youre on
  if(power_color != 0)
  {
      for(i = 0; i < arrowsremain[power_color]; i++)
          draw_sprite_ext(sprite_get("arrowcount"), 0, x-20+(16*i), y+8, 1, 1, 0, c_white, 1);
  }
  shader_end();
}
shader_start();
//Draw arrow in back
if(attack == AT_NSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND))
{
  if(aim_angle >= 45 && aim_angle <= 135)
    head_aim = 2;
  else if(aim_angle >= 225 && aim_angle <= 335)
    head_aim = 1;
  else
    head_aim = 0;

  switch(window)
  {
    case 2:
      draw_sprite_ext(sprite_get("n_hand_special"), 0, x-14*spr_dir, y-38, 1, 1*spr_dir, aim_angle, c_white, 1);
      draw_sprite_ext(sprite_get("n_head"), head_aim, x-4*spr_dir, y-38, spr_dir, 1, 0, c_white, 1);
      break;
    case 3:
      draw_sprite_ext(sprite_get("n_hand_special"), 1, x-14*spr_dir, y-38, 1, 1*spr_dir, aim_angle, c_white, 1);
      draw_sprite_ext(sprite_get("n_head"), head_aim, x-4*spr_dir, y-38, spr_dir, 1, 0, c_white, 1);
      break;
  }
}
if((attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR) && window != 1)
{
  for(i = 0; i < arrowchain; i++)
  {
    if(arrowchainx[i] != 0)
      draw_sprite_ext(sprite_get("chain"), 0, arrowchainx[i], arrowchainy[i], 1, 1, chainangle, c_white, 1);
    if(arrowchain-1 == i && window >= 5)
      draw_sprite_ext(sprite_get("grappleplace"), 0, arrowchainx[i], arrowchainy[i], spr_dir, 1, chainangle+90+(spr_dir!=1?180:0), c_white, 1);
  }
}
shader_end();