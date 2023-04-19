//set_attack
//Gun Taunt/Reload
if (attack == AT_TAUNT)
{
  if down_down || (ammo = max_ammo)
  {
    attack = AT_TAUNT_2
  }
}
if (attack == AT_TAUNT_2){
  if gun
  {
    attack = AT_EXTRA_2
  }
  if (depleted = true){
      attack = AT_EXTRA_3
  }
}
//Steady Aim
if (attack == AT_NSPECIAL)
{
    if gun
    {
        attack = AT_NSPECIAL_2
    }
    // else
    // {
    //     move_cooldown[AT_NSPECIAL_2] = 30;
    // }
}

if (attack == AT_NSPECIAL and !free and ammo == 0)
{
    attack = AT_TAUNT_2;
}


//Gun Holster (Couldn't figure out how to get this working)
/*if free{
    if shield_down or shield_pressed && gun == 1{
        attack = AT_EXTRA_1;
    }
}
*/

// exclamation_show = true;
// exclamation_frame = 0;

if ((up_strong_pressed or down_strong_pressed or left_strong_pressed or right_strong_pressed) and gun and free)
{
    move_cooldown[attack] = 2;
}