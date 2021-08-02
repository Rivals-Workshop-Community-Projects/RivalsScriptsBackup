//
// Variable Definition
var hitmove = my_hitboxID.attack;

if hitmove == AT_NSPECIAL
  {
  if my_hitboxID.hbox_num == 3
    {
    next_explosion = create_hitbox(AT_NSPECIAL, 4, my_hitboxID.x, my_hitboxID.y);
    next_explosion.player = my_hitboxID.player;
    }
  }

if hitmove == AT_FSPECIAL
  {
  if my_hitboxID.hbox_num == 6 and !snapped
    {
        print_debug("CAT")
    next_explosion = create_hitbox(AT_FSPECIAL, 1, my_hitboxID.x, my_hitboxID.y-5);
    next_explosion.player = my_hitboxID.player;
    //hitbox_spawned = true;
    }
  }
  
if hitmove == AT_FSTRONG{
    if (my_hitboxID.hbox_num == 1)
    {
        instance_destroy(illusion.hitbox);
        illusion.state = 2;
        illusion.state_timer = 0;
        illusion.hsp = 0;
    }
}