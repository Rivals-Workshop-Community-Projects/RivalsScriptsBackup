far_down_attacks[0] = AT_DAIR;

far_side_attacks[0] = AT_FSPECIAL;

mid_side_attacks[0] = AT_FSTRONG;
mid_side_attacks[1] = AT_FSPECIAL;
mid_side_attacks[2] = AT_FTILT;

mid_up_attacks[0] = AT_FAIR;

mid_down_attacks[0] = AT_DAIR;

close_up_attacks[0] = AT_UTILT;
close_up_attacks[1] = AT_UAIR;
close_up_attacks[2] = AT_JAB;

close_down_attacks[0] = AT_DSTRONG;
close_down_attacks[1] = AT_DAIR;
close_down_attacks[2] = AT_DTILT;

close_side_attacks[0] = AT_FSTRONG;
close_side_attacks[1] = AT_FAIR;
close_side_attacks[2] = AT_FTILT;
close_side_attacks[3] = AT_JAB;
close_down_attacks[4] = AT_DTILT;

neutral_attacks[0] = AT_JAB;
neutral_attacks[1] = AT_FTILT;
neutral_attacks[2] = AT_NAIR;
neutral_attacks[3] = AT_FAIR;
neutral_attacks[4] = AT_FSPECIAL;

combo_starter = 
[AT_FSTRONG_2,
AT_UTILT,
AT_DTILT,
AT_NAIR,
AT_JAB,
AT_DSTRONG,
AT_DSTRONG_2];

combo_extender = 
[AT_FAIR,
AT_NAIR,
AT_DAIR,
AT_FSPECIAL,
AT_JAB,
AT_DSTRONG_2,
AT_NSPECIAL
];

combo_ender = 
[AT_USTRONG,
AT_FSTRONG,
AT_USTRONG_2,
AT_BAIR,
AT_DAIR];

punish_moves = 
[AT_FSTRONG_2,
AT_FTILT,
AT_DSTRONG,
AT_FSTRONG];

anti_airs = 
[AT_USTRONG_2,
AT_FTILT,
AT_UTILT,
AT_USPECIAL];

action_timer = 0;
kill_percent = false;
combo_start = false;
combo_extend = false;
combo_end = false;

bm = false;