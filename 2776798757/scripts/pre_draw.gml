if ((state == PS_ROLL_FORWARD || state == PS_TECH_FORWARD) && window == 1 && spr_dir == 1)
{
     if (window_timer == 0)
     {
          nts_effect_show = true;

          rollforward_trail_1_x = x;
          rollforward_trail_1_y = y;
          rollforward_trail_1_alpha = 1;
          rollforward_trail_1_show = true;
     }

     if (window_timer == 3)
     {
          rollforward_trail_2_x = x;
          rollforward_trail_2_y = y;
          rollforward_trail_2_alpha = 1;
          rollforward_trail_2_show = true;
     }

     if (window_timer == 6)
     {
          rollforward_trail_3_x = x;
          rollforward_trail_3_y = y;
          rollforward_trail_3_alpha = 1;
          rollforward_trail_3_show = true;
     }

     if (window_timer == 10)
     {
          rollforward_trail_4_x = x;
          rollforward_trail_4_y = y;
          rollforward_trail_4_alpha = 1;
          rollforward_trail_4_show = true;
     }

     if (window_timer == 13)
     {
          rollforward_trail_5_x = x;
          rollforward_trail_5_y = y;
          rollforward_trail_5_alpha = 1;
          rollforward_trail_5_show = true;
     }
}
//Trail 1
if (rollforward_trail_1_show)
{
  shader_start();
  draw_sprite_ext(sprite_get("rollforward_trail"), 0, rollforward_trail_1_x, rollforward_trail_1_y, 1, 1, 0, c_white, rollforward_trail_1_alpha);
  shader_end();

  rollforward_trail_1_alpha -= .05;

  if (rollforward_trail_1_alpha <= 0)
  {
    rollforward_trail_1_alpha = 0;
    rollforward_trail_1_show = false;
  }
}
//Trail 2
if (rollforward_trail_2_show)
{
  shader_start();
  draw_sprite_ext(sprite_get("rollforward_trail"), 1, rollforward_trail_2_x, rollforward_trail_2_y, 1, 1, 0, c_white, rollforward_trail_2_alpha);
  shader_end();

  rollforward_trail_2_alpha -= .05;

  if (rollforward_trail_2_alpha <= 0)
  {
    rollforward_trail_2_alpha = 0;
    rollforward_trail_2_show = false;
  }
}
//Trail 3
if (rollforward_trail_3_show)
{
  shader_start();
  draw_sprite_ext(sprite_get("rollforward_trail"), 2, rollforward_trail_3_x, rollforward_trail_3_y, 1, 1, 0, c_white, rollforward_trail_3_alpha);
  shader_end();

  rollforward_trail_3_alpha -= .05;

  if (rollforward_trail_3_alpha <= 0)
  {
    rollforward_trail_3_alpha = 0;
    rollforward_trail_3_show = false;
  }
}
//Trail 4
if (rollforward_trail_4_show)
{
  shader_start();
  draw_sprite_ext(sprite_get("rollforward_trail"), 3, rollforward_trail_4_x, rollforward_trail_4_y, 1, 1, 0, c_white, rollforward_trail_4_alpha);
  shader_end();

  rollforward_trail_4_alpha -= .05;

  if (rollforward_trail_4_alpha <= 0)
  {
    rollforward_trail_4_alpha = 0;
    rollforward_trail_4_show = false;
  }
}
//Trail 5
if (rollforward_trail_5_show)
{
  shader_start();
  draw_sprite_ext(sprite_get("rollforward_trail"), 5, rollforward_trail_5_x, rollforward_trail_5_y, 1, 1, 0, c_white, rollforward_trail_5_alpha);
  shader_end();

  rollforward_trail_5_alpha -= .05;

  if (rollforward_trail_5_alpha <= 0)
  {
    rollforward_trail_5_alpha = 0;
    rollforward_trail_5_show = false;
  }
}

