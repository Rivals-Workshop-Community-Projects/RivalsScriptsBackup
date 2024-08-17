//check if otestplayer
is_test_player = (object_index == asset_get("oTestPlayer"));
//check if solo/co-op player
is_solo_player = is_test_player || (get_player_color(player) >= 30) //get_synced_var() > 0;
//establish a unique variable name to pair up solo characters
this_character_is_plusle_and_minun = 1;


if (!custom_clone) {
    is_master_player = true;
    initialize_unit_players = false;
    unit_player_id_array[0] = noone;
    unit_player_id_array[1] = noone;
    unit_current_leader_index = noone;
    
    //hide this player's buddy
    if (instance_exists(pet_obj)) {
        with (pet_obj) { visible = false; }
    }
    
    //'hh_charge_level' is shared between both characters.
    hh_charge_level = 0;
    hh_charge_percent = 0;
    hh_charge_expiry_timer = 0;
    
    //article that draws dspecial charge zones
    article_charge_zone = instance_create(x, y, "obj_article3");
    
    //variable that keeps track of the special button being held
    special_held = 0;
    special_held_counter = 0;
    
    //variable that keeps track of the current unit which the master player object is following
    mimic_clone_id = 0;
    update_mimic_counter = 0;
    
    //set constants in user_event0.gml.
    user_event(0);
    
    //the master player doesn't need a hurtbox.
    hurtbox_spr = asset_get("empty_sprite");
    
    //get the blastzone coords so the master player never moves outside of them.
    blastzone_l = get_stage_data(SD_X_POS) - get_stage_data(SD_SIDE_BLASTZONE) + 2;
    blastzone_r = room_width - get_stage_data(SD_X_POS) + get_stage_data(SD_SIDE_BLASTZONE) - 2;
    blastzone_t = get_stage_data(SD_Y_POS) - get_stage_data(SD_TOP_BLASTZONE) + 2;
    blastzone_b = get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE) - 2;
    
    move_cooldown[AT_DSPECIAL] = 2;
    
    master_player_id = id;
    //print("master player id = " + string(master_player_id));
    
    if (!is_test_player && !is_solo_player) exit;
    
}
is_master_player = false;

//determine if this instance is plusle or minun - grab variable from the master player instance, as defined in user_event3.gml
//0 = plusle, 1 = minun
//for the test player, just load plusle.
if (is_test_player) species_id = 0;
else if (is_solo_player) species_id = (get_player_color(player) == 31); //clamp(get_synced_var() - 1, 0, 1);
else species_id = clones_player_id.created_instance_index;

//hide any buddies from this unit if they are not plusle.
if (species_id != 0 && !is_solo_player && instance_exists(pet_obj)) {
    with (pet_obj) { visible = false; }
}

//set constants in user_event0.gml.
user_event(0);

//set stats in user_event1.gml.
user_event(1);

//set sprites, sounds, vfx and other assets in user_event2.gml.
user_event(2);

//if this unit is minun, initialize minun sprite arrays and lists in user_event6.gml.
if (species_id == 1) user_event(6);

//shift starting position.
if (!is_solo_player) {
    spr_dir = clones_player_id.spr_dir;
    x += spr_dir * (1 - species_id * 2) * 21;
}

//below are variables which don't need to be edited.


// leader / teammate / species variables
if (!is_test_player && !is_solo_player) master_player_id = clones_player_id;
teammate_player_id = noone;
damage_percent_as_teammate = 0;
has_been_knocked_out = 0;
has_been_buffed_by_helping_hand = 0;
skip_strong_charge = 0;


//hit/parry syncing variables
last_attack_hit = noone; //equals the last attack that THIS player connected.
leading_teammate_landed_hit_trigger = 0; //counts down when the leader connects an attack.
leading_teammate_got_parried_trigger = 0; //counts down when the leader gets parried, so that the teammate suffers parry penalties with the same buffer delay.

artificial_dash = false;

left_stick_counter = 10;
right_stick_counter = 10;
up_stick_counter = 10;
down_stick_counter = 10;

// general moveset variables
baton_article_id = noone;
nspecial_can_use_baton = true;
nspecial_buffer_into_dspecial = false;
trigger_leader_swap = 0;
dir_correct = 0; //corrects fstrong when neutral strong button is pressed. referenced in set_player and animation.gml. don't know what's breaking it in the first place.
jab2_input_was_buffered = false; //equals true when a repeat jab2 is buffered. used in attack_update.gml.

uspecial_angle = 0;
uspecial_used_angle = noone;
uspecial_use_second_part = false;
uspecial_homing_x = x;
uspecial_homing_y = y;

//shield/wavedash buffer fix
manual_input_wavedash = 0;
shield_down_prev = 0;
free_prev = 0;

//dspecial crouch armor
dspecial_record_window = 0;
dspecial_record_window_timer = 0;
dspecial_fake_hitstun = 0;

//aesthetic variables
visual_hud_icon_hurt = 0; 
visual_hud_icon_offset_x = 0;

visual_hh_buff_x = 1;
visual_hh_buff_y = 1;
visual_hh_powerup_counter = 0;
visual_hh_buff_counter = 0;
visual_batonpass_counter = 7;

visual_low_quality = get_local_setting(SET_FX_QUALITY) <= 1; //save every frame possible on pcs that can't handle it

