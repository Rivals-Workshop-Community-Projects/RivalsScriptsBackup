//ai_init

is_cpu = true;
cpu_fight_time = 0;

cur_skills = [0, 1, 2, 3];

cpu_skill_pool = ds_list_create();
for (var i = 0; i < 12 i ++) ds_list_insert(cpu_skill_pool, i, i);

menu_active = false;
menu_type = 1;
cpu_select_time = 30; //50

input = 0; //will decide bar's combo strings
target_dist = 0;
target_angle = 0;
facing_target = false;

bar_should_parry = 0; //decides if bar should attempt to parry

//attack specific stuff
cpu_cur_skill = -1;

daggers_used = 0; //limits light dagger spam
burnbuff_time = 0;
burnbuff_end_time = 300;

lightbuff_time = 0;
lightbuff_end_time = 300;


//stage coords
surface_left = get_stage_data(SD_X_POS);
surface_right = room_width - get_stage_data(SD_X_POS);
surface_top = get_stage_data(SD_Y_POS);




//normal attacks arrays
neutral_attacks[0] = AT_NAIR;
//on the special moves, they are being limited later depending on the skill
//neutral_attacks[1] = AT_NSPECIAL; 
//neutral_attacks[2] = AT_FSPECIAL;
//neutral_attacks[3] = AT_USPECIAL;
//neutral_attacks[4] = AT_DSPECIAL;

mid_side_attacks[0] = AT_DATTACK;

close_up_attacks[0] = AT_UTILT;
close_up_attacks[1] = AT_UAIR;
close_up_attacks[2] = AT_USTRONG;

close_side_attacks[0] = AT_JAB;
close_side_attacks[1] = AT_FTILT;
close_side_attacks[2] = AT_DTILT;
close_side_attacks[3] = AT_BAIR;
close_side_attacks[4] = AT_FSTRONG;
close_side_attacks[5] = AT_DSTRONG;

close_down_attacks[0] = AT_DTILT;
close_down_attacks[2] = AT_DAIR;
close_down_attacks[3] = AT_DSTRONG;

//far_up_attacks[0]
//far_side_attacks[0]
//far_down_attacks[0]