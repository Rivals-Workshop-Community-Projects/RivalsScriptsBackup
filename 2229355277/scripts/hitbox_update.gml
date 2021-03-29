//Making Bomb explode.
if (hbox_num == 1 and attack == AT_EXTRA_3)
  {
  if (hitbox_timer == length)
    {
    explosionbox = create_hitbox(AT_EXTRA_3, 2, x, y);
    explosionbox.player = player;
    destroyed = true;
    }
  }
