//set_attack

if(down_down && special_down && free){
    attack = AT_DSPECIAL_AIR
}


if(attack == AT_FTILT){
    set_num_hitboxes(attack, 2)
}

if(attack == AT_FSPECIAL_2){
    hurtboxID.sprite_index = sprite_get("fspecial_2_hurt");
}

if (attack == AT_TAUNT && (down_down || up_down)){
  attack = AT_TAUNT_2 
}

