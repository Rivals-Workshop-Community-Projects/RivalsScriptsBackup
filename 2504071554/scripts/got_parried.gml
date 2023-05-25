// got parried

if(charge_store > 0){
    charge_store = charge_store - 1;
}

if (my_hitboxID.attack == AT_DATTACK){
  if (my_hitboxID.hbox_num == 1){ //checks for the "dive" hitbox in particular, you can check others if you want tho
    old_hsp = 0;
    hsp = 0;
  }
}