hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 54;
idle_anim_speed = .16;
crouch_anim_speed = .13;
walk_anim_speed = .2;
dash_anim_speed = .35;
pratfall_anim_speed = .25;

walk_speed = 3.5;
walk_accel = 0.3;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 6.55;
dash_speed = 6.25;
dash_turn_time = 8;
dash_turn_accel = 1.75;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .6;
moonwalk_accel = 1.2749;

jump_start_time = 5;
jump_speed = 10.9;
short_hop_speed = 6;
djump_speed = 10;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 31; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 8;
walljump_time = 20;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .5;
hitstun_grav = .48;
knockback_adj = 1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 11;
wave_land_time = 8;
wave_land_adj = 1.15; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .05; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 4;
crouch_recovery_frames = 1;

//Wait sprites
wait_time = 412;
wait_length = 220;
wait_sprite = sprite_get("idle_wait");

//parry animation frames
dodge_startup_frames = 2;
dodge_active_frames = 2;
dodge_recovery_frames = 5;

//tech animation frames
tech_active_frames = 1;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 7;
techroll_recovery_frames = 1;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 7;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 6;
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

//other variables. idk
ballOut = 0;
ballDown = 0;
wblastcharge = 0;
rps = 0;
superbluey = false;
randomTaunt = 0;
hue_offset=0;
hue_speed=2; //change this to change the speed of the hueshift
nspecialAfter = hit_fx_create( sprite_get( "nspecial_proj_after" ),16);
fireAfter = hit_fx_create( sprite_get( "fire_after" ),12);
nspecialAfter3 = hit_fx_create( sprite_get( "nspecial_proj3_after" ),14);
fspecialAfter = hit_fx_create( sprite_get( "fspecial_proj_after" ),6);
fspecialAfter2 = hit_fx_create( sprite_get( "fspecial_proj2_after" ),6);
ligmaballs = 0;
shaboingboing = 0;

//Character support
miiverse_post = sprite_get("miiverse");
tcoart = sprite_get("blueytcoart");
trummelcodecneeded = false;
trummelcodec_id = noone;
feri_costume = sprite_get("feri_costume_ex");
arena_title = "The Blue Wonder";
showHUD = false;
otto_bobblehead_sprite = sprite_get("hudbobblehead");
otto_bobblehead_body_sprite = sprite_get("hudbobblebody");
kirbyability = 16;
swallowed = 0;
Lmao = has_rune("L");
diag_portrait=sprite_get("diagportrait");
pot_compat_variable = sprite_get("pot_compat");
pot_compat_text = "The 'B'est Cake (Debatably)";
mamizou_transform_spr = sprite_get("mamizou_compat");
has_fail = true;
fail_text = "Don't get too blue over this.";

//Dracula Support
dracula_portrait = sprite_get("dracportrait1");
dracula_portrait2 = sprite_get("dracportrait2");
var page = 0;
dracula_speaker[page] = 0;
dracula_text[page] = "Well, what do we have here... A human boy? Strange. You look different, although I had the impression that this world was free of those miserable insects.";
page++;
dracula_speaker[page] = 1;
dracula_text[page] = "Oh, nah, I'm an outsider, like you. Nice decor BTW.";
page++;
dracula_speaker[page] = 0;
dracula_text[page] = "Hmph... Native of this world or not, that makes you no less of a trespasser to my castle!";
page++;
dracula_speaker[page] = 0;
dracula_text[page] = "Unless, of course, you intend to join my army and swear servitude to me for eternity. Surely, you must be strong enough to have gotten past my guards on your way here, especially for such a young and puny age.";
page++;
dracula_speaker[page] = 1;
dracula_text[page] = "Eh. Nah, I'll pass. But on that topic, I think you need to get better security. Honestly, skeletons and bats? And you've been doing this over and over for centuries?";
page++;
dracula_speaker[page] = 2;
dracula_text[page] = "Is it any wonder the whip men keep breaking into your house every time?";
page++;
dracula_speaker[page] = 0;
dracula_text[page] = "...That's enough![glass] You dare come into my castle without a permit, and dare make a mockery of me and my army... You need to be taught a lesson, insolent child!";
page++;
dracula_speaker[page] = 1;
dracula_text[page] = "Oh, I guess we're doing it like that, then.[taunt] Bring it, geezer!";
page++;

//adventure
pronouns = ["he","him","his","is"];
am_is_noob = true;
am_is_experienced = true;