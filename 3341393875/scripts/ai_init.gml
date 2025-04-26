combo_timer = 0;
combo_attack = noone;
combo_random = 0;
combo_chance = ((temp_level*10) + 10);
ai_attack_time *= 0.5;

//PIZZAFACE
if stance == ("pizzaface") {
//This is NEVER used.
far_up_attacks[0] = AT_UAIR;
far_up_attacks[1] = AT_USPECIAL;

//Y difference more than 200;
far_down_attacks[0] = AT_DAIR;
far_down_attacks[1] = AT_DAIR;
far_down_attacks[2] = AT_NSPECIAL;
far_down_attacks[3] = AT_DSPECIAL;

//X difference of over 400.
far_side_attacks[0] = AT_FSPECIAL;
far_side_attacks[1] = AT_NSPECIAL;
far_side_attacks[2] = AT_DSPECIAL;
far_side_attacks[3] = AT_NSPECIAL;
far_side_attacks[4] = AT_DSPECIAL;
far_side_attacks[5] = AT_USPECIAL;

//X difference of 130 up to 400. This is NEVER used if the CPU is Airborne.
mid_side_attacks[0] = AT_FSPECIAL;
mid_side_attacks[1] = AT_NSPECIAL;
mid_side_attacks[2] = AT_DSPECIAL;
mid_side_attacks[3] = AT_DATTACK;
mid_side_attacks[4] = AT_FTILT;

//X difference lower than 130.
//When Y difference is 0, it randomly chooses between this and close_down and neutral. When Y difference is negative, it is still random but prefers this.
close_up_attacks[0] = AT_UTILT;
close_up_attacks[1] = AT_UAIR;
close_up_attacks[2] = AT_USTRONG;
close_up_attacks[3] = AT_FTILT;

//X difference lower than 130.
//When Y difference is 0, it randomly chooses between this and close_up and neutral. When Y difference is positive, it is still random but prefers this.
close_down_attacks[0] = AT_DTILT;
close_down_attacks[1] = AT_DAIR;
close_down_attacks[2] = AT_DSTRONG;
close_down_attacks[3] = AT_FTILT;

//X difference lower than 130. Does not seem to work? AI prefers neutral_attacks instead of this one.
close_side_attacks[0] = AT_JAB;
close_side_attacks[1] = AT_FSTRONG;

//X difference lower than 130.  When Y difference is 0, it randomly chooses between this and close_down and close_up
neutral_attacks[0] = AT_JAB;
neutral_attacks[1] = AT_UTILT;
neutral_attacks[2] = AT_DTILT;
neutral_attacks[3] = AT_FTILT;
neutral_attacks[4] = AT_FSTRONG;
neutral_attacks[5] = AT_FSPECIAL;

//When Y difference is more than -100 the CPU will jump.

} else {
//This is NEVER used.
far_up_attacks[0] = AT_UAIR;
far_up_attacks[1] = AT_USPECIAL;

//Y difference more than 200;
far_down_attacks[0] = AT_DAIR;
far_down_attacks[1] = AT_NAIR;
far_down_attacks[2] = AT_NSPECIAL;
far_down_attacks[3] = AT_DSPECIAL;

//X difference of over 400.
far_side_attacks[0] = AT_FSPECIAL;
far_side_attacks[1] = AT_NSPECIAL;
far_side_attacks[2] = AT_DSPECIAL;
far_side_attacks[3] = AT_NSPECIAL;
far_side_attacks[4] = AT_DSPECIAL;
far_side_attacks[5] = AT_USPECIAL;
far_side_attacks[6] = AT_DSTRONG;

//X difference of 130 up to 400. This is NEVER used if the CPU is Airborne.
mid_side_attacks[0] = AT_FSPECIAL;
mid_side_attacks[1] = AT_NSPECIAL;
mid_side_attacks[2] = AT_DSPECIAL;
mid_side_attacks[3] = AT_DATTACK;
mid_side_attacks[4] = AT_FTILT;
mid_side_attacks[5] = AT_DTILT;
mid_side_attacks[6] = AT_DATTACK;
mid_side_attacks[7] = AT_DTILT;
mid_side_attacks[8] = AT_DSTRONG;

//X difference lower than 130.
//When Y difference is 0, it randomly chooses between this and close_down and neutral. When Y difference is negative, it is still random but prefers this.
close_up_attacks[0] = AT_UTILT;
close_up_attacks[1] = AT_USTRONG;
close_up_attacks[2] = AT_JAB;
close_up_attacks[3] = AT_NAIR;

//X difference lower than 130.
//When Y difference is 0, it randomly chooses between this and close_up and neutral. When Y difference is positive, it is still random but prefers this.
close_down_attacks[0] = AT_DTILT;
close_down_attacks[1] = AT_DAIR;
close_down_attacks[2] = AT_DSTRONG;
close_down_attacks[3] = AT_JAB;

//X difference lower than 130. Does not seem to work? AI prefers neutral_attacks instead of this one.
close_side_attacks[0] = AT_JAB;
close_side_attacks[1] = AT_FSTRONG;

//X difference lower than 130.  When Y difference is 0, it randomly chooses between this and close_down and close_up
neutral_attacks[0] = AT_JAB;
neutral_attacks[1] = AT_FTILT;
neutral_attacks[2] = AT_FSTRONG;
neutral_attacks[3] = AT_NSPECIAL;

//When Y difference is more than -100 the CPU will jump.
}