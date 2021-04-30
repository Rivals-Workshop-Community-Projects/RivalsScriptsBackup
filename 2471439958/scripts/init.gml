hurtbox_spr = sprite_get("hurtbox");

caleb = 0;

fire = 1;
ice = 0;
thunder = 0;
pistols = 0;
ice_cont = 0;
ice_hit = false;
ice_active = false;
ice_active_cont = 0;
spritetemp = 0;

crouchbox_spr = sprite_get("crouch_hurt");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 62;
idle_anim_speed = .172;
crouch_anim_speed = .1;
walk_anim_speed = .150;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.75;
walk_accel = 0.3;
walk_turn_time = 12;
initial_dash_time = 8;
initial_dash_speed = 9;
dash_speed = 7.8;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;


jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 7;
djump_speed = 10;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .35;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .03;
max_djumps = 1;
double_jump_time = 28; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 9;
walljump_time = 15;
max_fall = 9; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .55;
hitstun_grav = .5;
knockback_adj = 1.2; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 6; //normal landing frames
prat_land_time = 3;
wave_land_time = 8;
wave_land_adj = 1.4; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .06; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 5;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 3;
dodge_active_frames = 3;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 3;
techroll_recovery_frames = 1;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.8;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 2;

roll_back_startup_frames = 1;
roll_back_active_frames = 2;
roll_back_recovery_frames = 2;

roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//Variables
pitchthrow = noone;
pitchthrow_aft = hit_fx_create( sprite_get( "pitchthrow_afterimg" ), 15 );
element_change = 0;

//Grab
grabbed_player_obj = noone;    //the player object currently being grabbed.
grabbed_player_relative_x = 0; //the relative x and y position of the grabbed player, at the point they were grabbed.
grabbed_player_relative_y = 0;   //we store this coordinate to smoothly reposition the grabbed player later.

//Effects
explosion_effect = hit_fx_create( sprite_get( "explosion" ), 25 );
blood_effect = hit_fx_create( sprite_get( "vfx_bloodhit1" ), 28 );
switcher = hit_fx_create( sprite_get( "switcher" ), 12 );
// USpec meter
uspec_max = 100; // number of frames you can use uspec
uspec_meter = uspec_max;

//Victory Theme
set_victory_theme(sound_get("victory_theme"));

//SUPPORT ZONE

// Hikaru Support
Hikaru_Title = "Mischievous Spectre";
// TCO Support
tcoart = sprite_get("TCO_Jaunted");
// Miiverse Support
miiverse_post = sprite_get("miiverse");
// Otto
otto_bobblehead_sprite = sprite_get("hudbobblehead");
otto_bobblehead_body_sprite = sprite_get("hudbobblebody");
// Toon Link Picture
toonlink_photo = sprite_get("pictophotojaunted");
toonlink_photo2 = sprite_get("pictophotoTL");
// DDD
arena_title = "The Undead Gunslinger";
//Dracula support
dracula_portrait = sprite_get("jaunted_dracportrait1");
dracula_portrait2 = asset_get("empty_sprite");
var page = 0;

//Page 0
dracula_speaker[page] = 1;
dracula_text[page] = "so, you are the ruler of this place huh?";
page++;

//Page 1
dracula_speaker[page] = 0;
dracula_text[page] = "Who do you think you are to sneak into MY castle and kill my servants?";
page++;

//Page 2
dracula_speaker[page] = 1;
dracula_text[page] = "well... let's just say that I was into a little bloodbath of cultists and they leaded me into this place of yours";
page++;

//Page 3
dracula_speaker[page] = 1;
dracula_text[page] = "but anyways, Im here to take down this castle";
page++;

//Page 4
dracula_speaker[page] = 0;
dracula_text[page] = "How dare you to talk me like that? little insolents like you have no place in this castle";
page++;

//Page 5
dracula_speaker[page] = 1;
dracula_text[page] = "c'mon old man, what are you gonna do? kill me? Im already dead anyways";
page++;

//Page 6
dracula_speaker[page] = 1;
dracula_text[page] = "its not like someone of your age could even move without a staff anyways";
page++;

//Page 7
dracula_speaker[page] = 0;
dracula_text[page] = "ENOUGH";
page++;

//Page 8
dracula_speaker[page] = 0;
dracula_text[page] = "I'll make sure to cease your existance once for all";
page++;

//Page 9
dracula_speaker[page] = 1;
dracula_text[page] = "pff, try to catch me if you can granpa [taunt]";
page++;

//Page 10
dracula_speaker[page] = 1;
dracula_text[page] = "It's showtime";
page++;
