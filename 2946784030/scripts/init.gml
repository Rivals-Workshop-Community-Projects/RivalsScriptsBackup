hurtbox_spr = sprite_get("wario_hurtbox");
crouchbox_spr = sprite_get("wario_crouch_hurtbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 60;
idle_anim_speed = .2;
crouch_anim_speed = .1;
walk_anim_speed = .2;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

wait_sprite = sprite_get("wait");
wait_idle_pick = 0;
wait_time = 528;
wait_length = 72;

walk_speed = 2.75;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 9;
initial_dash_speed = 6;
dash_speed = 6;
dash_turn_time = 16;
dash_turn_accel = 1.3;
dash_stop_time = 6;
dash_stop_percent = .5; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 7.5;
djump_speed = 10.5;
leave_ground_max = 8 //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .55;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .04;

max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;

max_fall = 9; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .55;
hitstun_grav = .5;
knockback_adj = 0.95; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 16;
wave_land_time = 8;
wave_land_adj = 1.05; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .08; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 4;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 6;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 9;
roll_forward_recovery_frames = 2;

roll_back_startup_frames = 1;
roll_back_active_frames = 5;
roll_back_recovery_frames = 2;

roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = sound_get("SFX_Jump_1");
djump_sound = sound_get("SFX_Jump_2");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//Wario-Specific

wario_anticheat = false;
wario_anticheat_timer = 0;

set_victory_theme(sound_get("SFX_Victory_Theme"));
set_victory_bg(sprite_get("wario_victory_bg"));

grabbed_player_obj = noone;
wario_grab_timer = 0;

small_sprites = true;
wario_voiced = true;

stick_horizontal = 0;

wallop_loops = 0;

wario_fstrong_player_obj = noone;

//This defines the bike as a proper article
bike = noone;

in_bike_range = false;

can_bike = true;
bike_destroy_cooldown = 0;

init_bike_health = 40;
bike_health = init_bike_health;

has_rock = false;
grabbed_bike = false;

galaxy_timer = 0;
galaxy_sound = 0;

wariobike_throttle = 0;
wariobike_hud = sprite_get("wariobike_hud");
wariobike_turn_time = 0;

dspecial_shockwave = hit_fx_create( sprite_get("dspecial_kablooey"), 24);

//Voice Line Stuff
jab_voice = 0;

jab_1_voice = sound_get("VFX_Jab1_1");
jab_2_voice = sound_get("VFX_Jab2_1");
jab_3_voice = sound_get("VFX_Jab3_1");

fspecial_sound = sound_get("VFX_FSpecial_Start");

//Command Grab Stuff
grabbed_player_obj = noone;    //the player object currently being grabbed.
grabbed_player_relative_x = 0; //the relative x and y position of the grabbed player, at the point they were grabbed.
grabbed_player_relative_y = 0;   //we store this coordinate to smoothly reposition the grabbed player later.

//Attack Index Shenanigans

AT_DAIR_2 = 0;
AT_PICKUP = AT_USTRONG_2;

//Compatibility - Garlic Dispenser (NOT YET RELEASED)
waft_sprite = sprite_get("waft_buddy");
waft_hurtbox_sprite = sprite_get("waft_buddy_hurt");
gas_sprite = sprite_get("waft_buddy_gas");
gas_big_sprite = sprite_get("waft_buddy_gasbig");
waft_compatible = true;


///Fighter Compatibility

//Compatibility - Wall-E
walle_taunt_sound = sound_get("SFX_Wally_Recorder")
walle_taunt_type = 1;

//Compatibility - Unregistered HyperCam 2
uhc_victory_quote = "Hab a rotten day!!! XDDD";
uhc_taunt_videos[0] = { title:"Living With Wario - Episode 2", sprite:sprite_get("wario_uhc_video"), song:sound_get("SFX_UHC_Video"), fps:9 }; 

//Compatibility - Steve
steve_death_message = "Wario showed Steve fun.";

//Compatibility - Amber
plushForAmber = sprite_get("wario_plush");

//Compatibility - Bailey Rosworth
kinniku_behind = sprite_get("wario_baileyback");
kinniku_front = sprite_get("wario_baileyfront");

//Compatibility - Po & Gumbo
pot_compat_variable = sprite_get("wario_barlic_gread");
pot_compat_text = "Garlic Bread";

//Compatibility - Mamizou
if get_player_color(player) == 0{
    mamizou_transform_spr = sprite_get("wario_mamizou"); //Replace "X" with your sprite.
}
else if get_player_color(player) != 0{
    mamizou_transform_spr = sprite_get("wario_mamizou_alt"); //Replace "X" with your sprite.
}

//Compatibility - The Chosen One
tcoart = sprite_get("wario_tco");

//Compatibility - Palutena's Guidance
user_event(7);

//Compatibility - Feri
feri_costume = sprite_get("wario_feri");

//Compatibility - Kirby
TCG_Kirby_Copy = 10;

//Compatibility - Regina Mario
mario_cap_compat = sprite_get("wario_mario_compat");


///Stage Compatibility

//Compatibility - King Dedede's Arena
arena_title = ("The Diabolical Doppelganger");

//Compatibility - Pokemon Stadium
pkmn_stadium_front_img = sprite_get("wario_pokestadium_front");
pkmn_stadium_back_img = sprite_get("wario_pokestadium_back");
pkmn_stadium_name_override = "WARIO";

//Compatibility - The Trial Grounds
guiltySprite = sprite_get("wario_guilty");

//Compatibility - Miiverse
miiverse_post = sprite_get("wario_miiverse");

//Compatibility - GreenFlower Zone
gfzsignspr = sprite_get("wario_gfz_signpost");

//Compatibility - Last Resort
resort_portrait = sprite_get("wario_lastresort");

//Compatibility - Greenwood Town
greenwood_cheer = 2; //The guy likes cool characters

/*Compatibility - Flipnote Studio
fns_note1 = sprite_get("wario_flipnote");
fns_note_speed1 = 12/60;
fns_note_runtime1 = 120;
fns_note_sound1 = noone;
*/

//Stage Compatibility: Dracula Boss Fight
if get_player_color(player) == 0{
    dracula_portrait = sprite_get("wario_dracula_portrait1");
    dracula_portrait2 = sprite_get("wario_dracula_portrait2");
}
else if get_player_color(player) != 0{
    dracula_portrait = sprite_get("wario_dracula_portrait_alt1");
    dracula_portrait2 = sprite_get("wario_dracula_portrait_alt2");
}

var page = 0;

dracula_speaker[page] = 0;
dracula_text[page] = "What in the name-- You there! Who are you and how did you get here?!";
page++;

dracula_speaker[page] = 1;
dracula_text[page] = "I'm-a Wario, and I'm-a here for all the gold in this castle! So fork it over or else!";
page++;

dracula_speaker[page] = 0;
dracula_text[page] = "Do you even know who I am, foolish mortal?!";
page++;

dracula_speaker[page] = 2;
dracula_text[page] = "MORTAL?! Alllright, that's it! Get-a down here and put 'em up!";
page++;

dracula_speaker[page] = 0;
dracula_text[page] = "(Urgh... I can smell the stench of garlic from here...)";
page++;

dracula_speaker[page] = 0;
dracula_text[page] = "Fine, have it your way; Prepare for an eternity of suffering!";
page++;



///Buddy Compatibility

//Compatibility - Kirby Fighters Buddy
kf_hud_name = "Wario"
kf_custom_icon = sprite_get("wario_kf_icon");
kf_health_modify = 20;

//Compatibility - Assist Buddy
assistAttack = AT_FSTRONG; //The attack to use as the assist
assistOffsetX = -32; //The horizontal distance they spawn from the player
assistOffsetY = 0; //The vertical distance they spawn from the player
assistVelX = 0; //The horizontal velocity applied when the assist is called
assistVelY = 0; //The vertical velocity applied when the assist is called
assistGroundOnly = true; //Whether or not they are forced to the ground
assistFloat = false; //Whether or not they stay in place vertically
assistCool = 120; //The time it takes for the assist to recharge

//Compatibility - Final Smash

if get_player_color(player) == 0{
    fs_char_portrait_override = sprite_get("portrait");
}

fs_portrait_x = 80;
fs_char_portrait_y = 105;
fs_char_chosen_final_smash = "custom";
fs_char_attack_index = 49;

//Compatibility - Chaos Emeralds
super_form_active = false;
super_form_transform_sound = sound_get("VFX_FinalSmash_1");
//super_form_music = not decided yet :(

//Compatibility - Dialogue Buddy
diag_portrait = sprite_get("portrait"); // This will allow you to put any custom portrait onto the dialogue buddy!
//Adjust positioning of the portraits accordingly! Useful if the characters face is way too low
diag_portrait_x = 0; // +: Backwards -:Forwards
diag_portrait_y = 0; // +: Downwards -:Upwards


//After-Image Code
afterimage_array = 0;
var col_r = get_color_profile_slot_r( get_player_color(player), 0);
var col_g = get_color_profile_slot_g( get_player_color(player), 0);
var col_b = get_color_profile_slot_b( get_player_color(player), 0);

afterimage_colour = make_color_rgb(col_r, col_g, col_b);