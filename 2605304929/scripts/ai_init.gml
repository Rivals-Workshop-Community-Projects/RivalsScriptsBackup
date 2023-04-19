/*
ai_init.gml – called when a CPU version of the character is created. This script should populate the ▼ following arrays with attack indexes.
The arrays can be any size. Each entry in the array has the same probability of being selected. The entries in the arrays should only be the default attacks values – AT_DSPECIAL_AIR is not valid, for instance, and should just be AT_DSPECIAL.

ai_update.gml – called every frame for a CPU version of the character. Used for special cases like recovery and complex special moves. Use ai_target to reference the player object the CPU is currently targeting. Use ai_recovering to check if the CPU is recovering or not. Use temp_level to reference the CPU’s difficulty level (1-9).
*/
/* Simple AI */

far_down_attacks[0] = AT_DSPECIAL;

far_side_attacks[0] = AT_DSPECIAL;
//far_side_attacks[1] = AT_FSPECIAL;

mid_side_attacks[0] = AT_FTILT;
mid_side_attacks[1] = AT_DATTACK;
mid_side_attacks[2] = AT_FSPECIAL;

mid_up_attacks[0] = AT_USPECIAL;

mid_down_attacks[0] = AT_DSPECIAL;

close_up_attacks[0] = AT_USTRONG;
close_up_attacks[1] = AT_UAIR;
close_up_attacks[2] = AT_UTILT;
close_up_attacks[3] = AT_NSPECIAL;

close_down_attacks[0] = AT_DSTRONG;
close_down_attacks[1] = AT_DAIR;
close_down_attacks[2] = AT_DTILT;

close_side_attacks[0] = AT_FSTRONG;
close_side_attacks[1] = AT_FAIR;
close_side_attacks[2] = AT_DTILT;

neutral_attacks[0] = AT_JAB;
neutral_attacks[1] = AT_NAIR;
neutral_attacks[2] = AT_DSPECIAL;
neutral_attacks[2] = AT_FSPECIAL;

/*
//Debug AI
close_down_attacks[0] = AT_DTILT;
mid_down_attacks[0] = AT_DSTRONG;
far_down_attacks[0] = AT_DSPECIAL;

close_side_attacks[0] = AT_FTILT;
mid_side_attacks[0] = AT_FSTRONG;
far_side_attacks[0] = AT_FSPECIAL;

close_up_attacks[0] = AT_UTILT;
mid_up_attacks[0] = AT_USTRONG;
far_up_attacks[0] = AT_USPECIAL;

neutral_attacks[0] = AT_JAB;
*/
/*
// Custom AI

ai_current_mode = 0;
ai_current_mode_timer = 0;
ai_attack_cooldown = 0;
ai_sequence = 1;
ai_sequence_timer = 0;
ai_neutral_route_selection = 0;

attack_that_hit = 0;
target_percentage = 0;

sequence_buffer = [];

SD_X_POS	The x position of the left side of the main stage. Use room_width minus this value to get the x position of the right side of the stage
SD_Y_POS	The y position of the top of the main stage
SD_TOP_BLASTZONE	The distance between the top of the main stage and the top blastzone
SD_BOTTOM_BLASTZONE	The distance between the top of the main stage and the bottom blastzone
SD_SIDE_BLASTZONE	The distance between the left side of the main stage and the left blastzone. All stages are symmetrical in Rivals, so this works for both sides
SD_WIDTH	The width of the main stage
SD_ID	The unique ID for the stage. Returns -1 if the custom stage is not yet published to the workshop


// Stage Variables 
ai_stage_x = get_stage_data( SD_X_POS );
ai_stage_y = get_stage_data( SD_Y_POS );
ai_stage_top_blastzone = get_stage_data( SD_TOP_BLASTZONE );
ai_stage_bottom_blastzone = get_stage_data( SD_BOTTOM_BLASTZONE );
ai_stage_side_blastzone = get_stage_data( SD_SIDE_BLASTZONE );
ai_stage_width = get_stage_data( SD_WIDTH );
*/