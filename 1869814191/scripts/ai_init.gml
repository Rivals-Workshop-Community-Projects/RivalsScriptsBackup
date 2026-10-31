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

stagex = get_stage_data(SD_X_POS);
stage_width = get_stage_data(SD_WIDTH);
stagey = get_stage_data(SD_Y_POS);

bblastzone = get_stage_data(SD_BOTTOM_BLASTZONE_Y);
lblastzone = get_stage_data(SD_LEFT_BLASTZONE_X);
rblastzone = get_stage_data(SD_RIGHT_BLASTZONE_X);
tblastzone = get_stage_data(SD_TOP_BLASTZONE_Y);

stage_center = stagex + stage_width/2
stage_left = stagex
stage_right = stagex + stage_width

///////////////////////////////////////////////////////////// NORMAL AI_INIT STUFF /////////////////////////////////////////////////////////////

//neutral attacks can happen all the time
neutral_attacks[0] = AT_JAB;
neutral_attacks[1] = AT_NAIR;
neutral_attacks[2] = AT_FAIR;
neutral_attacks[3] = AT_FSPECIAL;
neutral_attacks[4] = AT_DSPECIAL;

//moves that work when the CPU is far below
//far_up_attacks[0] = AT_USPECIAL;

//moves that work when far away from the enemy
far_side_attacks[0] = AT_NSPECIAL; 
far_side_attacks[1] = AT_FSPECIAL;

//moves that work when in medium range from the enemy
mid_side_attacks[0] = AT_NSPECIAL;
mid_side_attacks[1] = AT_DATTACK;
mid_side_attacks[2] = AT_FSPECIAL;
mid_side_attacks[3] = AT_FSTRONG;

//moves that work when the CPU is close and below
close_up_attacks[0] = AT_UAIR;
close_up_attacks[1] = AT_UTILT;
close_up_attacks[2] = AT_USTRONG;

//moves that work when the CPU is close to the enemy
close_side_attacks[0] = AT_JAB;
close_side_attacks[1] = AT_FSTRONG;
close_side_attacks[2] = AT_FTILT;
close_side_attacks[3] = AT_DTILT;
close_side_attacks[4] = AT_UTILT;
close_side_attacks[5] = AT_NAIR;
close_side_attacks[6] = AT_FAIR;
close_side_attacks[7] = AT_BAIR;
close_side_attacks[8] = AT_DSPECIAL;

//moves that work when the CPU is close and above
close_down_attacks[0] = AT_DAIR;

/*
far_down_attacks[0] = AT_DAIR;
//far_down_attacks[1] = AT_DSPECIAL;

far_up_attacks[0] = AT_UAIR;
far_up_attacks[1] = AT_USTRONG;
far_up_attacks[2] = AT_UTILT;

far_side_attacks[0] = AT_NSPECIAL;
far_side_attacks[1] = AT_FSPECIAL;

//mid_side_attacks[0] = AT_DTILT;
mid_side_attacks[1] = AT_DATTACK;
//mid_side_attacks[2] = AT_DSPECIAL;
mid_side_attacks[3] = AT_NSPECIAL;
mid_side_attacks[4] = AT_FSPECIAL;

close_up_attacks[0] = AT_UAIR;
close_up_attacks[1] = AT_USTRONG;
close_up_attacks[2] = AT_UTILT;

close_down_attacks[0] = AT_DAIR;
close_down_attacks[1] = AT_DTILT;
//close_down_attacks[2] = AT_DSTRONG;

close_side_attacks[0] = AT_FTILT;
close_side_attacks[1] = AT_JAB;
close_side_attacks[2] = AT_DTILT;
close_side_attacks[3] = AT_DATTACK;
close_side_attacks[4] = AT_FSTRONG;
close_side_attacks[5] = AT_DSPECIAL;
close_side_attacks[6] = AT_FAIR;

neutral_attacks[0] = AT_JAB;
neutral_attacks[1] = AT_NAIR;
//neutral_attacks[2] = AT_FTILT;
//neutral_attacks[3] = AT_DTILT;
//neutral_attacks[4] = AT_FSTRONG;
neutral_attacks[5] = AT_DSPECIAL;
*/
/*

far_down_attacks[0] = AT_DAIR;
far_down_attacks[1] = AT_DSPECIAL;

far_up_attacks[0] = AT_UAIR;
far_up_attacks[1] = AT_USTRONG;
far_up_attacks[2] = AT_UTILT;

far_side_attacks[0] = AT_FTILT;
far_side_attacks[2] = AT_DTILT;
far_side_attacks[3] = AT_FSTRONG;
far_side_attacks[4] = AT_NSPECIAL;

mid_side_attacks[0] = AT_DTILT;
mid_side_attacks[1] = AT_FTILT;
mid_side_attacks[2] = AT_DSPECIAL;
mid_side_attacks[3] = AT_NSPECIAL;
mid_side_attacks[4] = AT_FSPECIAL;

close_up_attacks[0] = AT_UAIR;
close_up_attacks[1] = AT_USTRONG;
close_up_attacks[2] = AT_NAIR;

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
close_side_attacks[5] = AT_FSPECIAL;
close_side_attacks[6] = AT_FAIR;

neutral_attacks[0] = AT_JAB;
neutral_attacks[1] = AT_NAIR;
neutral_attacks[2] = AT_FTILT;
neutral_attacks[3] = AT_DTILT;
neutral_attacks[4] = AT_FSTRONG;
neutral_attacks[5] = AT_FSPECIAL;

*/