//ai_init.gml
//we can make a CPU version of the player do certain moves at random
//this script can also work like the regular init.gml script where we put specific variables here that we want only on a CPU player

//////////////////////////////////////////////////////// USEFUL VARIABLES FOR AI_UPDATE ////////////////////////////////////////////////////////

//when the CPU is in fight mode, this will count up, works for things that need to happen based on timing
cpu_fight_time = 0;

//stage coordinates
stage_left = get_stage_data(SD_X_POS);
stage_right = room_width - get_stage_data(SD_X_POS);
stage_top = get_stage_data(SD_Y_POS);

//ai_target interraction
target_dist = 0;
target_angle = 0;
target_face = false;

///////////////////////////////////////////////////////////// NORMAL AI_INIT STUFF /////////////////////////////////////////////////////////////

//neutral attacks can happen all the time
neutral_attacks = [AT_NSPECIAL, AT_DSPECIAL];

//moves that work when the CPU is far below
far_up_attacks = [AT_USTRONG];

//moves that work when far away from the enemy
far_side_attacks = [AT_NSPECIAL, AT_FSPECIAL];

//moves that work when the CPU is far above
far_down_attacks = [AT_DAIR];

//moves that work when in medium range from the enemy
mid_side_attacks = [AT_DATTACK, AT_NSPECIAL, AT_FSPECIAL];

//moves that work when the CPU is close and below
close_up_attacks = [AT_USTRONG, AT_UAIR, AT_UTILT];

//moves that work when the CPU is close to the enemy
close_side_attacks = [AT_JAB, AT_NAIR, AT_FSTRONG, AT_FAIR, AT_FTILT, AT_DTILT, AT_DSTRONG, AT_FSPECIAL];

//moves that work when the CPU is close and above
close_down_attacks = [AT_DAIR];