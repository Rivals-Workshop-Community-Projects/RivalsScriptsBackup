// ai_init.gml
// Called when a CPU version of the character is created
// Can set variables in this that can be used in ai_update.gml



far_down_attacks[0] = AT_DAIR;

far_side_attacks[0] = AT_DSPECIAL;
far_side_attacks[1] = AT_FSPECIAL;

mid_side_attacks[0] = AT_FSTRONG;
mid_side_attacks[1] = AT_DATTACK;
mid_side_attacks[2] = AT_FSPECIAL;
mid_side_attacks[3] = AT_FTILT;

close_up_attacks[0] = AT_UTILT;
close_up_attacks[1] = AT_UAIR;
close_up_attacks[2] = AT_USTRONG;

close_down_attacks[0] = AT_DSTRONG;
close_down_attacks[1] = AT_DAIR;
close_down_attacks[2] = AT_DTILT;

close_side_attacks[0] = AT_FSTRONG;
close_side_attacks[1] = AT_FAIR;
close_side_attacks[2] = AT_FTILT;
close_side_attacks[3] = AT_DTILT;
close_side_attacks[4] = AT_JAB;
close_side_attacks[5] = AT_NAIR;

neutral_attacks[0] = AT_JAB;
neutral_attacks[1] = AT_NAIR;
neutral_attacks[2] = AT_DTILT;

willWavedashR = false;
willWavedashL = false;
didWavedash = false;
counterWavedash = 0;