//ai_init - setting the basic AI attack behaviors

rocketJumpTimer = 0

far_down_attacks = [
    AT_DAIR,
    AT_NSPECIAL,
    AT_DSTRONG,
    AT_BAIR
]

far_up_attacks[0] = AT_UAIR;
far_up_attacks[1] = AT_USTRONG;
far_up_attacks[2] = AT_NSPECIAL;

far_side_attacks[0] = AT_DATTACK;
far_side_attacks[1] = AT_FSTRONG;
far_side_attacks[2] = AT_NSPECIAL;

mid_side_attacks[0] = AT_DATTACK;
mid_side_attacks[1] = AT_FSTRONG;
mid_side_attacks[2] = AT_NSPECIAL;

close_up_attacks[0] = AT_USTRONG;
close_up_attacks[1] = AT_UAIR;
close_up_attacks[2] = AT_UTILT;
close_up_attacks[3] = AT_NAIR;
close_up_attacks[4] = AT_DSTRONG;

close_down_attacks[0] = AT_DSTRONG;
close_down_attacks[1] = AT_DAIR;
close_down_attacks[2] = AT_DSPECIAL;

close_side_attacks[0] = AT_FTILT;
close_side_attacks[1] = AT_JAB;
close_side_attacks[2] = AT_DTILT;
close_side_attacks[3] = AT_NSPECIAL;
close_side_attacks[4] = AT_DSTRONG;

neutral_attacks[0] = AT_JAB;
neutral_attacks[1] = AT_NAIR;
neutral_attacks[2] = AT_NSPECIAL;
neutral_attacks[3] = AT_FTILT;