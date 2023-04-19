//ai_init - setting the basic AI attack behaviors

xdist = 0;
AIwait = 0
facing = false;
nearedge = false;
randDI = 0
rangedtimer = 300;
inactive = 0;
is_ai = true;
cuttertimer = 200
recoverytimer = 0;
fighting = false


//far
far_down_attacks[0] = AT_DAIR;

far_up_attacks[0] = AT_UAIR;
far_up_attacks[1] = AT_USPECIAL;

far_side_attacks[0] = AT_NSPECIAL;
far_side_attacks[1] = AT_FAIR;
far_side_attacks[2] = AT_TAUNT;

//mid
mid_side_attacks[0] = AT_NSPECIAL;
mid_side_attacks[1] = AT_DATTACK;
mid_side_attacks[2] = AT_DSPECIAL;
mid_side_attacks[3] = AT_NAIR;



//close
close_up_attacks[0] = AT_USPECIAL;
close_up_attacks[1] = AT_UAIR;
//close_up_attacks[2] = AT_UTILT;

close_down_attacks[0] = AT_DAIR;
close_down_attacks[1] = AT_DSPECIAL;
close_down_attacks[2] = AT_DATTACK;

close_side_attacks[0] = AT_NAIR;
close_side_attacks[1] = AT_DSPECIAL;
//close_side_attacks[2] = AT_FTILT;
close_side_attacks[3] = AT_FSPECIAL;

neutral_attacks[0] = AT_DAIR;
neutral_attacks[1] = AT_NAIR;
neutral_attacks[2] = AT_NSPECIAL;