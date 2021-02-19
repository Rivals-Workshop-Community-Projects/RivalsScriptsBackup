

hurtbox_spr = sprite_get("hurtbox_hurt");
crouchbox_spr = sprite_get("crouchbox_hurt");
air_hurtbox_spr = sprite_get("hurtbox_air_hurt");
hitstun_hurtbox_spr = -1;

can_wall_cling = 1;
wall_frames = 5;

//window_timer = -player*5

//CUSTOM

stun_cooldown = 0;
recolor = 0;

strong_charging_noise = 0;
current_prox = 0;

dstrong_frame = 0;
dstrong_dir = 0;

used_fspecial = 0;

refresh_alpha = 0;

overcharge = 66;

intro = 1;

self_effect = 0;
self_effect_time = 0;

old_cling = 0;

animation_time = 0;

animation_variant = 0;

is_turning = 0;

prox_ins = array_create(2, noone);

prox_limit = 1+has_rune("G");

prox_used = 0;

spice_ins = instance_create(x,y,"obj_article3");
effect = 4;

blep = 0;
hap = 0;


bake_max = 420 - (has_rune("L"))*120;
bake_time = -1;
bake_reset = 270;
bake_armor = 30;
bake_mode = 0;
bake_cooldown = 180;
bake_multiplier = 1.2;
bake_strong = 0;
bake_color = 0;
bake_outline = [219, 120, 0]
bake_draw = 0;
bake_sound = -1;

//bake_max = 10;

use_effect = 0;

nspecial_starttime = 0;

hfx[0] = hit_fx_create(sprite_get("steampuff"), 90)
hfx[1] = hit_fx_create(sprite_get("steam"), 40)
hfx[2] = hit_fx_create(sprite_get("smokepuff"), 90)
hfx[3] = hit_fx_create(sprite_get("hfx_crustH"), 30)
hfx[4] = hit_fx_create(sprite_get("hfx_crustV"), 30)
hfx[5] = hit_fx_create(sprite_get("hfx_fillH"), 19)
hfx[6] = hit_fx_create(sprite_get("hfx_shock"), 12)
hfx[7] = hit_fx_create(sprite_get("hfx_crustB"), 30)
hfx[8] = hit_fx_create(sprite_get("hfx_circle"), 20)
hfx[9] = hit_fx_create(sprite_get("hfx_dir_up"), 16)
hfx[10] = hit_fx_create(sprite_get("hfx_dir_down"), 16)
hfx[11] = hit_fx_create(sprite_get("hfx_dir_in"), 16)
hfx[12] = hit_fx_create(sprite_get("hfx_dir_out"),16)
hfx[13] = hit_fx_create(sprite_get("steamnose"),20)
hfx[14] = hit_fx_create(sprite_get("steampuff"), 30)
hfx[15] = hit_fx_create(sprite_get("fx_shine"), 16)
hfx[16] = hit_fx_create(sprite_get("fspecial_fx"), 16)
hfx[17] = hit_fx_create(sprite_get("uspecial_fx"), 12)
hfx[18] = hit_fx_create(sprite_get("nspecial_fx"), 24)

cake_fx[0] = hit_fx_create(sprite_get("cake_explode_0"),30)
cake_fx[1] = hit_fx_create(sprite_get("cake_explode_1"),30)
cake_fx[2] = hit_fx_create(sprite_get("cake_explode_2"),30)
cake_fx[3] = hit_fx_create(sprite_get("cake_explode_3"),30)
cake_fx[4] = hit_fx_create(sprite_get("cake_explode_4"),30)
cake_fx[5] = hit_fx_create(sprite_get("cake_explode_5"),30)
cake_fx[6] = hit_fx_create(sprite_get("cake_explode_6"),30)
cake_fx[7] = hit_fx_create(sprite_get("cake_explode_7"),30)
cake_fx[8] = hit_fx_create(sprite_get("cake_explode_8"),30)
cake_fx[9] = hit_fx_create(sprite_get("cake_explode_9"),30)
cake_fx[10] = hit_fx_create(sprite_get("cake_explode_10"),30)
cake_fx[11] = hit_fx_create(sprite_get("cake_explode_11"),30)
cake_fx[12] = hit_fx_create(sprite_get("cake_explode_12"),30)

spritesdone = array_create(50, 0);
spritesdone[AT_JAB] = 1;
spritesdone[AT_FTILT] = 1;
spritesdone[AT_DTILT] = 1;
spritesdone[AT_NAIR] = 1;
spritesdone[AT_DAIR] = 1;
spritesdone[AT_BAIR] = 1;
spritesdone[AT_FAIR] = 1;
spritesdone[AT_UAIR] = 1;
spritesdone[AT_FSTRONG] = 1;
spritesdone[AT_FSPECIAL] = 1;
spritesdone[AT_USPECIAL] = 1;
spritesdone[AT_USTRONG] = 1;
spritesdone[AT_DSTRONG] = 1;
spritesdone[AT_DATTACK] = 1;
spritesdone[AT_UTILT] = 1;

