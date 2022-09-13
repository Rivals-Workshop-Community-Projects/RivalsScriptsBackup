if(attack == AT_FSTRONG){
    hsp = clamp(hsp, -5, 5);
} else if(attack == AT_DSTRONG){
    hsp = clamp(hsp, -5, 5);
}

if(down_down and attack == AT_TAUNT){
    attack = AT_EXTRA_2;
}