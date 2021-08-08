//ai stuff
ai_active = true;
stage_object = undefined;
ai_task_timer = 0;
ai_task_counter = 0;
ai_task_perform = false;
ai_task_instructions = undefined;
ai_task_speed = 30;
moves_list = [];
turn_timer = 0;
best_move = undefined;

pawnEvalWhite = []
pawnEvalBlack = []
rookEvalWhite = []
rookEvalBlack = []
knightEval = []
bishopEvalWhite = []
bishopEvalBlack = []
kingEvalWhite = []
kingEvalBlack = []

board_state = array_create(8, array_create(8, ["", undefined])); //layers: x, y, [piece, player]
clone_array = []; //later will be cloned from archy's stage
legal_moves = [];
temp_turn_total = 0; //used for simulated moves since turn number isnt kept in array
simulated_paths = [];
search_depth = 2;
made_move = false;

//kirby
//kirbyability = 16;
//swallowed = 0;
//enemykirby = undefined;

//final smash buddy
fs_char_portrait_y = 90;
fs_char_chosen_final_smash = "custom";
fs_char_chosen_trigger = "custom";

//init

hitbox_view = false;
practice_mode = false;

proj_particle = hit_fx_create(sprite_get("proj_particle"), 24);

piece = "P"

swap_timer = 0;

timer = 0;

piece_id = undefined;

pawn_meter_default = 0;
pawn_meter = pawn_meter_default; //0 - 7
can_increment = true;
shake_timer = 0;
pawn_move_timer = 0;
laser_angle = 60;
rook_cannon = undefined; //[x, y, rotation, image_index]
missile_timer = 0;
range_dist = 0;
target_player = undefined;
missile_angle = 0;
draw_missile = false;
king_armour = false;
armour_timer = 0;
armour_cooldown = 0;
next_state = undefined;
queen_active = false;
queen_timer_max = 480;
queen_timer = 0;

used_fs = false;

hp_P = 1;
hp_N = 3;
hp_B = 3;
hp_R = 5;
hp_Q = 9;
hp_K = 4;

uspec_dir = 0;
prev_uspec_dir = 0;
uspec_afterimages = [[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]]; //[x,y,timer]
uspec_move_num = 0; //number of moves performed (used for knight)
input_dir = 0; //joy_dir 2: electric boogaloo

sfx_capture = sound_get("capture");
sfx_move = sound_get("move");

hurtbox_spr = sprite_get(piece + "hurtbox");
crouchbox_spr = sprite_get(piece + "crouchbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 40;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .1;
dash_anim_speed = .25;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 6.25;
dash_speed = 6;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = 0.35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 0.6;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 6;
djump_speed = 10;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 8; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = 0.35;
prat_fall_accel = 0.85; //multiplier of air_accel while in pratfall
air_friction = 0.04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 8;
walljump_time = 32;
wall_frames = 2;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = 0.5;
hitstun_grav = 0.45;
knockback_adj = 1.15; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 16;
wave_land_time = 7;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = 0.07; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 1;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 0;
air_dodge_active_frames = 1;
air_dodge_recovery_frames = 1;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 0;
roll_forward_active_frames = 1;
roll_forward_recovery_frames = 1;
roll_back_startup_frames = 0;
roll_back_active_frames = 1;
roll_back_recovery_frames = 0;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_kra");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//TRAILER STUFF, DELETE LATER
/*
trailer_mode = 1;
trailer_phase = 0;
trailer_frame = 0;
trailer_x = 0;
trailer_y = 0;
trailer_timer = 0;
trailer_dead = false;
*/
