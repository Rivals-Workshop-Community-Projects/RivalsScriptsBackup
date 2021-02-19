//ai_init

neutral_attacks[0] = AT_DSPECIAL;
neutral_attacks[1] = AT_FSPECIAL;
neutral_attacks[2] = AT_FAIR;

close_up_attacks[0] = AT_UTILT;
close_up_attacks[1] = AT_NAIR;
close_up_attacks[2] = AT_BAIR;
close_up_attacks[3] = AT_JAB;
close_up_attacks[4] = AT_DTILT;
close_up_attacks[5] = AT_USTRONG;

mid_side_attacks[0] = AT_FSTRONG;
mid_side_attacks[1] = AT_FSPECIAL;
mid_side_attacks[2] = AT_DSPECIAL;
mid_side_attacks[3] = AT_DAIR;
mid_side_attacks[4] = AT_JAB;

far_up_attacks[0] = AT_USTRONG;
far_up_attacks[1] = AT_UAIR;

close_down_attacks[0] = AT_DTILT;
close_down_attacks[1] = AT_DSTRONG;
close_down_attacks[2] = AT_DAIR;

close_side_attacks[0] = AT_FTILT;
close_side_attacks[1] = AT_JAB;

//ai_init - setting the basic AI attack behaviors

xdist = 0;
AIwait = 0;
temp_level = 9;
facing = false;
nearedge = false;
randDI = 0
rangedtimer = 300;
inactive = 0;
is_ai = true;
cuttertimer = 200
recoverytimer = 0;

epinel_ai_reaction_time = 20 - temp_level;

mawral_ai_strategy_state = 0;
mawral_ai_strategy_state_timer = 0;

mawral_ai_maneuver_state = 0;
mawral_ai_maneuver_state_timer = 0;

mawral_ai_dash_dance_speed = initial_dash_time - 1;





//input fastfall when this ticks to 0
epinel_buffered_fastfall = 0;
//input jump constantly until this ticks to 0
epinel_preserve_jump_input = 0;

epinel_target_height = 0;

epinel_target_factored_percent = 0;
//list of combo followup moves
epinel_combo_move_array[0] = AT_JAB;
epinel_combo_move_array[1] = AT_FTILT;
epinel_combo_move_array[2] = AT_DTILT;
epinel_combo_move_array[3] = AT_UTILT;
epinel_combo_move_array[4] = AT_NAIR;
epinel_combo_move_array[5] = AT_FAIR;
epinel_combo_move_array[6] = AT_BAIR;
epinel_combo_move_array[7] = AT_UAIR;
epinel_combo_move_array[8] = AT_DAIR;
epinel_combo_move_array[9] = AT_NSPECIAL;
epinel_combo_move_array[10] = AT_DSPECIAL_AIR;
epinel_combo_move_array[11] = AT_DSTRONG;
epinel_combo_move_array[12] = AT_USTRONG;
epinel_combo_move_array[13] = AT_DATTACK;
//epinel_combo_move_array[14] = AT_FSPECIAL;

epinel_move_reach_x[0] = 0;

epinel_move_positions_loaded = false;

epinel_ai_buffer_fastfall = 0;
epinel_ai_buffer_hold_jump = 0;

mawral_ai_maneuver_queue[0] = 0;
mawral_ai_maneuver_queue[1] = 0;
mawral_ai_maneuver_queue[2] = 0;
mawral_ai_maneuver_queue[3] = 0;
mawral_ai_maneuver_queue[4] = 0;

mawral_ai_resource_level = 0;
mawral_ai_resource_level_usable_threshold = 50;
mawral_ai_resource_level_max_threshold = 150;

