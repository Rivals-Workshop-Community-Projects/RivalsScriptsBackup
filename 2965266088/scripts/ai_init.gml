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
target_respawn = false;

///////////////////////////////////////////////////////////// NORMAL AI_INIT STUFF /////////////////////////////////////////////////////////////

//neutral attacks can happen all the time
neutral_attacks[0] = AT_JAB;
neutral_attacks[1] = AT_NAIR;

//moves that work when the CPU is far below
far_up_attacks[0] = AT_UAIR;

//moves that work when far away from the enemy
far_side_attacks[0] = AT_DATTACK; 
far_side_attacks[1] = AT_FSPECIAL; 

//moves that work when the CPU is far above
far_down_attacks[0] = AT_DAIR;

//moves that work when in medium range from the enemy
mid_side_attacks[0] = AT_DATTACK;
mid_side_attacks[1] = AT_FSPECIAL; 
mid_side_attacks[2] = AT_NSPECIAL;

//moves that work when the CPU is close and below
close_up_attacks[0] = AT_UTILT;
close_up_attacks[1] = AT_NSPECIAL;
close_up_attacks[2] = AT_DSTRONG;
close_up_attacks[3] = AT_USTRONG;

//moves that work when the CPU is close to the enemy
close_side_attacks[0] = AT_JAB;
close_side_attacks[1] = AT_FTILT;
close_side_attacks[2] = AT_DTILT;
close_side_attacks[3] = AT_FSTRONG;
close_side_attacks[4] = AT_FAIR;
close_side_attacks[5] = AT_BAIR;
close_side_attacks[6] = AT_FSPECIAL; 

//moves that work when the CPU is close and above
close_down_attacks[0] = AT_DAIR;