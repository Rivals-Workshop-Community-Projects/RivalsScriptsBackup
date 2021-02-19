//ai_init - setting the basic AI attack behaviors

random_shot = 1;

h_range = abs(ai_target.x - x);
v_range = abs(y - ai_target.y);
x_dist = (ai_target.x - x);
y_dist = (y - ai_target.y);
stage_x = get_stage_data( SD_X_POS );
stage_y = get_stage_data( SD_Y_POS );
blastzone = get_stage_data(SD_SIDE_BLASTZONE);

shot_timer = 100;
ai_shot = false;
ai_selected_timer = 100;

far_down_attacks[0] = AT_DAIR;
far_down_attacks[1] = AT_NAIR;
far_down_attacks[3] = AT_DSPECIAL;

far_up_attacks[0] = AT_UAIR;
far_up_attacks[1] = AT_USTRONG;
far_up_attacks[2] = AT_NSPECIAL;
far_up_attacks[3] = AT_DSPECIAL;

far_side_attacks[0] = AT_FTILT;
far_side_attacks[2] = AT_DTILT;
far_side_attacks[3] = AT_FSTRONG;
far_side_attacks[4] = AT_NSPECIAL;
far_side_attacks[5] = AT_DSPECIAL;

mid_side_attacks[0] = AT_DTILT;
mid_side_attacks[1] = AT_FTILT;
mid_side_attacks[2] = AT_DSPECIAL;
mid_side_attacks[3] = AT_NSPECIAL;
mid_side_attacks[4] = AT_UTILT;
mid_side_attacks[5] = AT_FSPECIAL;
mid_side_attacks[6] = AT_DSPECIAL;

close_up_attacks[0] = AT_UAIR;
close_up_attacks[1] = AT_NSPECIAL;
close_up_attacks[2] = AT_USTRONG;
close_up_attacks[3] = AT_NAIR;
close_up_attacks[4] = AT_UTILT;

close_down_attacks[0] = AT_DAIR;
close_down_attacks[1] = AT_DTILT;
close_down_attacks[2] = AT_DSTRONG;
close_down_attacks[3] = AT_FSTRONG;
close_down_attacks[4] = AT_NAIR;
close_down_attacks[5] = AT_FAIR;

close_side_attacks[0] = AT_FTILT;
close_side_attacks[1] = AT_JAB;
close_side_attacks[2] = AT_DTILT;
close_side_attacks[3] = AT_NAIR;
close_side_attacks[4] = AT_FSTRONG;
close_side_attacks[6] = AT_FAIR;
close_side_attacks[7] = AT_BAIR;
close_side_attacks[8] = AT_UTILT;

neutral_attacks[0] = AT_JAB;
neutral_attacks[1] = AT_NAIR;
neutral_attacks[2] = AT_FTILT;
neutral_attacks[3] = AT_DTILT;
neutral_attacks[4] = AT_FSTRONG;
neutral_attacks[5] = AT_NSPECIAL;