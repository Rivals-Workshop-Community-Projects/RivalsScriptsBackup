get_btt_data = false;
btt_music_playing = false;
btt = false;

hurtbox_spr = sprite_get("pap_hurtbox");
crouchbox_spr = sprite_get("pap_crouchbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 74;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .75;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 6.25;
dash_speed = 6;
dash_turn_time = 18;
dash_turn_accel = 0.5;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .35;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10.99;
short_hop_speed = 6;
djump_speed = 10;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .60; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 9;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .50;
hitstun_grav = .50;
knockback_adj = 0.95; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 10;
wave_land_time = 8;
wave_land_adj = 1.1; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .13; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 3;
crouch_active_frames = 1;
crouch_recovery_frames = 3;

//parry animation frames
dodge_startup_frames = 2;
dodge_active_frames = 1;
dodge_recovery_frames = 2;

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
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 1;
roll_back_startup_frames = 1;
roll_back_active_frames = 2;
roll_back_recovery_frames = 1;
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

bones = noone;
hit_counter = 0;
hit_timer = 0;
buffer_next_hit = false;
orb_out = false;
orb = noone;

swallowed = 0;
kirbyability = 16;

Hikaru_Title = "Standardly Skeleton";

//TCO Drawing
tcoart = sprite_get("papyrustcoart");;

taunt_timer = 0;

bone = noone;
bone_useable = true;
boneNA = false;

blue = false;
blue_time = 0;
can_blue = true;

introTimer = -4;
//setting it to -4 should prevent the first few frames of the animation from being blocked by the screen opening. If it's slightly off, feel free to mess with it.
introTimer2 = 0;

miiverse_post = sprite_get("post1");
sprite_change_offset("post1", 60, 30);

miiverse_post2 = sprite_get("post2");
sprite_change_offset("post2", 60, 30);

miiverse_post3 = sprite_get("post4");
sprite_change_offset("post4", 60, 30);

if (get_player_color( player ) == 1) {
    miiverse_post = sprite_get("post3");
    sprite_change_offset("post3", 60, 30);
}

feri_costume = sprite_get("feri");
//trummelcodecneeded = false;
//trummelcodec_id = noone;

dracula_portrait = sprite_get("dracportrait1alt");
dracula_portrait2 = sprite_get("dracportrait2alt"); //or asset_get("empty_sprite")
var page = 0;

//Page 0
dracula_speaker[page] = 0;
dracula_text[page] = "I never thought I'd see the day that I'd be staked in the back by one of my own skeletons...";
page++;

//Page 1
dracula_speaker[page] = 1;
dracula_text[page] = "YOUR SKELETONS?! HOW DARE YOU COMPARE ME TO ONE OF YOUR FOOLISH HENCHMEN, MR. DRACULA!";
page++;

//Page 1
dracula_speaker[page] = 0;
dracula_text[page] = "And just who are you to put a worthless bonehead like yourself above any of my other acquaintances? You must've made it here by sheer luck!";
page++;

//Page 1
dracula_speaker[page] = 2;
dracula_text[page] = "I, MR. DRACULA, AM NOT ONE OF THOSE SKELETONS THAT HUNTS HUMANS DOWN BECAUSE THEY'RE TOLD TO! [taunt] I, THE GREAT PAPYRUS, AM A SKELETON WITH STANDARDS!";
page++;

dracula_speaker[page] = 0;
dracula_text[page] = "Standards?! [shake] Don't make me laugh!";
page++;

dracula_speaker[page] = 0;
dracula_text[page] = "You have a lot of nerve presenting yourself as someone with standards when you're comparing yourself to someone of my authority! [glass] I'll show you not to set your ''Standards'' so high, you insufferable sack of bones!";
page++;

//repeat...

arena_title = "The Backboned Prodigy";

toonlink_photo = sprite_get("toonlink_photo_alt");
toonlink_photo2 = 5;

walle_taunt_sound = sound_get("mus_nyeh_heh_heh")
walle_taunt_type = 1;

pkmn_stadium_front_img = sprite_get("stadium_front");
pkmn_stadium_back_img = sprite_get("stadium_back");

gfzsignspr = sprite_get("goalpostalt");

rouxls = false;

nname = "Papyrus";

ncode1 = "A talking skeleton who likes puzzles and spaghetti. He";
ncode2 = "also seems proficient in strength and can turn his";
ncode3 = "foes blue to make them heavier. That isn't his only benefit.";