if ((state == PS_ROLL_FORWARD || state == PS_TECH_FORWARD) && window == 1 && spr_dir == -1)
{
     if (window_timer == 0)
     {
          nts_effect_show = true;

          rollforward_trail2_1_x = x;
          rollforward_trail2_1_y = y;
          rollforward_trail2_1_alpha = 1;
          rollforward_trail2_1_show = true;
     }

     if (window_timer == 3)
     {
          rollforward_trail2_2_x = x;
          rollforward_trail2_2_y = y;
          rollforward_trail2_2_alpha = 1;
          rollforward_trail2_2_show = true;
     }

     if (window_timer == 6)
     {
          rollforward_trail2_3_x = x;
          rollforward_trail2_3_y = y;
          rollforward_trail2_3_alpha = 1;
          rollforward_trail2_3_show = true;
     }

     if (window_timer == 10)
     {
          rollforward_trail2_4_x = x;
          rollforward_trail2_4_y = y;
          rollforward_trail2_4_alpha = 1;
          rollforward_trail2_4_show = true;
     }

     if (window_timer == 13)
     {
          rollforward_trail2_5_x = x;
          rollforward_trail2_5_y = y;
          rollforward_trail2_5_alpha = 1;
          rollforward_trail2_5_show = true;
     }
}
//Trail 1
if (rollforward_trail2_1_show)
{
  shader_start();
  draw_sprite_ext(sprite_get("rollforward_trail2"), 0, rollforward_trail2_1_x, rollforward_trail2_1_y, 1, 1, 0, c_white, rollforward_trail2_1_alpha);
  shader_end();

  rollforward_trail2_1_alpha -= .05;

  if (rollforward_trail2_1_alpha <= 0)
  {
    rollforward_trail2_1_alpha = 0;
    rollforward_trail2_1_show = false;
  }
}
//Trail 2
if (rollforward_trail2_2_show)
{
  shader_start();
  draw_sprite_ext(sprite_get("rollforward_trail2"), 1, rollforward_trail2_2_x, rollforward_trail2_2_y, 1, 1, 0, c_white, rollforward_trail2_2_alpha);
  shader_end();

  rollforward_trail2_2_alpha -= .05;

  if (rollforward_trail2_2_alpha <= 0)
  {
    rollforward_trail2_2_alpha = 0;
    rollforward_trail2_2_show = false;
  }
}
//Trail 3
if (rollforward_trail2_3_show)
{
  shader_start();
  draw_sprite_ext(sprite_get("rollforward_trail2"), 2, rollforward_trail2_3_x, rollforward_trail2_3_y, 1, 1, 0, c_white, rollforward_trail2_3_alpha);
  shader_end();

  rollforward_trail2_3_alpha -= .05;

  if (rollforward_trail2_3_alpha <= 0)
  {
    rollforward_trail2_3_alpha = 0;
    rollforward_trail2_3_show = false;
  }
}
//Trail 4
if (rollforward_trail2_4_show)
{
  shader_start();
  draw_sprite_ext(sprite_get("rollforward_trail2"), 3, rollforward_trail2_4_x, rollforward_trail2_4_y, 1, 1, 0, c_white, rollforward_trail2_4_alpha);
  shader_end();

  rollforward_trail2_4_alpha -= .05;

  if (rollforward_trail2_4_alpha <= 0)
  {
    rollforward_trail2_4_alpha = 0;
    rollforward_trail2_4_show = false;
  }
}
//Trail 5
if (rollforward_trail2_5_show)
{
  shader_start();
  draw_sprite_ext(sprite_get("rollforward_trail2"), 5, rollforward_trail2_5_x, rollforward_trail2_5_y, 1, 1, 0, c_white, rollforward_trail2_5_alpha);
  shader_end();

  rollforward_trail2_5_alpha -= .05;

  if (rollforward_trail2_5_alpha <= 0)
  {
    rollforward_trail2_5_alpha = 0;
    rollforward_trail2_5_show = false;
  }
}