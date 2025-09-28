//ai_init - setting the basic AI attack behaviors

far_down_attacks[0] = AT_DAIR;

far_side_attacks[0] = AT_FSPECIAL;
far_side_attacks[1] = AT_DSPECIAL;

mid_side_attacks[0] = AT_DATTACK;
mid_side_attacks[1] = AT_NSPECIAL;
mid_side_attacks[2] = AT_FSPECIAL;
mid_side_attacks[3] = AT_DSPECIAL;

// Close attacks change in ai_update
close_up_attacks[0] = AT_JAB;
close_up_attacks[1] = AT_DATTACK;
close_up_attacks[2] = AT_FTILT;
close_up_attacks[3] = AT_UTILT;
close_up_attacks[4] = AT_USPECIAL;

close_down_attacks[0] = AT_JAB;
close_down_attacks[1] = AT_DATTACK;
close_down_attacks[2] = AT_FTILT;
close_down_attacks[3] = AT_DTILT;

neutral_attacks[0] = AT_FSTRONG;
neutral_attacks[1] = AT_USTRONG;
neutral_attacks[2] = AT_DSTRONG;

ai_dodge_dir = -1;
ai_commit_dir = 0;

