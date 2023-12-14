hurtbox_spr = sprite_get("idle_hurt");
crouchbox_spr = sprite_get("crouch_hurt");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

numPalettes = 27;
drawtimer = 0;
subimg = 0;

char_height = 56;
idle_anim_speed = .15;
crouch_anim_speed = .1;
walk_anim_speed = .2;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.50;
walk_accel = 0.50;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 7.5;
dash_speed = 6.5;
dash_turn_time = 10;
dash_turn_accel = 2;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 0.7;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11.5;
short_hop_speed = 7;
djump_speed = 12;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .25;
prat_fall_accel = 0.85; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 9;
walljump_time = 32;
wall_frames = 1;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .50;
hitstun_grav = .5;
knockback_adj = 1.15; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 10;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 2;
dodge_active_frames = 2;
dodge_recovery_frames = 2;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 4;
techroll_recovery_frames = 2;
techroll_speed = 8;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 2;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 4;
roll_back_recovery_frames = 2;
roll_forward_max = 8.5; //roll speed
roll_backward_max = 8.5;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//sfx and vfx
heartFX = hit_fx_create(sprite_get("hfx_heart"), 32);
smallheartFX = hit_fx_create(sprite_get("hfx_heartsmall"), 32);
heartparticle = hit_fx_create(sprite_get("heartparticle"), 32);
set_victory_theme( sound_get( "Cupcake_victory" ) );
set_victory_bg(sprite_get("cupcake_victory_bg"));

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

// dspecial b reverse
b_reversed = false;

fspecial_point = [0,0];
point_hsp = 0;
point_vsp = 0;
whip_tether = false;
whip_player = false;
whip_cancel = false;
whip_cancel_has_hit = false;
whipparried = false;
nspecialused = 18;
delay_pull = 10;
wrappedfall = false;

secretpalette = false;
secrettimer = 0;
secretpalette2 = false;
secrettimer2 = 0;
secretpalette3 = false;
secrettimer3 = 0;

// Lovestruck field
singleton_field = noone;
practice = (get_training_cpu_action() != CPU_FIGHT);
killarticles = false;

// Compatibility
Hikaru_Title = "Femme Fatale";
feri_costume = sprite_get("feri_costume_cupcake");
otto_bobblehead_sprite = sprite_get("otto_bobble_cupcake");
miiverse_post = sprite_get("miiverse_post_cupcake");
sprite_change_offset("miiverse_post_cupcake", 60, 30);
tcoart = sprite_get("tco_cupcake");
kirbyability = 16;
swallowed = 0;
enemykirby = noone;
trummelcodecneeded = false;
trummelcodec_id = noone;
arena_title = "The Heartstrong Acrobat";
gfzsignspr = sprite_get("greenflower_cupcake");
sprite_change_offset("greenflower_cupcake", 18, 41);
oohEeOohAhAhTingTangWallaWallaBingBang = 1;

ncode1 = "Circus star acrobat and ribbon performer";
ncode2 = "Legs have incredible kicking force and flexibility";
ncode3 = "Tries to confuse with flips and bind with ribbon";

// Toon Link Picture
toonlink_photo = sprite_get("pictophotocupcake");
toonlink_photo2 = sprite_get("pictophotoTL_cupcake");

//Dracula support
dracula_portrait = sprite_get("dracula_portrait_cupcake");
dracula_portrait2 = asset_get("empty_sprite");
var page = 0;

//Page 0
dracula_speaker[page] = 0;
dracula_text[page] = "Well, well, well, another fool come to- My, you're a lot... pinker than the last.";
page++;

//Page 1
dracula_speaker[page] = 1;
dracula_text[page] = "Hiya! You're Dracula, right? Big old guy, cape, not my style but it looks good on you.";
page++;

//Page 2
dracula_speaker[page] = 0;
dracula_text[page] = "You are a very strange pink creature. Why have you come into my domain to challenge me?";
page++;

//Page 3
dracula_speaker[page] = 1;
dracula_text[page] = "Oh, yeah! Your castle showed up in the middle of my act. It stole the whole crowd away! This is Julesvale Circus turf, Drac. No other performers are allowed here.";
page++;

//Page 4
dracula_speaker[page] = 0;
dracula_text[page] = "Very well then, harlequin. I may as well entertain you by crushing your small, soft body.";
page++;

//Page 5
dracula_speaker[page] = 1;
dracula_text[page] = "I'm an acrobat. Oh, and don't be so sure about that, teehee~[taunt]";
page++;

//Page 6
dracula_speaker[page] = 0;
dracula_text[page] = "Hmph, your arrogant nature makes you reckless. Prepare to suffer the consequences, weakling.";
page++;