far_down_attacks[0] = AT_DAIR;

far_side_attacks[0] = AT_NSPECIAL;
far_side_attacks[1] = AT_FSPECIAL;
far_side_attacks[2] = AT_DATTACK;

mid_side_attacks[0] = AT_FSTRONG;
mid_side_attacks[1] = AT_DATTACK;
mid_side_attacks[2] = AT_FSPECIAL;
mid_side_attacks[3] = AT_FTILT;

close_up_attacks[0] = AT_USTRONG;
close_up_attacks[1] = AT_UAIR;
close_up_attacks[2] = AT_UTILT;

close_down_attacks[0] = AT_DSTRONG;
close_down_attacks[1] = AT_DAIR;
close_down_attacks[2] = AT_DTILT;

close_side_attacks[0] = AT_FSTRONG;
close_side_attacks[1] = AT_FAIR;
close_side_attacks[2] = AT_FTILT;

neutral_attacks[0] = AT_JAB;
neutral_attacks[1] = AT_NAIR;
neutral_attacks[2] = AT_DSPECIAL;

ai_state = 1;
dist_x = 0;
dist_y = 0;
dist_total = 0;
has_less_percent = false;
has_more_stocks = false;
has_equal_stocks = false;
level_skill_check = false;

force_jump = false;

in_advantage = 0;
advantage_time = 120; //Sets the advantage timer to this number

kill_form = 0; //Formula for going to kill variable
going_for_kill = false;

di_read = 0;
