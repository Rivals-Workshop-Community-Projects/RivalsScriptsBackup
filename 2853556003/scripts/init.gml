hurtbox_spr = sprite_get("hurtbox");
air_hurtbox_spr = sprite_get("hurtbox_air");
crouchbox_spr = sprite_get("crouchbox");
hitstun_hurtbox_spr = -1;

//other stuff
set_victory_theme(sound_get("torga_victory"));

char_height = 44;
idle_anim_speed = .18;
crouch_anim_speed = .1;
walk_anim_speed = .18;
dash_anim_speed = .2;
pratfall_anim_speed = 0.2;

saw_blade = 0

hue = 0;
outlineR = 0;
outlineG = 0;
outlineB = 0;
outlineDirection = 0;
sideBHold = 0;
//99, 155, 255

kirbyability = 16;
ai = 0;

//SS
if(get_synced_var(player) == 2 || get_synced_var(player) == 3){
	secret_skins = true
}else{
	secret_skins = false
}
//Suppress
if(get_synced_var(player) == 1 || get_synced_var(player) == 3){
	tap_jump_suppress = true
}else{
	tap_jump_suppress = false
}

//Cheatcode
if(has_rune("B") && has_rune("E") && has_rune("N") 
&& !has_rune("A") && !has_rune("C") && !has_rune("D") && !has_rune("F") && !has_rune("G") && !has_rune("H")
&& !has_rune("I") && !has_rune("J") && !has_rune("K") && !has_rune("L") && !has_rune("M") && !has_rune("O")){
	all_runes = true
}else{
	all_runes = false
}

if(has_rune("L") || all_runes){
	L_modifier = 2
}else{
	L_modifier = 1
}

walk_speed = 3.25 * L_modifier;
walk_accel = 0.2 * L_modifier;
walk_turn_time = 8 / L_modifier;
initial_dash_time = 15;
initial_dash_speed = 6.25 * L_modifier;
dash_speed = 5.75 * L_modifier;
dash_turn_time = 6 / L_modifier;
dash_turn_accel = 1 * L_modifier;
dash_stop_time = 4 / L_modifier;
dash_stop_percent = .5 * L_modifier; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .22 / L_modifier;
moonwalk_accel = 1.4 * L_modifier;

jump_start_time = 5;
jump_speed = 9.5 * L_modifier;
short_hop_speed = 5.8;
djump_speed = -1;
leave_ground_max = 6 * L_modifier; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6 * L_modifier; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5.5 * L_modifier; // (3) the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3 * L_modifier; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .32 * L_modifier;
prat_fall_accel = .75 * L_modifier; //multiplier of air_accel while in pratfall
air_friction = .06;
max_djumps = 1;
double_jump_time = 36; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6 * L_modifier;
walljump_vsp = 9 * L_modifier;
walljump_time = 16 * L_modifier;
max_fall = 11 * L_modifier; //maximum fall speed without fastfalling
fast_fall = 15 * L_modifier; // (11) fast fall speed
gravity_speed = .45; // (.45)
hitstun_grav = .5;
knockback_adj = 0.95; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4 / L_modifier; //normal landing frames
prat_land_time = 8;
wave_land_time = 12 / L_modifier;
wave_land_adj = 1.2; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .2 / L_modifier; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 4;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 1;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2;
techroll_active_frames = 5;
techroll_recovery_frames = 4;
techroll_speed = 7 * L_modifier;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 2;
air_dodge_speed = 8 * L_modifier;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 5;
roll_forward_recovery_frames = 4;
roll_back_startup_frames = 2;
roll_back_active_frames = 5;
roll_back_recovery_frames = 4;	
roll_forward_max = 7 * L_modifier; //roll speed
roll_backward_max = 7 * L_modifier;

land_sound = asset_get("sfx_land_heavy");
landing_lag_sound = asset_get("sfx_land_heavy");
waveland_sound = asset_get("sfx_waveland_orc");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_birdflap");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

waterCutterExist = 0

bouncePad = hit_fx_create( sprite_get( "bouncePad" ), 12 );
airdodge1 = hit_fx_create( sprite_get( "airdodge1" ), 15 );
airdodge2 = hit_fx_create( sprite_get( "airdodge2" ), 15 );
airdodge3 = hit_fx_create( sprite_get( "airdodge3" ), 15 );

vfx_waterburst = hit_fx_create( sprite_get( "waterburst" ), 24 );

vfx_star = hit_fx_create( sprite_get( "vfx_star" ), 21);
vfx_dattack_jumpfx = hit_fx_create( sprite_get( "dattack_jumpfx" ), 32);

