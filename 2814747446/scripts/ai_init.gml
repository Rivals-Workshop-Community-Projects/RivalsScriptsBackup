is_ai = true;
ai_draw = ds_list_create();
ai_mode = "neutral"
ai_main_script = "main";
ai_current_script = ai_main_script;
ai_script_execution_frame = 0;
ai_script_timeout = 180;
ai_inputs = 0;
ai_prev_inputs = 0;
ai_prev_prev_inputs = 0;

solid_asset = asset_get("par_block");
platform_asset = asset_get("par_jumpthrough");

a3_sprite = sprite_get("dbg_draw_px");
a3_idx = 0;
a3_instances = ds_list_create();
for(var i = 0; i < 0; i++) {
  instance_create(0, 0, "obj_article3")
  // ds_list_add(a3_instances, instance_create(0, 0, "obj_article3"));
  // (a3_instances[| i]).visible = false;
}

// makes a single source of truth for the following variables
// this means that if one AI calculates something they can all share the info,
// saving significant time
position_estimation_arr = noone;
ai_fn_cache = noone;
with (oPlayer) {
  if (other.id == self.id) continue;
  variable_instance_set(other, `player_${self.player}`, self);
  if (variable_instance_exists(self, "position_estimation_arr")) { 
    variable_instance_set(other, `host_player`, self);
    (other).position_estimation_arr = (self).position_estimation_arr; 
    (other).drift_l_estimation_arr = (self).drift_l_estimation_arr;
    (other).drift_r_estimation_arr = (self).drift_r_estimation_arr;
    (other).ai_fn_cache = (self).ai_fn_cache; 
    (other).plat_bboxes = (self).plat_bboxes;
    (other).solid_bboxes = (self).solid_bboxes;
    (other).bboxes_obtained = (self).bboxes_obtained;
    break;
  }
}
if (position_estimation_arr == noone) {
  host_player = self;
  // print_debug(`est created in ${self.player}`);
  // var p1 = [array_create(31, [noone, noone, noone, noone]), -1];
  // var p2 = [array_create(31, [noone, noone, noone, noone]), -1];
  // var p3 = [array_create(31, [noone, noone, noone, noone]), -1];
  // var p4 = [array_create(31, [noone, noone, noone, noone]), -1];
  // position_estimation_arr = [p1, p2, p3, p4];

  // p1 = [array_create(31, [noone, noone, noone, noone]), -1];
  // p2 = [array_create(31, [noone, noone, noone, noone]), -1];
  // p3 = [array_create(31, [noone, noone, noone, noone]), -1];
  // p4 = [array_create(31, [noone, noone, noone, noone]), -1];
  // drift_l_estimation_arr = [p1, p2, p3, p4];

  // p1 = [array_create(31, [noone, noone, noone, noone]), -1];
  // p2 = [array_create(31, [noone, noone, noone, noone]), -1];
  // p3 = [array_create(31, [noone, noone, noone, noone]), -1];
  // p4 = [array_create(31, [noone, noone, noone, noone]), -1];
  // drift_r_estimation_arr = [p1, p2, p3, p4];

  ai_fn_cache = ds_map_create();

  // plat_bboxes = [ds_list_create(), 0];
  // solid_bboxes = [ds_list_create(), 0];
  bboxes_obtained = false;
}


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

ai_attacks = [
  [AT_DAIR, [1]],
  [AT_BAIR, [1]],
  [AT_DATTACK, [1, 2]],
  [AT_UAIR, [1]],
  [AT_FAIR, [1, 2, 3]],
  [AT_NAIR, [1]],
  [AT_NSPECIAL, [1]],
  [AT_NSPECIAL_AIR, [1, 2, 3]],
  [AT_UTILT, [1, 2, 3]],
  [AT_FTILT, [1, 2]],
  [AT_DTILT, [1]],
  [AT_JAB, [1]], 
  [AT_FSTRONG, [1]],
  [AT_DSTRONG, [1, 3]],
  [AT_USTRONG, [1, 2, 3, 4]],
  [AT_USPECIAL, [1, 2]],
  [AT_FSPECIAL, [1]]
];

ai_attack_data = [];
attack_data_obtained = false;
lastOPos = noone;
estOPos = noone;
ai_pos_calc_steps = 4;

stagex = get_stage_data(SD_X_POS);
stagey = get_stage_data(SD_Y_POS);

chosenAttack = noone;

// close_down_attacks[0] = AT_DAIR;

far_side_attacks[0] = AT_DSPECIAL;
far_side_attacks[0] = AT_NSPECIAL;

mid_side_attacks[0] = AT_NSPECIAL;
// mid_side_attacks[0] = AT_DATTACK;
mid_side_attacks[1] = AT_DSPECIAL;
// mid_side_attacks[3] = AT_FTILT;

// close_up_attacks[0] = AT_USTRONG;
// close_up_attacks[1] = AT_UAIR;
// close_up_attacks[2] = AT_UTILT;

// close_down_attacks[0] = AT_DSTRONG;
// close_down_attacks[1] = AT_DAIR;
// close_down_attacks[2] = AT_DTILT;

close_side_attacks[0] = AT_FSPECIAL;
// close_side_attacks[0] = AT_DATTACK;
// close_side_attacks[2] = AT_FTILT;
// close_side_attacks[3] = AT_NSPECIAL;

// neutral_attacks[0] = AT_JAB;
// neutral_attacks[1] = AT_NAIR;
neutral_attacks[0] = AT_DSPECIAL;
// neutral_attacks[1] = AT_NSPECIAL;