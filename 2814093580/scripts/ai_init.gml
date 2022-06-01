

far_side_attacks[0] = AT_NSPECIAL;
far_side_attacks[1] = AT_NSPECIAL_2;
far_side_attacks[2] = AT_FSPECIAL;
far_side_attacks[3] = AT_DATTACK;


mid_side_attacks[0] = AT_DATTACK;
mid_side_attacks[1] = AT_FSPECIAL;
mid_side_attacks[2] = AT_DTILT;
mid_side_attacks[3] = AT_DSPECIAL;


close_up_attacks[0] = AT_UAIR;
close_up_attacks[1] = AT_UTILT;
close_up_attacks[2] = AT_USPECIAL;

far_up_attacks[0] = AT_USTRONG;
far_up_attacks[1] = AT_USPECIAL;

close_down_attacks[0] = AT_DSTRONG;
close_down_attacks[1] = AT_DAIR;
close_down_attacks[2] = AT_DTILT;
close_down_attacks[2] = AT_DSPECIAL;

close_side_attacks[0] = AT_FSTRONG;
close_side_attacks[1] = AT_FAIR;
close_side_attacks[2] = AT_FTILT;
close_side_attacks[0] = AT_JAB;

neutral_attacks[0] = AT_NAIR;
neutral_attacks[1] = AT_NSPECIAL;
neutral_attacks[2] = AT_DSPECIAL;

is_ai = true;
targetbusy = false;
stagex = get_stage_data(SD_X_POS);
stagey = get_stage_data(SD_Y_POS);
top_blastzone = get_stage_data(SD_TOP_BLASTZONE);
chasing = 0;
to_boost = 0;
strongPercent = 0;
stall = 0;
camping = 0;
do_not_attack = false;
attacking = false;
wait_time = 0;
wavelanding = false;