vfx_waterhit_medium_sweet = hit_fx_create( sprite_get( "vfx_delta_waterhit_sweet" ), 24);
vfx_waterhit_medium = hit_fx_create( sprite_get( "vfx_waterhit_medium" ), 24);
vfx_waterhit_small = hit_fx_create( sprite_get( "vfx_waterhit_small" ), 18 );
vfx_waterhit_huge = hit_fx_create( sprite_get( "vfx_waterhit_huge" ), 32 );

vfx_waterfx_small = hit_fx_create( sprite_get( "vfx_waterfx_small" ), 21);

vfx_shieldshatter = hit_fx_create( sprite_get( "shieldshatter" ), 24);

//sfx
if(get_player_color(player) == 11){
	sound_play(sound_get("sfx_guile_intro"), 0, 0, 2)
	
	sfx_punch_blow_weak1 = sound_get("sfx_punch_weak1")
	sfx_punch_blow_weak2 = sound_get("sfx_punch_weak2")
	sfx_punch_blow_medium1 = sound_get("sfx_punch_medium1")
	sfx_punch_blow_medium2 = sound_get("sfx_punch_medium2")
	sfx_punch_blow_medium3 = sound_get("sfx_punch_medium1")
	sfx_punch_blow_heavy1 = sound_get("sfx_punch_heavy1")
	sfx_punch_blow_heavy2 = sound_get("sfx_punch_heavy1")
	
	sfx_kick_blow_weak1 = sound_get("sfx_kick_weak1")
	sfx_kick_blow_weak2 = sound_get("sfx_kick_weak1")
	sfx_kick_blow_medium1 = sound_get("sfx_kick_medium1")
	sfx_kick_blow_medium2 = sound_get("sfx_kick_medium1")
	sfx_kick_blow_medium3 = sound_get("sfx_kick_medium1")
	sfx_kick_blow_heavy1 = sound_get("sfx_kick_heavy1")
	sfx_kick_blow_heavy2 = sound_get("sfx_kick_heavy1")
	
	sfx_waterhit_weak = sound_get("sfx_buzz_weak1")
	sfx_waterhit_weak2 = sound_get("sfx_buzz_weak1")
	sfx_waterhit_medium = sound_get("sfx_buzz_medium1")
	sfx_waterhit_heavy = sound_get("sfx_buzz_heavy1")
	sfx_waterhit_heavy2 = sound_get("sfx_buzz_heavy1")
}else{
	sfx_punch_blow_weak1 = asset_get("sfx_blow_weak1")
	sfx_punch_blow_weak2 = asset_get("sfx_blow_weak2")
	sfx_punch_blow_medium1 = asset_get("sfx_blow_medium1")
	sfx_punch_blow_medium2 = asset_get("sfx_blow_medium2")
	sfx_punch_blow_medium3 = asset_get("sfx_blow_medium3")
	sfx_punch_blow_heavy1 = asset_get("sfx_blow_heavy1")
	sfx_punch_blow_heavy2 = asset_get("sfx_blow_heavy2")
	
	sfx_kick_blow_weak1 = asset_get("sfx_blow_weak1")
	sfx_kick_blow_weak2 = asset_get("sfx_blow_weak2")
	sfx_kick_blow_medium1 = asset_get("sfx_blow_medium1")
	sfx_kick_blow_medium2 = asset_get("sfx_blow_medium2")
	sfx_kick_blow_medium3 = asset_get("sfx_blow_medium3")
	sfx_kick_blow_heavy1 = asset_get("sfx_blow_heavy1")
	sfx_kick_blow_heavy2 = asset_get("sfx_blow_heavy2")
	
	sfx_waterhit_weak = sound_get("sfx_waterhit_weak")
	sfx_waterhit_weak2 = sound_get("sfx_waterhit_weak2")
	sfx_waterhit_medium = sound_get("sfx_waterhit_medium")
	sfx_waterhit_heavy = sound_get("sfx_waterhit_heavy")
	sfx_waterhit_heavy2 = sound_get("sfx_waterhit_heavy2")
}

shrug_character = "Torga"

//Torga DE
geyser_free_far = false
geyser_free_close = false
lockon_id = noone
no_action_timer = 0
waterBomb_direction = 0
dspecial_used = false
attack_buffer = false
dispos_x = 0
dispos_y = 0
waterBomb = noone
hurricane = noone
init_dir = 0
doublejumpVar = 0
grabbedid = noone;
alt_cur = get_player_color(player);
double_jump_timer = 0
torga_grav_jump = 0
uspec_non = 0
has_djump = true
regrab_damage = 0
pointing_direction = 0
current_point_angle = 0
bomb_sizevar = 0
has_used_fspecial = false
can_teleport = false
parriedID = 0
random_text = 0
torga_balling = false
switch_timer = 0
not_moved = true
spr_dir_start = 1
teleport = true
bypass_sounds = false
sounds_changed = false
bomb_hurricane = false

