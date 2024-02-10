hurtbox_spr = sprite_get("idle_hurtbox");
crouchbox_spr = sprite_get("crouch_hurtbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 74;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .2;
dash_anim_speed = .14;
pratfall_anim_speed = .25;
wallcrawl_anim_speed = .23;
wallcrawl_image_index = 0;

walk_speed = 2.5;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 4.5;
dash_speed = 4.5;
dash_turn_time = 20;
dash_turn_accel = 0.5;
dash_stop_time = 6;
dash_stop_percent = .25; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .4;
moonwalk_accel = 1.3;

jump_start_time = 5;
jump_speed = 12;
short_hop_speed = 7.4;
djump_speed = 12;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = 1.1; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 36; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 9;
walljump_time = 32;
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 16; //fast fall speed
gravity_speed = .60;
hitstun_grav = .53;
knockback_adj = .9; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 6; //normal landing frames
prat_land_time = 17;
wave_land_time = 8;
wave_land_adj = 1.2; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = 0.15; //grounded deceleration when wavelanding

// can_wall_cling = true;
do_cling = false;

//crouch animation frames
crouch_startup_frames = 3;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 5;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_eta");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");
victory_theme = set_victory_theme(sound_get("Gentle Giant"))

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

airdodge_bubble = sprite_get("airdodge_bubble");
G9_taunt_fx_spr = sprite_get("G9_taunt_fx");
G9_lightning_taunt_fx_spr = sprite_get("G9_lightning_taunt_fx");
lightningfx_uspecial_spr = sprite_get("lightningfx_uspecial");
lightningfx_uspecial = hit_fx_create(lightningfx_uspecial_spr, 20);

lowest_fps = 99999999999999;
saved_id = noone;
payload = false;
orig_room_speed = room_speed


//Custom var

//Command grab template
grabbed_player_obj = noone;    //the player object currently being grabbed.
grabbed_player_relative_x = 0; //the relative x and y position of the grabbed player, at the point they were grabbed.
grabbed_player_relative_y = 0;   //we store this coordinate to smoothly reposition the grabbed player later.

//uspecial
max_uspecial_speed = 12
fly_dir = 0;
fly_dist = 0;
nspecial_water_explosion_spr = sprite_get("nspecial_water_explosion");
nspecial_water_explosion_hfx = hit_fx_create(nspecial_water_explosion_spr, 75)
moved_up = false
cancel_cooldown = 0

//dstrong

dstrong_static_overlay = sprite_get("dstrong_static_overlay");
orb_dissipate_spr = sprite_get("dstrong_proj_nh");
orb_spawn_spr = sprite_get("orb_spawn");
orb_loop_spr = sprite_get("orb_loop");
orb_loop_out_spr = sprite_get("orb_loop_out");
orb_lifetime_checker = noone;
right_bubble = noone;
left_bubble = noone;

ball_idc_lup = [[1,2,3],
                [0,0,4],
                [7,6,5]]
ball_offscreen_spr = sprite_get("ball_offscreen")

game_time = 0;

//Static
static = 0// goes from 0 to 100
static_cooldown = 0;
static_transfer_cooldown = 0;
old_static = 0;
permanent_static = false;
static_pull = 0;
static_max_spr = sprite_get("electric_effect")
static_bar_spr = sprite_get("static_bar")
static_max_pull_spr = sprite_get("electric_effect_pull")
grab_static_pull_spr = sprite_get("nspecial_magnet")
magnetism_trail_spr = sprite_get("magnetism_layered_trail")
consume = true

stage_center = get_stage_data(SD_X_POS) + get_stage_data(SD_WIDTH)/2
stage_left = get_stage_data(SD_X_POS)
stage_right = get_stage_data(SD_X_POS) + get_stage_data(SD_WIDTH)
distance_from_ledge = 0

