// set_attack is a script that runs before an attack is ran. Essentially in-game frame 0 of any attack.


if (attack == AT_NSPECIAL && free){
    attack = AT_NSPECIAL_AIR;
    state = PS_ATTACK_AIR;
}
if (attack == AT_DSPECIAL){
  if(free or ground_type == 2){
    vsp = -10
    attack = AT_DSPECIAL_AIR;
    state = PS_ATTACK_AIR;
  }
  
}

if(attack == AT_USPECIAL){
  set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 3);
}

if(attack == AT_TAUNT){
  if(down_down){
    attack = AT_TAUNT_2;
  }
}