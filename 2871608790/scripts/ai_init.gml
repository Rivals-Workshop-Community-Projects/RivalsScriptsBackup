//ai_init.gml

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
neutral_attacks[0] = AT_JAB;

//moves that work when the CPU is far below
far_up_attacks[0] = AT_JAB;

//moves that work when far away from the enemy
far_side_attacks[0] = AT_JAB; 

//moves that work when the CPU is far above
far_down_attacks[0] = AT_JAB;

//moves that work when in medium range from the enemy
mid_side_attacks[0] = AT_JAB;

//moves that work when the CPU is close and below
close_up_attacks[0] = AT_JAB;

//moves that work when the CPU is close to the enemy
close_side_attacks[0] = AT_JAB;

//moves that work when the CPU is close and above
close_down_attacks[0] = AT_JAB;