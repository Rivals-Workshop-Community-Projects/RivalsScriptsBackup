combo_timer = 0;
combo_attack = noone;
combo_random = 0;
combo_chance = ((temp_level*10) + 10);
ai_attack_time *= 0.5;

//This is NEVER used.
far_up_attacks[0] = AT_USPECIAL;

//Y difference more than 200;
far_down_attacks[0] = AT_DAIR;
far_down_attacks[1] = AT_BAIR;

//X difference of over 400.
far_side_attacks[0] = AT_JAB;
far_side_attacks[1] = AT_FSPECIAL;
far_side_attacks[2] = AT_NSPECIAL;
far_side_attacks[3] = AT_DSPECIAL;
far_side_attacks[4] = AT_USPECIAL;

//X difference of 130 up to 400. This is NEVER used if the CPU is Airborne.
mid_side_attacks[0] = AT_JAB;
mid_side_attacks[1] = AT_FSPECIAL;
mid_side_attacks[2] = AT_NSPECIAL;
mid_side_attacks[3] = AT_DSPECIAL;
mid_side_attacks[4] = AT_USPECIAL;
mid_side_attacks[5] = AT_DATTACK;

//X difference lower than 130.
//When Y difference is 0, it randomly chooses between this and close_down and neutral. When Y difference is negative, it is still random but prefers this.
close_up_attacks[0] = AT_UTILT;
close_up_attacks[1] = AT_FTILT;
close_up_attacks[2] = AT_DATTACK;

//X difference lower than 130.
//When Y difference is 0, it randomly chooses between this and close_up and neutral. When Y difference is positive, it is still random but prefers this.
close_down_attacks[0] = AT_DTILT;
close_down_attacks[1] = AT_FTILT;
close_down_attacks[2] = AT_DATTACK;

//X difference lower than 130. Does not seem to work? AI prefers neutral_attacks instead of this one.
////close_side_attacks[0] = AT_JAB;

//X difference lower than 130.  When Y difference is 0, it randomly chooses between this and close_down and close_up
neutral_attacks[0] = AT_JAB;
neutral_attacks[1] = AT_UTILT;
neutral_attacks[2] = AT_DTILT;
neutral_attacks[3] = AT_FTILT;
neutral_attacks[4] = AT_DATTACK;


//When Y difference is more than -100 the CPU will jump.