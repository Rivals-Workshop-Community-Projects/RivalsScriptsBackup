//
if (attack == AT_DSPECIAL && free and 
    !position_meeting(x, y + 8 + vsp, carpet)){
    attack = AT_DSPECIAL_AIR;
}

if(attack == AT_DSPECIAL and 
    (on_autobomb == true)){
		attack = AT_NSPECIAL;
}

/*if((attack == AT_NAIR or attack == AT_JAB) and taunt_down){
    attack = AT_EXTRA_1;
}*/