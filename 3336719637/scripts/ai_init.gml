//neutral attacks can happen all the time
neutral_attacks[0] = AT_DSPECIAL;

//moves that work when the CPU is far below
//far_up_attacks[0] = AT_#;

//moves that work when far away from the enemy
far_side_attacks[0] = AT_NSPECIAL; 
far_side_attacks[1] = AT_FSPECIAL;

//moves that work when the CPU is far above
//far_down_attacks[0] = AT_#;

//moves that work when in medium range from the enemy
mid_side_attacks[0] = AT_DATTACK;
mid_side_attacks[1] = AT_FSTRONG;

//moves that work when the CPU is close and below
close_up_attacks[0] = AT_USTRONG;
close_up_attacks[1] = AT_UAIR;
close_up_attacks[2] = AT_UTILT;

//moves that work when the CPU is close to the enemy
close_side_attacks[0] = AT_JAB;
close_side_attacks[1] = AT_NAIR;
close_side_attacks[2] = AT_FSTRONG;
close_side_attacks[3] = AT_FAIR;
close_side_attacks[4] = AT_FTILT;
close_down_attacks[5] = AT_DTILT;

//moves that work when the CPU is close and above
close_down_attacks[0] = AT_DSTRONG;
close_down_attacks[1] = AT_DAIR;