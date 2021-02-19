//ai init

far_up_attacks[0] = AT_USPECIAL;

far_down_attacks[0] = AT_DSPECIAL;

far_side_attacks[0] = AT_NSPECIAL;

mid_side_attacks[0] = AT_FSPECIAL;
mid_side_attacks[1] = AT_FSTRONG;
mid_side_attacks[2] = AT_BAIR;

close_up_attacks[0] = AT_USTRONG;
close_up_attacks[1] = AT_UAIR;
close_up_attacks[2] = AT_UTILT;
close_up_attacks[3] = AT_DSPECIAL;

close_down_attacks[0] = AT_DSTRONG;
close_down_attacks[1] = AT_DAIR;
close_down_attacks[2] = AT_DTILT;

close_side_attacks[0] = AT_FAIR;
close_side_attacks[1] = AT_FTILT;

neutral_attacks[0] = AT_JAB;
neutral_attacks[1] = AT_NAIR;

// blastzone variables for the ai
BOTTOM_BLASTZONE_Y_POS = get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE);
TOP_BLASTZONE_Y_POS = get_stage_data(SD_Y_POS) - get_stage_data(SD_TOP_BLASTZONE);
LEFT_BLASTZONE_X_POS = get_stage_data(SD_X_POS) - get_stage_data(SD_SIDE_BLASTZONE);
RIGHT_BLASTZONE_X_POS = get_stage_data(SD_WIDTH) + get_stage_data(SD_X_POS) + get_stage_data(SD_SIDE_BLASTZONE);

// recovery variable
sacrificeBatit = false;
boostOffBatit = false;

// Batit attack delay
batitAttackDelay = 0;

// bypass attack blocks
allowFspecial = false;
allowDspecial = false;