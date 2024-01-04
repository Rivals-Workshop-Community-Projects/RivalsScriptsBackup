//ai_init.gml

//////////////////////////////////////////////////////// USEFUL VARIABLES FOR AI_UPDATE ////////////////////////////////////////////////////////

//when the CPU is in fight mode, this will count up, works for things that need to happen based on timing
cpu_fight_time = 0;

//stage coordinates
stage_left = get_stage_data(SD_X_POS);
stage_right = room_width - get_stage_data(SD_X_POS);
stage_top = get_stage_data(SD_Y_POS);
blastzone_left = stage_left - get_stage_data(SD_SIDE_BLASTZONE);
blastzone_right = stage_right + get_stage_data(SD_SIDE_BLASTZONE);
blastzone_bottom = stage_top + get_stage_data(SD_BOTTOM_BLASTZONE);

which_dir_is_stage = "";
which_dir_is_ring = "";

//ai_target interraction
target_dist = 0;
target_angle = 0;
target_face = false;


//sonic specific
ring_rng = -1;
recovery_rng = -1; //0 = uspec | 1 = fair | 2 = fspec | 3 = nspec
can_hitfall = false;
combo_seed = 0;
trick_chance = -1;
dspec_bounce_amount = 0;
waveland_cd = 0;


///////////////////////////////////////////////////////////// NORMAL AI_INIT STUFF /////////////////////////////////////////////////////////////

//neutral attacks can happen all the time
neutral_attacks[0] = AT_NAIR;
neutral_attacks[1] = AT_FAIR;
neutral_attacks[2] = AT_NSPECIAL;

//moves that work when the CPU is far below
far_up_attacks[0] = AT_UTILT;
far_up_attacks[1] = AT_USTRONG;
far_up_attacks[2] = AT_UAIR;

//moves that work when far away from the enemy
far_side_attacks[0] = AT_FTILT; 
far_side_attacks[1] = AT_DATTACK;
far_side_attacks[2] = AT_FSPECIAL;

//moves that work when the CPU is far above
far_down_attacks[0] = AT_DSPECIAL;

//moves that work when in medium range from the enemy
mid_side_attacks[0] = AT_JAB;
mid_side_attacks[1] = AT_USPECIAL;
mid_side_attacks[2] = AT_FAIR;

//moves that work when the CPU is close and below
close_up_attacks[0] = AT_JAB;
close_up_attacks[1] = AT_JAB;

//moves that work when the CPU is close to the enemy
close_side_attacks[1] = AT_JAB; 
close_side_attacks[1] = AT_UTILT; 
close_side_attacks[2] = AT_FTILT; 
close_side_attacks[3] = AT_DTILT;
close_side_attacks[4] = AT_FSTRONG;
close_side_attacks[5] = AT_BAIR;

//moves that work when the CPU is close and above
close_down_attacks[0] = AT_DAIR;