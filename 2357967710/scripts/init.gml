hurtbox_spr = sprite_get("hurtbox");
crouchbox_spr = sprite_get("crouch_hurtbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 84;
idle_anim_speed = .15;
crouch_anim_speed = .1;
walk_anim_speed = .175;
dash_anim_speed = 0.265;
pratfall_anim_speed = .4;

walk_speed = 2.75;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 7;
initial_dash_speed = 6;
dash_speed = 5.5;
dash_turn_time = 6;
dash_turn_accel = 0.6;
dash_stop_time = 10;
dash_stop_percent = 0.85; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 4;
jump_speed = 12;
short_hop_speed = 9;
djump_speed = 11;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 13; //maximum fall speed without fastfalling
fast_fall = 10; //fast fall speed
gravity_speed = .65;
hitstun_grav = .5;
knockback_adj = 1.0; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 12; //normal landing frames
prat_land_time = 6;
wave_land_time = 7;
wave_land_adj = 1.2; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

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
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 1;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 4;
roll_forward_active_frames = 6;
roll_forward_recovery_frames = 6;
roll_back_startup_frames = 4;
roll_back_active_frames = 6;
roll_back_recovery_frames = 6;
roll_forward_max = 7; //roll speed
roll_backward_max = 7;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//variable for double jump animation
fall = 0;

//animation variables
idle = 0;
old_x = 0;
old_y = 0;
old_x2 = 0;
old_y2 = 0;
land = 0;
time = 0;

//evidence variables
cursor = -1;
evidence = -1;
evidence1 = -1;
evidence2 = -1;
evidence3 = -1;
spirit = 0;
old_dir = 0;
investigate = 0;
record = 0;
banana = 0;
popup = -1;
popup2 = 0;
popup3 = 0;
slot = 0;
slot_hud = 0;
evidenceout = false;
damaged = false;
infected = 0;
old_time = 0;
target = 0;
safe = 0;

//Explosion
explosion = 0;
stuff = 0;

//speech bubble variables
frame = -1;
frame2 = -1;
air = 0;
ground1 = 0;
ground2 = 0;
appear = 0;
sound = 0;

//Pyshce-lock
x3 = 0;
y3 = 0;
psyche = 0;
psychedraw = 0;
chain = 0;
lock = 0;

//Turnabout
turnabout = 0;
bout_timer = 0;

//Voice Lines
voice = 1;
voice_text = 0;

//Support
kirbyability = 16;
swallowed = 0;
dialogue = -1;
arena_title = "The Ace Attorney";
steve_death_message = "The miracle never happen"
dracula_portrait = sprite_get("Dracula");
dracula_portrait2 = sprite_get("Dracula2");
dracula_portrait3 = asset_get("empty_sprite");
var page = 0;

//Page 0
dracula_speaker[page] = 1;
dracula_text[page] = "(This place castles quite grand. It's got all sorts of decor to liven to place up. It's nice to look at but...)";
page++;

//Page 1
dracula_speaker[page] = 1;
dracula_text[page] = "(How exactly did we end up here?)";
page++;

//Page 2
dracula_speaker[page] = 2;
dracula_text[page] = "This place is pretty big. It feels like it would be from a movie!";
page++;

//Page 3
dracula_speaker[page] = 1;
dracula_text[page] = "I'm surprised that you can be calm considering we're lost.";
page++;

//Page 4
dracula_speaker[page] = 2;
dracula_text[page] = "You worry too much Nick. I'm sure we'll find our way home eventually.";
page++;

//Page 5
dracula_speaker[page] = 1;
dracula_text[page] = "(It's the eventually part that worries me.)";
page++;

//Page 6
dracula_speaker[page] = 0;
dracula_text[page] = "If you are finished chatting, allow me to welcome you to my castle Mr. Attorney.";
page++;

//Page 7
dracula_speaker[page] = 0;
dracula_text[page] = "For this place will be you eternal grave.";
page++;

//Page 8
dracula_speaker[page] = 2;
dracula_text[page] = "[shake]WHAAAAAAAT!?";
page++;

//Page 9
dracula_speaker[page] = 2;
dracula_text[page] = "Nick, this stranger has to be joking right?";
page++;

//Page 10
dracula_speaker[page] = 1;
dracula_text[page] = "I don't think that's the case Maya, he seems dead serious about it.";
page++;

//Page 11
dracula_speaker[page] = 0;
dracula_text[page] = "I assure you[glass], I am not joking in any sort of matter.";
page++;

//Page 12
dracula_speaker[page] = 0;
dracula_text[page] = "It will take more than lawyer tricks if you want to defeat me!";
page++;

//Page 13
dracula_speaker[page] = 2;
dracula_text[page] = "Nick, what do we do now?";
page++;

//Page 14
dracula_speaker[page] = 1;
dracula_text[page] = "Don't worry Maya, I'm sure we'll be able to figure something out.";
page++;

//Page 15
dracula_speaker[page] = 1;
dracula_text[page] = "(Yeah, right! I don't even know what's going on!)";
page++;