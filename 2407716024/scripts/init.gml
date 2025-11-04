//Phone Junk

hurtbox_spr = sprite_get("peacock_hurtbox");
crouchbox_spr = sprite_get("peacock_crouch_hurtbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 74;
idle_anim_speed = .22;
crouch_anim_speed = .2;
walk_anim_speed = .3;
dash_anim_speed = .40;
pratfall_anim_speed = .25;

walk_speed = 2;
walk_accel = 0.2;
walk_turn_time = 8;
initial_dash_time = 8;
initial_dash_speed = 5;
dash_speed = 5.4;
dash_turn_time = 16;
dash_turn_accel = 1.2;
dash_stop_time = 4;
dash_stop_percent = .1; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .4;
moonwalk_accel = 1.5;

jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 5.5;
djump_speed = 10;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .75; //multiplier of air_accel while in pratfall
air_friction = .03;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 9;
walljump_time = 32;
max_fall = 12; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .50;
hitstun_grav = .45;
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 16;
wave_land_time = 8;
wave_land_adj = 1.1; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .01; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 5;
crouch_active_frames = 12;
crouch_recovery_frames = 4;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 3;
dodge_recovery_frames = 4;

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
air_dodge_active_frames = 10;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 5;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = sound_get("djump");
air_dodge_sound = asset_get("sfx_quick_dodge");

//hfx
bigboom = hit_fx_create(sprite_get("bigboom_hfx"), 50);
boom = hit_fx_create(sprite_get("boom_hfx"), 40);
bigpow = hit_fx_create(sprite_get("bigpow_hfx"), 40);
pow = hit_fx_create(sprite_get("pow_hfx"), 15);

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 0;


//peacock-specific
peacock_consecutive_cancelled_attacks = 0;

peacock_has_airdash = 1;
peacock_airdash_button_main_buffer = 0; // 6 or -6;
peacock_airdash_press_recorded = 0; //1, -1, 0
peacock_airdash_forward_dash_buffer = 0;
peacock_airdash_backward_dash_buffer = 0;
peacock_free_on_previous_frame = free;

peacock_coyote_timer = 0;

peacock_fspecial_shots = 3;

peacock_dattack_early_hit_connected = 0;

peacock_used_nair = 0;

peacock_article_doom_id = noone;

peacock_fx_fspecial_blast = hit_fx_create(sprite_get("fspecial_blast"), 12);
peacock_fx_fair_shot = hit_fx_create(sprite_get("fair_shot"), 24);
peacock_fx_airdash_puff = hit_fx_create(sprite_get("airdash_puff"), 16);
peacock_fx_fsmash_beam = hit_fx_create(sprite_get("fsmash_laser"), 16);
peacock_fx_fsmash_shot = hit_fx_create(sprite_get("fsmash_proj_shot"), 16);
peacock_fx_uspecial_hole = hit_fx_create(sprite_get("uspecial_hole"), 6);

last_sprite = noone;
last_sprite_ticks = 0;

//codec
ncode1 = "The Cartoon Elemental Anti-Skullgirl Unit crafted"
ncode2 = "from Lab 8 somewhere in New Meridian. She utilizes"
ncode3 = "a wide variety of projectiles and being obnoxius."

arena_title = "The Murder-Go-Round";

battle_text = "* Peacock and her gang blocks the path!";

gfzsignspr = sprite_get("gfz_pea");

steve_death_message = "Steve couldn't parry.";

Hikaru_Title = "Cartoon Elemental";

easter_egg_timer = 0;
easter_egg_set = false;
voice_activated = false;
cancelled_voice = true;
voiced_peacock = false;
peacock_player = self

//Kirb Support
enemykirby = undefined;
swallowed = undefined;
kirbyability = 16;
kirb_used = 0;

//Dracula support
dracula_portrait = sprite_get("peacock_portrait");
dracula_portrait2 = sprite_get("peacock_portrait2");
var page = 0;

//Page 0
dracula_speaker[page] = 2;
dracula_text[page] = "And then there were 2!";
page++;

//Page 1
dracula_speaker[page] = 0;
dracula_text[page] = "So the rumors were true. Those flesh-lings are experimenting on children. And people call me freakish.";
page++;

//Page 2
dracula_speaker[page] = 1;
dracula_text[page] = "Can it Grandpa! I've been itchin' for a battle all day, your stooges couldn't even get me outta their way!";
page++;

//Page 3
dracula_speaker[page] = 1;
dracula_text[page] = "Now, i'm gettin' reeeal tired. I'm missin' my stories and I need my beauty sleep!";
page++;

//Page 4
dracula_speaker[page] = 0;
dracula_text[page] = "Hmph! [glass]";
page++;

//Page 5
dracula_speaker[page] = 0;
dracula_text[page] = "Then let me insist on tucking you in for your final bedtime.";
page++;

//Page 6
dracula_speaker[page] = 2;
dracula_text[page] = "Good luck trying to shut this toon up!";
page++;

miiverse_post = sprite_get("miiverse_post_peacock");

got_hit_ticks = 0;
got_hit_num = 0;

//Final Smash
fs_char_portrait_y = 120;
fs_char_chosen_final_smash = "custom";
fs_char_chosen_trigger = "custom";
fs_chosen_final_smash = "custom";
fs_go_to_hud = false;
fs_force_fs = false;

time_frozen = false
time_freeze_ticks = 0

uspecial_free_start = false;
uspecial_ground_move_meter = 0;
uspecial_hold_version = false;
uspecial_x_start = 0;
uspecial_y_start = 0;

uair_borb = noone;

had_airdodge_pre_dash = false;

list_of_dots = ds_list_create();

last_hit = noone;

dash_toggle = get_synced_var(player);

char_half_width = noone;
char_width_set_timer = 0;

user_event(14); // General init <- CHUNGUS!