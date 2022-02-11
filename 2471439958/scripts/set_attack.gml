//set_attack

if (attack == AT_NSPECIAL){
    if pistols = 1{
        attack = AT_NSPECIAL_2;
    }
    
}
if (attack == AT_NSPECIAL){
    if (fire = 0) && (ice = 0) && (thunder = 0) && (pistols = 0){
        attack = AT_EXTRA_1;
    }
}
if (attack == AT_EXTRA_1){
    if (fire = 1) or (ice = 1) or (thunder = 1) or (pistols = 1){
        attack = AT_NSPECIAL;
    }
    
}

if (attack == AT_NSPECIAL_2 or attack = AT_NSPECIAL_AIR){
    if pistols = 0{
        attack = AT_NSPECIAL;
    }
    
}
if (attack == AT_NSPECIAL_2 or attack = AT_NSPECIAL_AIR or attack = AT_NSPECIAL){
    if move_cooldown[AT_NSPECIAL] > 0{
        attack = AT_EXTRA_3;
    }
}
if (attack == AT_DATTACK){
    if move_cooldown[AT_DATTACK] > 0{
        attack = AT_EXTRA_2;
    }
}
if (attack == AT_FSTRONG){
    if pistols = 1{
        attack = AT_FSTRONG_2;
    }
    
}

if (attack == AT_FSTRONG_2){
    if pistols = 0{
        attack = AT_FSTRONG;
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



if (attack == AT_JAB) && switcher == 1{
    if taunt_down{
        attack = AT_TAUNT_2;
    }
}
if (attack == AT_TAUNT) && switcher == 1{
        attack = AT_EXTRA_2;
}
