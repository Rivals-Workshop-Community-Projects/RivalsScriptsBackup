hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .2;
crouch_anim_speed = .14;
walk_anim_speed = .18;
dash_anim_speed = .35;
pratfall_anim_speed = .25;

walk_speed = 3.05;
walk_accel = 0.25;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 6.75;
dash_speed = 5.95;
dash_turn_time = 9;
dash_turn_accel = 1.75;
dash_stop_time = 6;
dash_stop_percent = .3; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.2749;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 5;
djump_speed = 9;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 3; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .25;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 33; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 8;
walljump_time = 20;
max_fall = 9; //maximum fall speed without fastfalling
fast_fall = 12; //fast fall speed
gravity_speed = .45;
hitstun_grav = .45;
knockback_adj = 1.05; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 11;
wave_land_time = 8;
wave_land_adj = 1.15; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .05; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 4;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 2;
dodge_active_frames = 1;
dodge_recovery_frames = 5;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 4;
techroll_recovery_frames = 1;
techroll_speed = 8;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 4;
roll_back_recovery_frames = 2;
roll_forward_max = 8; //roll speed
roll_backward_max = 8;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//Wait sprites
wait_time = 379;
wait_length = 170;
wait_sprite = sprite_get("idle_wait");

//other variables. idk
ballOut = 0;
ballDown = 0;
wblastcharge = 0;
rps = 0;
showHUD = false;
hue_offset=0;
hue_speed=1; //change this to change the speed of the hueshift
nspecialAfter = hit_fx_create( sprite_get( "nspecial_proj_after" ),16);
fireAfter = hit_fx_create( sprite_get( "fire_after" ),12);
nspecialAfter3 = hit_fx_create( sprite_get( "nspecial_proj3_after" ),14);
fspecialAfter = hit_fx_create( sprite_get( "fspecial_proj_after" ),6);
fspecialAfter2 = hit_fx_create( sprite_get( "fspecial_proj2_after" ),6);
ligmaballs = 0;
shaboingboing = 0;

//Character support
tcoart = sprite_get("cinnytcoart");
nspecialstun = hit_fx_create(sprite_get("nspecial_stun"), 40); 
feri_costume = sprite_get("feri_costume_ex");
arena_title = "The Red Wonder";
otto_bobblehead_sprite = sprite_get("hudbobblehead");
otto_bobblehead_body_sprite = sprite_get("hudbobblebody");
kirbyability = 16;
swallowed = 0;
diag_portrait= sprite_get("diagportrait");

//Dracula Support
dracula_portrait = sprite_get("dracportrait1");
dracula_portrait2 = sprite_get("dracportrait2");
var page = 0;
dracula_speaker[page] = 0;
dracula_text[page] = "And what brings this little girl into my castle?";
page++;
dracula_speaker[page] = 1;
dracula_text[page] = "Oh wow, is this your house? It's huge! Me and my bro just HAD to check it out. Have you met him? He's, like, a REALLY blue guy. And I mean the color.";
page++;
dracula_speaker[page] = 0;
dracula_text[page] = "I have met many people in this room lately, but I don't take too kind to intruders in my domain of night monsters. Not even children such as you!";
page++;
dracula_speaker[page] = 1;
dracula_text[page] = "Ohhh... I see what's going on here... You're that Count Dracula, aren't you? The one who gets beaten into a pulp by burly dudes with whips and crosses?";
page++;
dracula_speaker[page] = 2;
dracula_text[page] = "Well, guess what! I don't have a whip or a cross, but I'm not afraid of you!";
page++;
dracula_speaker[page] = 0;
dracula_text[page] = "Hmph. You're a brave one, little girl, but undisciplined children must be punished! [glass]";
page++;
dracula_speaker[page] = 2;
dracula_text[page] = "Oh yeah? And old geezers like you must be...uh...retired! Yeah, that's it!";
page++;

//adventure
pronouns = ["she","her","her","is"];
am_is_noob = true;
am_is_experienced = true;