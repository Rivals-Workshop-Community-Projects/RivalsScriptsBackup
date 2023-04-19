is_ai = true;
// ai_draw = ds_list_create();
ai_mode = "neutral"
ai_main_script = "main";
ai_current_script = ai_main_script;
ai_script_execution_frame = 0;
ai_script_timeout = 180;

can_dash = false
delay_time = 0

solid_asset = asset_get("par_block");
platform_asset = asset_get("par_jumpthrough");

short_hop_height = noone;
short_hop_vert_time = noone;
jump_height = noone;
jump_vert_time = noone;
djump_height = noone;
djump_vert_time = noone;
jump_data_obtained = false;

ct = 0;

ai_debug_pin = false;
ai_debug_pin_x = 0;
ai_debug_pin_y = 0;
ai_debug_pin_timeout = 20;
ai_debug_pin_damage = 50;
ai_debug_pin_timer = 0;

//Modify these values with the indexes of the hitboxes attack, this will tell the ai where it will hit, works with only physical hitboxes
ai_attacks = [
  [AT_DAIR, [1, 2]],
  [AT_BAIR, [1]],
  [AT_DATTACK, [1]],
  [AT_UAIR, [1, 2, 3]],
  [AT_FAIR, [1, 2]],
  [AT_NAIR, [1, 2]],
  [AT_NSPECIAL, [1, 2, 3, 4]],
  [AT_UTILT, [1]],
  [AT_FTILT, [1]],
  [AT_DTILT, [1]],
  [AT_JAB, [1]], 
  [AT_FSTRONG, [1]],
  [AT_DSTRONG, [1]],
  [AT_USTRONG, [1]],
  [AT_FSPECIAL_2, [1]],
  [AT_USPECIAL_2, [1]],
];

ai_attack_data = [];
attack_data_obtained = false;
lastOPos = noone;
estOPos = noone;
ai_pos_calc_steps = 4;

stagex = get_stage_data(SD_X_POS);
stage_width = get_stage_data(SD_WIDTH);
stagey = get_stage_data(SD_Y_POS);

chosenAttack = noone;

// close_down_attacks[0] = AT_DAIR;

far_side_attacks[0] = AT_FSPECIAL;
far_side_attacks[1] = AT_JAB;
// far_side_attacks[0] = AT_FSPECIAL;

// mid_side_attacks[0] = AT_FSTRONG;
// mid_side_attacks[0] = AT_DATTACK;
// mid_side_attacks[0] = AT_FSPECIAL;
// mid_side_attacks[3] = AT_FTILT;

close_up_attacks[2] = AT_NSPECIAL;
close_up_attacks[1] = AT_NAIR;
close_up_attacks[3] = AT_NAIR;
close_up_attacks[4] = AT_UTILT;
close_up_attacks[5] = AT_UAIR;
close_up_attacks[0] = AT_USTRONG;

close_down_attacks[0] = AT_DSTRONG;
close_down_attacks[2] = AT_DTILT;

close_side_attacks[0] = AT_FSTRONG;
close_side_attacks[1] = AT_FTILT;
close_side_attacks[2] = AT_DSTRONG;
// close_side_attacks[3] = AT_NSPECIAL;

// neutral_attacks[0] = AT_JAB;
// neutral_attacks[1] = AT_NAIR;
neutral_attacks[0] = AT_JAB;
neutral_attacks[1] = AT_FSPECIAL;