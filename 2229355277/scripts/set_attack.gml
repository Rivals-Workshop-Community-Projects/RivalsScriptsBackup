//Literally just to give you a wavebounce in the air.
if (attack == AT_DSPECIAL and free == true and move_cooldown[AT_DSPECIAL] == 0)
  {
  vsp -= 1;
  }


if get_player_color(player) == 28{
    if attack == AT_TAUNT{
        attack = AT_TAUNT_2;
    }
}