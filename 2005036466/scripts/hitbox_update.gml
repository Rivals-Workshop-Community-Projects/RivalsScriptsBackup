//This code is written in memoriam of the terrible, weird workaround that once
//lived here before. Rivals fixed it eventually but I'm bitter I had to
//rewrite this code for a 4th time.

//This is the projectile that checks if you're aerial or not.
if (attack == AT_NSPECIAL and hitbox_timer >= 3 and hbox_num == 5)
  {
  if (player_id.window == 1 and player_id.state == clamp(player_id.state, 5, 6) and free)
    {
    player_id.window = 4;
    player_id.window_timer = 0;
    }
  else if (player_id.window == 1 and player_id.state == clamp(player_id.state, 5, 6) and not free)
    {
    create_hitbox(AT_NSPECIAL, 1, x, y)
    }
  instance_destroy();
  exit;
  }

//This is the actual Kinetic Burst projectile.
if (attack == AT_NSPECIAL and hbox_num == 1)
  {
  if (free)
    {
    instance_destroy();
    exit;
    }
  }
