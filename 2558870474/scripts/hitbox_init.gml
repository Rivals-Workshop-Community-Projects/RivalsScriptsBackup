if attack == AT_FSPECIAL and hbox_num == 3{
    player_id.explosion_type = 0;
    player_id.snapped = false;
}

//Establishing a variable for the mirror's needs.
if attack == AT_NSPECIAL and (hbox_num != 4 and hbox_num != 5)
  {
  speed_buffed = false;
  damage_buffed = false;
  if hbox_num == 3 //Otherwise, Arcthunder moves super slow.
    {
    move_rate = 7;
    }
  else
    {
    move_rate = hsp;
    }
  tracking_target = false;
  var rotation_modifier = 0;
/*
if instance_exists(obj_article1){
  initial_rune_target = instance_nearest(x, y, obj_article1)
}

if instance_exists(obj_article1) and (initial_rune_target.state != 1 or initial_rune_target.state != 5)
{
    initial_rune_target = instance_furthest(x, y, obj_article1)
}

//If a rune is there, it'll immediately move to that rune.
if (instance_exists(obj_article1) and (initial_rune_target.state == 1 or initial_rune_target.state == 5) and (hbox_num == 3 or hbox_num == 6))
{
    tracking_target = true;
    initial_rune_target = instance_nearest(x, y, obj_article1)

    print_debug("Pre-rune turn direction:" + string(spr_dir));

    if (initial_rune_target.x > x) //If the rune is to the right of the projectile.
      {
      spr_dir = 1;
      direction = point_direction(x, y, initial_rune_target.x, initial_rune_target.y);
      proj_angle = direction;

      hsp = lengthdir_x(move_rate, direction);
      vsp = lengthdir_y(move_rate, direction);

      if hsp < 0
        {
        hsp = hsp * -1;
        }
      }
    if (initial_rune_target.x < x) //If the rune is to the left of the projectile.
      {
      spr_dir = -1;
      direction = point_direction(x, y, initial_rune_target.x, initial_rune_target.y);
      proj_angle = 180 + direction;

      hsp = lengthdir_x(move_rate, direction);
      vsp = lengthdir_y(move_rate, direction);

      if hsp > 0
        {
        hsp = hsp * -1;
        }
      }

    //Sometimes the VSP goes the opposite direction.
    //This manually beats it into shape. Hopefully.
    if (initial_rune_target.y < y) and (vsp > 0) //Corrects rune above, VSP going down.
      {
      vsp = vsp * -1;
      }

    if (initial_rune_target.y > y) and (vsp < 0) //Corrects rune below, VPS going up.
      {
      vsp = vsp * -1;
      }

    length = 999; //So that it can't despawn when bouncing between runes.
    through_platforms = 999;
    }
*/
}
