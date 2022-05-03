//ai_init - setting the basic AI attack behaviors

xdist = 0;
AIwait = 0
temp_level = 9;
facing = false;
nearedge = false;
randDI = 0
rangedtimer = 300;
inactive = 0;
is_ai = true;
cuttertimer = 200
recoverytimer = 0;

far_down_attacks[0] = AT_DSPECIAL;
far_down_attacks[1] = AT_NSPECIAL;
far_down_attacks[2] = AT_FAIR;

far_side_attacks[0] = AT_NSPECIAL;

mid_side_attacks[0] = AT_FSTRONG;
mid_side_attacks[1] = AT_DATTACK;
mid_side_attacks[2] = AT_FSPECIAL;
mid_side_attacks[3] = AT_FTILT;
mid_side_attacks[4] = AT_NSPECIAL;

mid_up_attacks[0] = AT_UAIR;
mid_up_attacks[1] = AT_NSPECIAL;

close_up_attacks[0] = AT_USTRONG;
close_up_attacks[1] = AT_FAIR;
close_up_attacks[2] = AT_DSTRONG;
close_up_attacks[3] = AT_FTILT;

close_down_attacks[0] = AT_DSPECIAL;
close_down_attacks[1] = AT_DATTACK;
close_down_attacks[2] = AT_FTILT;
close_down_attacks[3] = AT_BAIR;

close_side_attacks[0] = AT_FSTRONG;
close_side_attacks[1] = AT_FAIR;
close_side_attacks[2] = AT_FTILT;
close_side_attacks[3] = AT_DSTRONG;

neutral_attacks[0] = AT_DSTRONG;
neutral_attacks[1] = AT_NAIR;
neutral_attacks[2] = AT_DSPECIAL;