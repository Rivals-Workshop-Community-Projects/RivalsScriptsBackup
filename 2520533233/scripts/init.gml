// Hinanawi Tenshi
// Custom Init -----------------------------------------------------------------

//hit_fx
fspec_ground = hit_fx_create(sprite_get("fspecial_groundfx"), 15);
fspec_dash = hit_fx_create(sprite_get("fspecial_dashfx"), 15);

//dragon install stuff
lightweight = false;
dragon_install = false;
install_theme = 0;
install_time = 0;
end_dragon_install = false;
play_theme = false;
install_armor = 5;
fspecial_jump_cancel = false;
set_hit_particle_sprite(1, sprite_get("hfx_part_fire"));
set_hit_particle_sprite(2, sprite_get("hfx_part_fire2"));

hisou_small = hit_fx_create(sprite_get("fire_norm"), 27);
hisou_large = hit_fx_create(sprite_get("fire_big"), 24);
hisou_dir = hit_fx_create(sprite_get("fire_dir"), 27);

skin_alt = 0;

install_trail_size = 8;
for(var i = 0; i < install_trail_size; i++){
    install_trail[i] = 
    {x:x, y:y, sprite_index:sprite_index, image_index:0, color:c_white, spr_dir:spr_dir, life:0};
}
install_part_size = 8;
for(var i = 0; i < install_part_size; i++){
    install_part[i] = 
    {x:x, y:y, sprite_index:sprite_get("install_part"), image_index:0, color:c_white, life:0};
}

//strong attack stuff
charge_level = 0;

//enable small sprites
small_sprites = 1;

//color shifting
hue_offset = 0;
hue_spd = 4;
rainbow_rgb = [0, 0, 0];
rainbow_color = c_white;
rainbow_color2 = c_white;
rainbow_dark = c_white;
rainbow_dark2 = c_white;
rainbow_color_slow = c_white;
rainbow_color_ULTRADARK = c_white;

//possible meter idea
tenshi_magic = 0;
old_tenshi_magic = 0;
tenshi_magic_max = 2400;
can_vo = 0;
hotbar_color = make_colour_hsv(0, 212, 208);

//objects
tenshi_grazebox = noone;
tenshi_uspecial_rock = noone;
can_rock = true;
can_move_rock = true;
rock_lockout = 0;
rock_proj = noone;

//custom vars
tenshi_graze = false;
tenshi_graze_outline_timer = 0;
tenshi_fsp_charge = 0;
teleport_target = noone;

//inputs
di_input = 0;
di_input_buffer = 0;
start_dir[0] = 0;
start_dir[1] = 0;
true_input = false;
true_input2 = false;

//counter
counter_target = noone;

// Rivals Default Init----------------------------------------------------------
hurtbox_spr = sprite_get("hurtbox");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = sprite_get("hurtbox_hitstunt");

char_height = 52;
idle_anim_speed = .2;
crouch_anim_speed = .1;
walk_anim_speed = .2;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 4;
walk_accel = 0.3;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 6.25;
dash_speed = 5.75;
dash_turn_time = 12;
dash_turn_accel = 1.5;
dash_stop_time = 6;
dash_stop_percent = .4; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 12;
short_hop_speed = 7.2;
djump_speed = 11;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .25;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .03;
max_djumps = 1;
double_jump_time = 31; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .55;
hitstun_grav = .5;
knockback_adj = .99; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 20;
wave_land_time = 11;
wave_land_adj = 1.1; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .03; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 4;
air_dodge_recovery_frames = 3;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 4;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = sound_get("land");
landing_lag_sound = sound_get("land");
waveland_sound = sound_get("waveland");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");
set_victory_theme(sound_get("TenshiVictory"));

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;


//DRAGON INSTALL STATS ---------------------------------------------------------
//install stats
install_dash_speed = 8.5;
install_initial_dash_speed = 8.5;
install_fast_fall = 18;
install_moonwalk_accel = 10;
install_max_djumps = 2;
install_wave_land_adj = 1.4; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
install_wave_friction = .02;
install_air_max_speed = 6;
install_max_jump_hsp = 7;
install_leave_ground_max = 9;

//base stats
base_initial_dash_speed = initial_dash_speed;
base_dash_speed = dash_speed;
base_moonwalk_accel = moonwalk_accel;
base_max_djumps = max_djumps;
base_fast_fall = fast_fall;
base_wave_land_adj = wave_land_adj;
base_wave_friction = wave_friction;
base_air_accel = air_accel;
base_air_friction = air_friction;
base_max_jump_hsp = max_jump_hsp;
base_air_max_speed = air_max_speed;
base_knockback_adj = knockback_adj;
base_leave_ground_max = leave_ground_max;

spr_extra = sprite_get("extra");

// -----------------------------------------------------------------------------
// --------- MOD SUPPORT GOES HERE ---------------------------------------------
// -----------------------------------------------------------------------------

// Pokemon Stadium Support
pkmn_stadium_front_img = sprite_get("pokemon_sprite_front");
pkmn_stadium_back_img = sprite_get("pokemon_sprite_back");
pkmn_stadium_name_override = "Tenshi";

// Mt. DeDeDe Support
arena_title = "Mistress of Bhavaagra";
arena_short_name = "Tenshi";

// Agent N Support
ncode1 = "Subject identified as not of this world.";
ncode2 = "Seemingly indestructable.";
ncode3 = "Watch out for falling rocks.";

// Steve Support
steve_death_message = "Steve didn't dodge."

if(get_player_color(player) == 29){
		set_color_profile_slot( 29, 0, 173, 255, 242 ); //Hat
		set_color_profile_slot( 29, 1, 161, 98, 64 ); //Clothes
		set_color_profile_slot( 29, 2, 214, 255, 237 ); //Skirt
		set_color_profile_slot( 29, 3, 212, 228, 255 ); //Bow Front
		set_color_profile_slot( 29, 4, 46, 128, 153 ); //Hair
		set_color_profile_slot( 29, 5, 161, 215, 255 ); //Eyes
		set_color_profile_slot( 29, 6, 157, 250, 242 ); //Detailing
		set_color_profile_slot( 29, 7, 0, 255, 0 ); //Rainbow
}


//Muno Phone -------------------------------------------------------------------
user_event(14);