thump = 0
bomb_thump = 0
bead_thump = 0
waterBomb_charge_stun = 0
extended_cooldown = false

//Cloth
col_r = get_color_profile_slot_r( get_player_color(player), 0);
col_g = get_color_profile_slot_g( get_player_color(player), 0);
col_b = get_color_profile_slot_b( get_player_color(player), 0);

rgb_slot1 = make_color_rgb(col_r / 2, col_g / 2, col_b / 2);
rgb_slot1_saturated = make_color_rgb(col_r, col_g, col_b);

//Water
col_r_2 = get_color_profile_slot_r( get_player_color(player), 1);
col_g_2 = get_color_profile_slot_g( get_player_color(player), 1);
col_b_2 = get_color_profile_slot_b( get_player_color(player), 1);

col_r_outline = 0
col_g_outline = 0
col_b_outline = 0

rgb_slot2 = make_color_rgb(col_r_2 / 2, col_g_2 / 2, col_b_2 / 2);
rgb_slot2_saturated = make_color_rgb(col_r_2, col_g_2, col_b_2);

//g7
g7fx_timer = 0;

//Ocean
waves_rising = 0.5
waves_direction = 2

//Blw
flag_width = 0

//Halloween Stuff
halloween_end = hit_fx_create( sprite_get( "halloween_end" ), 21);

if(get_player_color(player) == 31){
	halloween = true
}else{
	halloween = false
}

//Pokemon Stadium
pkmn_stadium_back_img = sprite_get("torga_back_sprite")
pkmn_stadium_front_img = sprite_get("torga_front_sprite")

//Dedede
arena_title = "The Pacific End";

//miiverse
miiverse_post = sprite_get("torga_miiverse");

sprite_change_offset("torga_miiverse", 60, 30);

//Wall-E
walle_taunt_sound = sound_get("stage_theme");
walle_taunt_type = 1;

//Other kirby
TCG_Kirby_Copy = 6; //Water Copy

//Hypercam
uhc_victory_quote = "o ye, get fekin rekt dum turtl";
 
//kirby
swallowed = 0;
kirbyability = 16;

//Runes

// Level 1 runes

//Ustrong distance
if(has_rune("A") || all_runes){
	A_modifier = 2	
}else{
	A_modifier = 1
}
//Faster Nspecial
if(has_rune("B") || all_runes){
	B_modifier = 2
}else{
	B_modifier = 1
}
//WaterBomb Farther
if(has_rune("C") || all_runes){
	C_modifier = 1.5
}else{
	C_modifier = 1
}
//Hurricane Multihits
if(has_rune("D") || all_runes){
	D_modifier = 1.75
}else{
	D_modifier = 1
}
//Dspecial dash farther
if(has_rune("E") || all_runes){
	E_modifier = 1.5
}else{
	E_modifier = 1
}
//Fspecial Stronger
if(has_rune("F") || all_runes){
	set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 16);
	set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 1);
	set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 10);
	set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0.95);
}else{
	set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 12);
	set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 5);
	set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 1);
	set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 7);
	set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0.65);
}

// Level 2 Runes

//Waterbomb is bigger and stronger
if(has_rune("G") || all_runes){
	G_modifier = 1.5
	
	set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 50);
	set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 50);

	set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 10);
	set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.75);
	set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 30);
	set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, 1.1);
	set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 150);
	set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 150);
	
	set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 7);
	set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 9);
	set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.9);
	set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 50);
	set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, 0);
	set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 180);
	set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 180);
	
	set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 180);
	set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 180);
}else{
	G_modifier = 1
	
	set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 35);
	set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 35);

	set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 6);
	set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 5);
	set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.45);
	set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 10);
	set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, 1.1);
	set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 100);
	set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 100);
	
	set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 2);
	set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.7);
	set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 50);
	set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, 0);
	set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 120);
	set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 120);
	
	set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 120);
	set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 120);
}

//H (Waterbomb has no cooldown)

//I (dattack cancel)

//Uair sends down
if(has_rune("J") || all_runes){
	set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 270);
}else{
	set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 90);
}

//K (Bair can be held forever)
if(has_rune("K") || all_runes){
	set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 5);
	set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 5);
	set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 5);
	set_hitbox_value(AT_BAIR, 4, HG_BASE_KNOCKBACK, 5);
}else{
	set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 3);
	set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 3);
	set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 3);
	set_hitbox_value(AT_BAIR, 4, HG_BASE_KNOCKBACK, 3);
}

//L (Torga faster)

//M (Waterbomb always strong)

//Hurricane cannot be destroyed
if(has_rune("N") || all_runes){
	N_modifier = true
}else{
	N_modifier = false
}

//O (Turbo mode)