dashspin = 0;





amarelle_player = noone;
amarelle_effect = array_create(2, 0);
amarelle_timer = 0;
amarelle_hfx = 0;
amarelle_hfx_time = 0;
amarelle_should_submit = 0;
//
char_height = 64;
idle_anim_speed = .15;
crouch_anim_speed = .1;
walk_anim_speed = .20;
dash_anim_speed = .3;
pratfall_anim_speed = .25;

walk_speed = 2.5;
walk_accel = 0.35;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 4.5;
dash_speed = 7.5;
dash_turn_time = 18;
dash_turn_accel = 0.7;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .7;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10.5;
short_hop_speed = 6;
djump_speed = 10.5;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .03;
max_djumps = 1;
double_jump_time = 36; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 10;
walljump_time = 32;
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .55;
hitstun_grav = .50;
knockback_adj = 0.9; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 8;
wave_land_time = 12;
wave_land_adj = 1.1; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = 0.2; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 1.9;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 4;
tech_recovery_frames = 2;

//tech roll animation frames
//techroll_start_frame = 1;
techroll_startup_frames = 0;
techroll_active_frames = 4;
techroll_recovery_frames = 2;
techroll_speed = 8;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 4;
roll_back_recovery_frames = 3;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_heavy");
landing_lag_sound = asset_get("sfx_land_heavy");
waveland_sound = asset_get("sfx_land_med");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_waveland_ran");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;


//Trummel variables
trummelcodecneeded = false;
trummelcodec_id = noone;

//Hikaru variables
Hikaru_Title = "Lil' Cinnamon Roll"

//Mt. Dedede
arena_title = "The Dangerous Delicacy"

//Kirb
swallowed = 0;
enemykirby = noone;
kirbyability = 16;
//Miiverse
miiverse_post = sprite_get("miiverse0");
sprite_change_offset("miiverse0", 60, 30);
miiverse_post2 = sprite_get("miiverse1");
sprite_change_offset("miiverse1", 60, 30);
miiverse_post3 = sprite_get("miiverse2");
sprite_change_offset("miiverse2", 60, 30);
//
otto_bobblehead_sprite = sprite_get("otto");
feri_costume = sprite_get("feri");
tcoart = sprite_get("tco");
toonlink_photo = sprite_get("TL0");
toonlink_photo2 = sprite_get("TL1");

set_victory_bg(sprite_get("bg_p"));
set_victory_theme(sound_get("patashu"));

get_btt_data = false;

//Dracula support
dracula_portrait = sprite_get("dracula");
dracula_portrait2 = sprite_get("dracula2");
var page = 0;

//Page 0
dracula_speaker[page] = 0;
dracula_text[page] = "Have my minions gone mad?! They'll let anyone through to my throne room now! Or rather, anything.";
page++;

//Page 0
dracula_speaker[page] = 0;
dracula_text[page] = "It's as if they don't even care anymore. It seems the undead has changed since my last resurrection...";
page++;

//Page 0
dracula_speaker[page] = 1;
dracula_text[page] = "...";
page++;

//Page 0
dracula_speaker[page] = 0;
dracula_text[page] = "Ah, yes, you. A fire spirit, no? Summoned into a pastry. Humiliating, isn't it? You might know my frustrations too, then.";
page++;

//Page 0
dracula_speaker[page] = 1;
dracula_text[page] = "*shrugs*";
page++;

//Page 0
dracula_speaker[page] = 0;
dracula_text[page] = "Still, having made it here, I might as well humor you. Defeat me, and you may prove to make a worthy, if unconventional, guardian of my castle. What say you?";
page++;


//Page 0
dracula_speaker[page] = 1;
dracula_text[page] = "...";
page++;

//Page 0
dracula_speaker[page] = 0;
dracula_text[page] = "...";
page++;

//Page 0
dracula_speaker[page] = 1;
dracula_text[page] = "...";
page++;

//Page 0
dracula_speaker[page] = 0;
dracula_text[page] = "...";
page++;

//Page 0
dracula_speaker[page] = 1;
dracula_text[page] = "...";
page++;

//Page 0
dracula_speaker[page] = 0;
dracula_text[page] = "...";
page++;

//Page 0
dracula_speaker[page] = 2;
dracula_text[page] = "*blep*";
page++;

//Page 0
dracula_speaker[page] = 0;
dracula_text[page] = "...Fine, then.";
page++;