jet_spr = sprite_get("jet");
jet_sprite_index = jet_spr
jet_fstrong_spr = sprite_get("jet_fstrong");
jet_discharge_spr = sprite_get("jet_discharge");
jet_static_overlay_spr = sprite_get("jet_static_overlay");
jet_x = 0;
jet_y = 0;
jet_show_charge = false;
jet_img_idx_charge = 0;
jet_anim_speed = 0.5;
jet_ball_timer = 0
jet_ball_time = 15

bar_alpha = 0;
drain_timer = 0;

magnet_timer = 0;
static_flash = 0;

reflector = noone; //Fstrong
reflect_id = noone; //Fstrong
reflected_spr = sprite_get("fstrong_lightning"); //Fstrong
times_reflected = 0;
can_counter = false

solids = asset_get("par_block");
plats = asset_get("par_jumpthrough");

//Wallcrawl
walljump_charge = -1;
walljump_charge_length = 15;
can_let_go_jump = false;
can_cling = false;
stored_window_timer = 0;
has_walljump_old = false
// do_pratfall = false;

have_armor = true;
no_tilt = false;

_old_hsp = 0;

//dspecial
falling_hbox = noone;
hit_wave = false;
hurt_img_i = 0
wave_summoned = false;
wave_spr = sprite_get("wave");
wave_fx = hit_fx_create(wave_spr, 15);
electric_wave_spr = sprite_get("electric_wave");
electric_wave_fx = hit_fx_create(electric_wave_spr, 15);
dspecial_initial_speed = 0;
flash_fx = hit_fx_create(sprite_get("flash"), 8);
dspecial_bubble_spr = sprite_get("dspecial_bubble");
dspecial_bubble_fx_spr = sprite_get("dspecial_bubble_fx");
dspecial_bubble_fail_fx_spr = sprite_get("dspecial_bubble_fail_fx");

//fspecial
follow_wave = noone;

//nspecial
nspecial_water_throw_whiff_spr = sprite_get("nspecial_water_throw_whiff");
nspecial_water_geyser_spr = sprite_get("nspecial_water_geyser");
nspecial_water_hoop_spr = sprite_get("nspecial_water_hoop");
nspecial_water_ball_overlay_spr = sprite_get("nspecial_water_ball_overlay");
nspecial_water_miss_ground_hitfx_spr = sprite_get("nspecial_water_miss_ground_hitfx");
nspecial_water_miss_ground_hitfx_hfx = hit_fx_create(nspecial_water_miss_ground_hitfx_spr, 40);
nspecial_water_geyser_hfx = hit_fx_create(nspecial_water_geyser_spr, 20);
nspecial_water_hoop_hfx = hit_fx_create(nspecial_water_hoop_spr, 30);
spark_hfx = hit_fx_create(sprite_get("sparkfx"), 20);

indicador_x = 0;
indicador_y = 0;
starting_x = 0;
starting_y = 0;
relative_dest_x = 0;
relative_dest_y = 0;
count = 0;
x2 = 0;
pulling = false;
pull_dir_x = 0;
pull_dir_y = 0;
pull_strength = 0;
geyser_dfx = noone;
hoop_dfx = noone;

//bair
wat_spr = sprite_get("wat");
wat_dust = noone;
wat_follow = noone;

// alt_mod = get_synced_var(player)

lightning_hbox = noone;
lightning_hbox_width = 400;
lightning_spr = sprite_get("lightning");

//uspecial
vel_lock = false;
_old_hsp = 0;

//Music
midi = "";
offset = 0;
music_notes = 0;
note_number = 0;
start_time = 0;
length = 0;
velocity = 0;
music_time = -1;
music_notes_num = 0;
music_head = 0;
violao = sound_get("violao");
eee = sound_get("EEE3");
mark_to_cancel = false;
// user_event(1);

modifier = get_synced_var(player)
// print(modifier)
alt_with_mods = [5, 10, 15, 19, 20, 27, 30]
col = get_player_color(player)
alt_update_index = col
user_event(4)
alt_with_mods = 0
hue_speed = 1;
hue_offset = 0;

//AI stuff
showing_thoughts = false;
is_ai = false;
opponent_in_static = false;
n_times_got_hit = 0;

display = true