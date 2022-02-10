//ai_init - setting the basic AI attack behaviors

is_ai = true;

waveshine = false;
multishine = false;
shdl = false;
multishine_counter = 0;
taunt_time = false;
taunted = false;

far_down_attacks[0] = AT_DSPECIAL;
far_down_attacks[1] = AT_NAIR;

far_up_attacks[0] = AT_UAIR;

far_side_attacks[0] = AT_DSPECIAL;
far_side_attacks[1] = AT_NAIR;
far_side_attacks[2] = AT_BAIR;

mid_side_attacks[0] = AT_DSPECIAL;
mid_side_attacks[1] = AT_NAIR;
mid_side_attacks[2] = AT_BAIR;

close_up_attacks[0] = AT_USTRONG;
close_up_attacks[1] = AT_EXTRA_2;
close_up_attacks[2] = AT_UTILT;
close_up_attacks[3] = AT_NAIR;
close_up_attacks[4] = AT_DSTRONG;
close_up_attacks[5] = AT_DTILT;

close_down_attacks[0] = AT_DSTRONG;
close_down_attacks[1] = AT_DAIR;
close_down_attacks[2] = AT_DSPECIAL;
close_down_attacks[3] = AT_EXTRA_3;

close_side_attacks[0] = AT_DTILT;
close_side_attacks[1] = AT_DSTRONG;
close_side_attacks[2] = AT_DSPECIAL;
close_side_attacks[3] = AT_DATTACK;
close_side_attacks[4] = AT_FSTRONG;

neutral_attacks[0] = AT_NAIR;
neutral_attacks[1] = AT_DSPECIAL;