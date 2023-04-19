sd_l = get_stage_data(SD_LEFT_BLASTZONE_X);
sd_r = get_stage_data(SD_RIGHT_BLASTZONE_X);
stage_y = get_stage_data(SD_Y_POS);
stage_mid = (sd_l + sd_r) / 2;


// ATTACK ARRAYS
neutral_attacks = [
    AT_JAB,
    AT_FAIR
];

close_side_attacks = [
    AT_DATTACK,
    AT_JAB,
    AT_FTILT,
    AT_NAIR,
    AT_FAIR,
    AT_BAIR,
    AT_DTILT,
    AT_FSTRONG,
    AT_DSTRONG
];

mid_side_attacks = [
    AT_DATTACK,
    AT_JAB,
    AT_FTILT,
    AT_NAIR,
    AT_FAIR,
    AT_BAIR,
    AT_DTILT,
    AT_FSTRONG,
    AT_DSTRONG,
    AT_FSPECIAL
];

far_side_attacks = [
    AT_JAB,
    AT_FTILT,
    AT_NAIR,
    AT_DSTRONG,
    AT_FSPECIAL
];

close_up_attacks = [
    AT_UAIR,
    AT_UTILT
];

far_up_attacks = [
    AT_UAIR,
    AT_USTRONG,
    AT_FSPECIAL
];

close_down_attacks = [
    AT_DAIR,
    AT_DTILT,
    AT_DSTRONG
];

far_down_attacks = [
    AT_DAIR,
    AT_FSPECIAL,
    AT_DSPECIAL
];
