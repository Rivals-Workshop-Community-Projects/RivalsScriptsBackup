hurtbox_spr = sprite_get("ryk_hurtbox");
crouchbox_spr = sprite_get("ryk_crouchbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 58;
idle_anim_speed = .15;
crouch_anim_speed = .15;
walk_anim_speed = .15;
dash_anim_speed = .25;
pratfall_anim_speed = .25;

walk_speed = 3.0;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 5;
dash_speed = 5.75;
dash_turn_time = 15;
dash_turn_accel = 1;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .6;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 12;
short_hop_speed = 7.4;
djump_speed = 10.5;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .25;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 8;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .6;
hitstun_grav = .53;
knockback_adj = 0.95; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .1; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 6;
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
techroll_speed = 9;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 4;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 4;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_heavy");
landing_lag_sound = asset_get("sfx_land_med");
waveland_sound = asset_get("sfx_waveland_fors");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;
speedboost_timer = 0;

//Local variables
grabbedid = noone;
grab_timer = 0;
grab_time_max = 30;

dspecial_charge = 0;

smoked_fx = hit_fx_create(sprite_get("smoke_debuff"), 12)
smoked = false; //The smoked status effect
smoke_hit_cooldown = 0;
smoke_consumed = noone; //Smoke consumption
smoke_timer_max = 600; //10 seconds

max_fall_def = max_fall;
walk_speed_def = walk_speed;
dash_speed_def = dash_speed;
air_max_speed_def = air_max_speed;
smokeconsume_fx_bot = hit_fx_create(asset_get("fire_consume_top_spr"), 18)
smokeconsume_fx_top = hit_fx_create(asset_get("fire_consume_bot_spr"), 18)
rounds_left = 12;

set_victory_bg(sprite_get("victory_bg"));
set_victory_theme(sound_get("victory_theme"));

//Attacks with status effects
hbox_apply_smoke = [[AT_FSTRONG, 1], [AT_USTRONG, 1], [AT_DSTRONG, 1], [AT_EXTRA_1, 1], [AT_EXTRA_1, 2], [AT_EXTRA_1, 3], [AT_DSPECIAL, 1], [AT_DSPECIAL, 2]];
hbox_apply_smoke_consume = [[AT_UAIR, 3], [AT_FTHROW, 2], [AT_UTHROW, 2], [AT_FSPECIAL, 5], [AT_USPECIAL, 7]];
hbox_throws = [[AT_UAIR, 2], [AT_UAIR, 3], [AT_FTHROW, 1], [AT_FTHROW, 2], [AT_UTHROW, 1], [AT_UTHROW, 2],
[AT_FSPECIAL, 3],
[AT_FSPECIAL, 4],
[AT_FSPECIAL, 5],
[AT_FSPECIAL, 6],
[AT_USPECIAL, 6],
[AT_USPECIAL, 7]]; //These will only affect the player it can damage.

//COMPATIBILITY

//Mt. Dedede
arena_title = "The Smokescreen Powerhouse"
arena_short_name = "Rykenburn"

//Miiverse
miiverse_post = sprite_get("miiverse");
sprite_change_offset("miiverse", 60, 30);

//Soulbound Conflict
battle_text = "*Smoke clouds your vision...";

//Pokemon Stadium
pkmn_stadium_front_img = sprite_get("pokemon_front")
pkmn_stadium_back_img = sprite_get("pokemon_back")

//TCO
tcoart = sprite_get("rykenburntcoart");

//Dracula
dracula_portrait = sprite_get("dracula_portrait");
dracula_portrait2 = asset_get("empty_sprite");
var page = 0;
dracula_speaker[page] = 0;
dracula_text[page] = "Another animal from the Fire Captial?";
page++;
dracula_speaker[page] = 1;
dracula_text[page] = "Not just any animal, Dracula. You're face to face with the great Rykenburn!";
page++;
dracula_speaker[page] = 1;
dracula_text[page] = "Loxodont's orders say that I have to take you out of this world...";
page++;
dracula_speaker[page] = 1;
dracula_text[page] = "...and back to the depths of Hell!";
page++;
dracula_speaker[page] = 0;
dracula_text[page] = "You Fire Capitol freaks are more annoying than I thought.[glass] Prepare to die, bull!";
page++;
dracula_speaker[page] = 1;
dracula_text[page] = "Bull?! [shake]I'M A BUFFALO!!";
page++;
dracula_speaker[page] = 1;
dracula_text[page] = "IT'S ON NOW, SUCKER!";
page++;

//Daroach
daroach_portrait = sprite_get("dracula_portrait");
daroach_portrait2 = asset_get("empty_sprite")
daroach_portrait3 = asset_get("empty_sprite")
var page = 0;
daroach_speaker[page] = 0;
daroach_text[page] = "Those flames... you must be from the Fire Capitol.";
page++;
daroach_speaker[page] = 1;
daroach_text[page] = "That's right, you mouse. Our army is the best in Aether!";
page++;
daroach_speaker[page] = 0;
daroach_text[page] = "Your army will be no match for my Squeak Squad! You're clearly outmatched!";
page++;
daroach_speaker[page] = 1;
daroach_text[page] = "Ha! Do you think a bunch of rodents are going to outclass us?";
page++;
daroach_speaker[page] = 1;
daroach_text[page] = "We eat suckers like you for breakfast!";
page++;
daroach_speaker[page] = 0;
daroach_text[page] = "You're a persistent one, arent you?[laugh] Once I'm done with you, your city's riches will be mine!";
page++;