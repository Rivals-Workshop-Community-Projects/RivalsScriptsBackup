//set_attack

if (attack == AT_TAUNT){
    if attack_down{
        attack = AT_TAUNT_2;
    } 
}

if (attack == AT_NSPECIAL){
    if pistols = 1{
        attack = AT_NSPECIAL_2;
    }
    
}

if (attack == AT_NSPECIAL_2 or attack = AT_NSPECIAL_AIR){
    if pistols = 0{
        attack = AT_NSPECIAL;
    }
    
}

if (attack == AT_USPECIAL or attack == AT_USPECIAL_GROUND){

  if (free){
    attack = AT_USPECIAL;
  } else {
    attack = AT_USPECIAL_GROUND;
  }
}

if (attack == AT_FSPECIAL){
  if window > 2{
  hsp = clamp(hsp, -2, 2);
  vsp = clamp(vsp, -2, 2);
}
}