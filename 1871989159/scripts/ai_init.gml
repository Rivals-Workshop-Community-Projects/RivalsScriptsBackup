//ai_init - setting the basic AI attack behaviors

ai_bombtarg = noone;
ai_bombrefresh = 120;

far_down_attacks[0] = AT_FAIR;
far_down_attacks[1] = AT_DAIR;
far_down_attacks[2] = AT_NAIR;
far_down_attacks[3] = AT_DSPECIAL;


far_up_attacks[0] = AT_UAIR;
far_up_attacks[1] = AT_USPECIAL;
far_up_attacks[2] = AT_USTRONG;
far_up_attacks[3] = AT_NSPECIAL;

far_side_attacks[0] = AT_DATTACK;
far_side_attacks[1] = AT_FSPECIAL;
far_side_attacks[2] = AT_NSPECIAL;
far_side_attacks[3] = AT_DSTRONG;
far_side_attacks[4] = AT_FSTRONG;
far_side_attacks[5] = AT_DSTRONG;
far_side_attacks[6] = AT_FSTRONG;
far_side_attacks[7] = AT_FAIR;
far_side_attacks[8] = AT_NSPECIAL;

mid_side_attacks[0] = AT_DTILT;
mid_side_attacks[1] = AT_FTILT;
mid_side_attacks[2] = AT_DATTACK;
mid_side_attacks[3] = AT_FSTRONG;
mid_side_attacks[4] = AT_DSPECIAL;
mid_side_attacks[5] = AT_FSPECIAL;
mid_side_attacks[6] = AT_DSTRONG;
mid_side_attacks[7] = AT_FAIR;
mid_side_attacks[8] = AT_BAIR;
mid_side_attacks[9] = AT_DATTACK;


close_up_attacks[0] = AT_UAIR;
close_up_attacks[1] = AT_UTILT;
close_up_attacks[2] = AT_NAIR;

close_down_attacks[0] = AT_DAIR;
close_down_attacks[2] = AT_FAIR;
close_down_attacks[3] = AT_NAIR;
close_down_attacks[3] = AT_DTILT;
close_down_attacks[4] = AT_DSTRONG;

close_side_attacks[0] = AT_FTILT;
close_side_attacks[1] = AT_JAB;
close_side_attacks[2] = AT_DTILT;
close_side_attacks[3] = AT_DSPECIAL;
close_side_attacks[4] = AT_NAIR;
close_side_attacks[5] = AT_BAIR;
close_side_attacks[6] = AT_UAIR;
close_side_attacks[7] = AT_DATTACK;
close_side_attacks[8] = AT_FSTRONG;
close_side_attacks[9] = AT_DSTRONG;

neutral_attacks[0] = AT_JAB;
neutral_attacks[1] = AT_NAIR;
neutral_attacks[2] = AT_DTILT;
neutral_attacks[3] = AT_FTILT;
neutral_attacks[4] = AT_UTILT;

bomb_hit_attacks[0] = AT_FTILT;
bomb_hit_attacks[1] = AT_DSPECIAL;
bomb_hit_attacks[2] = AT_UTILT;
bomb_hit_attacks[3] = AT_DTILT;