// partner input buffer variables
partner_efficient_sync = false;
buffer_counter = 0;


var i = 0;
repeat (partner_input_buffer_delay) {

    buffer_ai_inputs[i] = 0;
    
    buffer_joy_dir[i] = joy_dir; 
    buffer_joy_pad_idle[i] = joy_pad_idle;
    
    buffer_x_position[i] = x;
    buffer_y_position[i] = y;
    
    buffer_sync_state[i] = state;
    
    i++;
}



//==========



//ai_init code

far_down_attacks[0] = AT_DAIR;

far_side_attacks[0] = AT_NSPECIAL;
far_side_attacks[1] = AT_FSPECIAL;

mid_side_attacks[0] = AT_FSTRONG;
mid_side_attacks[1] = AT_DATTACK;
mid_side_attacks[2] = AT_FSPECIAL;
mid_side_attacks[3] = AT_FTILT;

close_up_attacks[0] = AT_USTRONG;
close_up_attacks[1] = AT_UAIR;
close_up_attacks[2] = AT_UTILT;

close_down_attacks[0] = AT_DSTRONG;
close_down_attacks[1] = AT_DAIR;
close_down_attacks[2] = AT_DTILT;

close_side_attacks[0] = AT_FSTRONG;
close_side_attacks[1] = AT_FAIR;
close_side_attacks[2] = AT_FTILT;

neutral_attacks[0] = AT_JAB;
neutral_attacks[1] = AT_NAIR;
neutral_attacks[2] = AT_DSPECIAL;

ai_airdodge_direction = 90;

ai_state = 0;
disable_ai = true;
sync = 1;
sync_distance = 200;
follow_distance = 40;
sync_next_predicted_state = state;





is_ai = true;
ai_inputs = 0;
ai_prev_inputs = 0;
ai_inputs_raw = 0;
ai_prev_inputs_raw = 0;

solid_asset = asset_get("par_block");
platform_asset = asset_get("par_jumpthrough");

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
    (other).last_platform_cache = (self).last_platform_cache;
    break;
  }
}
if (position_estimation_arr == noone) {
  host_player = self;
  //print_debug(`est created in ${self.player}`);
  var p1 = [array_create(31, [noone, noone, noone, noone]), -1];
  var p2 = [array_create(31, [noone, noone, noone, noone]), -1];
  var p3 = [array_create(31, [noone, noone, noone, noone]), -1];
  var p4 = [array_create(31, [noone, noone, noone, noone]), -1];
  position_estimation_arr = [p1, p2, p3, p4];

  p1 = [array_create(31, [noone, noone, noone, noone]), -1];
  p2 = [array_create(31, [noone, noone, noone, noone]), -1];
  p3 = [array_create(31, [noone, noone, noone, noone]), -1];
  p4 = [array_create(31, [noone, noone, noone, noone]), -1];
  drift_l_estimation_arr = [p1, p2, p3, p4];

  p1 = [array_create(31, [noone, noone, noone, noone]), -1];
  p2 = [array_create(31, [noone, noone, noone, noone]), -1];
  p3 = [array_create(31, [noone, noone, noone, noone]), -1];
  p4 = [array_create(31, [noone, noone, noone, noone]), -1];
  drift_r_estimation_arr = [p1, p2, p3, p4];

  ai_fn_cache = ds_map_create();

  plat_bboxes = [ds_list_create(), 0];
  solid_bboxes = [ds_list_create(), 0];
  last_platform_cache = array_create(4, [noone, noone, noone, noone]);
  bboxes_obtained = false;
}

//print_debug(`pnum: ${player}`);

short_hop_height = noone;
short_hop_vert_time = noone;
jump_height = noone;
jump_vert_time = noone;
djump_height = noone;
djump_vert_time = noone;
jump_data_obtained = false;

ct = 0;
profiler = array_create(10, 0);
profiler_idx = 0;

currAtk = 0;

far_down_attacks[0] = AT_DAIR;

far_side_attacks[0] = AT_NSPECIAL;
far_side_attacks[1] = AT_FSPECIAL;

mid_side_attacks[0] = AT_FSTRONG;
mid_side_attacks[1] = AT_DATTACK;
mid_side_attacks[2] = AT_FSPECIAL;
mid_side_attacks[3] = AT_FTILT;

close_up_attacks[0] = AT_USTRONG;
close_up_attacks[1] = AT_UAIR;
close_up_attacks[2] = AT_UTILT;

close_down_attacks[0] = AT_DSTRONG;
close_down_attacks[1] = AT_DAIR;
close_down_attacks[2] = AT_DTILT;

close_side_attacks[0] = AT_FSTRONG;
close_side_attacks[1] = AT_FAIR;
close_side_attacks[2] = AT_FTILT;

neutral_attacks[0] = AT_JAB;
neutral_attacks[1] = AT_NAIR;
neutral_attacks[2] = AT_DSPECIAL;


#define determine_if_player_is_solo_player 
/*
if (!get_match_setting(SET_TEAMS) || instance_exists(teammate_player_id)) return false;
var this_player_team = get_player_team(player);
with (oPlayer) {

    if (id == other.id || get_player_team(player) != this_player_team || clone || custom_clone || url != other.url) continue;
    
    if (get_player_color(player) < 30 || ("is_solo_player" in self && is_solo_player == true)) {
        return true;
    }
}
*/
