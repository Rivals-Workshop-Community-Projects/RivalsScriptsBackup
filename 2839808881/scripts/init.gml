/*
 * The stats below are taken from Zetterburn, replacing Sandbert's overpowered
 * movement stats. The ATTACKS are still in their overpowered form in this
 * template, so be sure to make the ones for your character weaker.
 * 
 * Base Cast Frame Data:
 * docs.google.com/spreadsheets/d/19UtK7xG2c-ehxdlhCFKMpM4_IHSG-EXFgXLJaunE79I
 */

//important
is_TCG_Kirby = true;
abilityStolenTracker = 0;

// STAT NAME		ZETTER VALUE   BASECAST RANGE   NOTES

// Physical size
char_height         = 32;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = 1;		// 0.9  -  1.2

// Ground movement
walk_speed          = 3.25;		// 3    -  4.5
walk_accel          = 0.2;		// 0.2  -  0.5
walk_turn_time      = 6;		// 6
initial_dash_time   = 8;		// 8    -  16       zetterburn's is 14
initial_dash_speed  = 7;		// 4    -  9
dash_speed          = 6.5;		// 5    -  9
dash_turn_time      = 10;		// 8    -  20
dash_turn_accel     = 1.5;		// 0.1  -  2
dash_stop_time      = 6;		// 4    -  6        zetterburn's is 4
dash_stop_percent   = 0.35;		// 0.25 -  0.5
ground_friction     = 0.5;		// 0.3  -  1
moonwalk_accel      = 1.3;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 6;		// 4    -  8
max_jump_hsp        = 6;		// 4    -  8
air_max_speed       = 4;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.3;		// 0.2  -  0.4
prat_fall_accel     = 0.85;		// 0.25 -  1.5
air_friction        = 0.04;		// 0.02 -  0.07
max_fall            = 10;		// 6    -  11
fast_fall           = 14;		// 11   -  16
gravity_speed       = 0.5;		// 0.3  -  0.6
hitstun_grav        = 0.5;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 11;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 6;		// 4    -  7.4
djump_speed         = 8;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;		// -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;		//                  the amount of time that   djump_accel   is applied for
max_djumps          = 4;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 7;		// 4    -  7
walljump_vsp        = 8;		// 7    -  10
land_time           = 4;		// 4    -  6
prat_land_time      = 10;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.12;		// 0    -  0.15
roll_forward_max    = 9;		// 9    -  11
roll_backward_max   = 9;		// 9    -  11       always the same as forward
wave_land_time      = 8;		// 6    -  12
wave_land_adj       = 1.15;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.5;		// 7.5  -  8
techroll_speed      = 10;		// 8    -  11

small_djump = true;

// Character-specific assets init

//Sprites
spr_nspecial_proj = sprite_get("nspecial_proj");
spr_example = sprite_get("example"); // sprites/example_stripX.png

// SFX
sfx_dbfz_kame_charge = sound_get("ARC_BTL_GKN_Kamehame_Chrg");
sfx_dbfz_kame_fire = sound_get("ARC_BTL_GKN_Kamehame_Fire");
sfx_dbfz_hit_weak = sound_get("ARC_BTL_CMN_Hit_Small-A");
sfx_dbfz_hit_broken = sound_get("ARC_BTL_CMN_Hit_XLarge");
sfx_dbfz_hit_jab3 = sound_get("ARC_BTL_GKN_Atk5A_3rd_Hit");

// VFX
vfx_ftilt_destroy = hit_fx_create(sprite_get("vfx_ftilt_destroy"), 12); // actually for nspecial, not ftilt
vfx_nspecial_fire = hit_fx_create(sprite_get("vfx_nspecial_fire"), 16);
fx_dust_cloud = hit_fx_create(sprite_get("fx_dust_cloud"), 12);
wheelspark = hit_fx_create(sprite_get("wheelspark"), 12);
uspec_charge = hit_fx_create(sprite_get("uspecial_charge"), 18);
// Variables
has_goku_beam = true;
doing_goku_beam = false;
beam_newest_hbox = noone;



// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.1;
crouch_anim_speed   = 0.1;
walk_anim_speed     = 0.2;
dash_anim_speed     = 0.75;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 20;		// 24   -  40
walljump_time       = 18;		// 18   -  32
wall_frames         = 2;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 3;
dodge_active_frames     = 1;
dodge_recovery_frames   = 3;

// Tech
tech_active_frames      = 1;
tech_recovery_frames    = 1;

// Tech roll
techroll_startup_frames     = 1;
techroll_active_frames      = 8;
techroll_recovery_frames    = 4;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 8;
air_dodge_recovery_frames   = 3;

// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 8;
roll_forward_recovery_frames    = 4;
roll_back_startup_frames        = 1;
roll_back_active_frames         = 8;
roll_back_recovery_frames       = 4;

// Crouch
crouch_startup_frames   = 2;
crouch_active_frames    = 1;
crouch_recovery_frames  = 2;

/*
Due to a Certified Dan Moment, you must duplicate the
last frame of your crouch animation. So like, if your animation has 10 frames
total, add an 11th that's the copy of the 10th. You do NOT include this 11th
frame in the crouch_recovery_frames or etc; configure these values AS IF there
were only 10 frames.

The reason for this is that otherwise, the crouch just glitches out at the end
of the standing-up animation.
*/



// Hurtbox sprites
hurtbox_spr         = sprite_get("idle_hurt");
crouchbox_spr       = sprite_get("crouch_hurt");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg(sprite_get("victory_background")); // victory_background.png
set_victory_theme(sound_get("victory")); // victory_theme.ogg

// Movement SFX
land_sound          = sound_get("sfx_land");
landing_lag_sound   = sound_get("sfx_landinglag");
waveland_sound      = sound_get("sfx_waveland"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = sound_get("sfx_jump");
djump_sound         = sound_get("sfx_doublejump");
air_dodge_sound     = sound_get("sfx_airdodge");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//Compatibility
Hikaru_Title = "Star Warrior";
arena_title = "Twinkle Star Traveler";
battle_text = "Kirby rushes into action!"
otto_bobblehead_sprite = sprite_get("kirby_bobble_head"); 

//taunt ability select
tauntAbilitySelectMenuCurr = 0;
tauntAbilitySelectMenuCD = 0;

//mix
mixCurrSelected = 0;
mixCurrTimer = 0;
mixCurrTotalTimer = 0;

//uspecial vars
jet_charge_count = 0;
jet_flight_dir = 0;
jet_charge_stored = false;
jet_charge_store_count = 0;
jet_touching_wall = false;
jet_used_again = false;

//jab
times_through = 0;
//nspec Credit to SchmelixSlobDev
kirby_nspec_swallowed_yet = false;
nspec_charge = 0;
nspec_sound = noone;
nspec_time = 0;
nspec_previous_player = noone;
nspec_previous_attack = noone;
nspec_previous_hbox_num = 0;
nspec_previous_hitbox_cooldown = 0;
grab_sfx = sound_get("nspecial_swallow");
grabbedtarget = noone;
grabbedtarget2 = noone;
consumed_proj = false;
proj_damage = 1;
stonevar = -1;
stoneamt = 19;
stonecheck = 0;
stonechecknorm = 0;
stonecheckrare = 0;
stonelandhold = 0;
stone_soft_armor_amt = 7; //Change this to change how much soft armor Stone has.
stone_view_type = 0;

enemy = noone;

//nspecial sound
inhale_sound = sound_get("inhale_loop");
inhale_sound_timer = 0;

nspec_grabbed = false;
grab_timer = 0;
grab_par = 0;
grab_tres = 0;

ability_get_fx = hit_fx_create(sprite_get("fx_ability_get"), 27);
ability_get_fx_fast = hit_fx_create(sprite_get("fx_ability_get"), 18);
spit_fx = hit_fx_create(sprite_get("fx_nspecial_fire"), 12);
star_hit_fx = hit_fx_create(sprite_get("fx_star_hit"), 21);
star_trail_fx = hit_fx_create(sprite_get("fx_star_trail"), 10);

//ranger stuff (dont touch)
dir_actual = 0;
dir_joy = 0;
dir_joy_remember = 0;
dir_sin = 0;
dir_cos = 0;
dir_joy_direction = spr_dir;
dir_joy_direction_vert = spr_dir;
dir_joy_remember_direction_vert = spr_dir;
ranger_aim_hand_shoot_offset = 0;

XSpawnOffset = 0;

zoom = 2;

draw1 = 0;
draw1_x = 0;
draw1_y = 0;
draw1_index = 0;
draw2 = 0;
draw2_x = 0;
draw2_y = 0;
draw2_index = 0;
draw3 = 0;
draw3_x = 0;
draw3_y = 0;
draw3_index = 0;
draw4 = 0;
draw4_x = 0;
draw4_y = 0;
draw4_index = 0;
draw5 = 0;
draw5_x = 0;
draw5_y = 0;
draw5_index = 0;
trail_effect = sprite_get("fspecial_trail");

waterJumpCancel = false;

//copy
TCG_Kirby_Copy = 0;

was_grounded_fire = false;

beam_hitfx = hit_fx_create(sprite_get("ability_beam_hitFX"), 18);
beam_trail = hit_fx_create(sprite_get("ability_beam_proj_trail"), 20);
beam_charged = false;

ranger_aim = 0;
ranger_charge = 0;

sword_dust_timer = 0;

leaf_fallVFX = hit_fx_create(sprite_get("ability_leaf_fallVFX"), 12);

ice_stopVFX = hit_fx_create(sprite_get("ability_ice_blow_stopVFX"), 16);
ice_puffVFX = hit_fx_create(sprite_get("ability_ice_puff_blowVFX"), 10);
ice_blowVFX1_sub = -1;
ice_blowVFX2_sub = -1;
ice_blowVFX3_sub = -1;
ice_blowVFX4_sub = -1;
ice_blowVFX1_rot = 0;
ice_blowVFX2_rot = 0;
ice_blowVFX3_rot = 0;
ice_blowVFX4_rot = 0;

bomb_hitfx = hit_fx_create(sprite_get("ability_bomb_explodeVFX"), 30);
bomb_timer = -1;
bomb_x = 0;
bomb_y = 0;

mike_level = 1;

abyss_hsp = 1;
abyss_vsp = 1;
abyss_rising = false;

esp_x = 0;
esp_y = 0;
esp_charged = false;
esp_idle_timer = 0;
esp_hit_counter = 0;
esp_parried = false;

drill_dig_timer = 0;
drill_fall_timer = 0;
drill_move_value = 0;
drill_dig_animframe_timer = 0;
drill_dig_animframe_track_timer = 11;
maxDrillTime = 180; //Change this to change the maxmimum amount of time Kirby can burrow for.
drill_dirt_emerge = hit_fx_create(sprite_get("ability_drill_dirt_emerge"), 15);

sparkTimesThrough = 0;

air_drop_ability = 0;

AT_COPY_FIRE = AT_DSPECIAL_2
AT_COPY_BEAM = AT_NSPECIAL_2
AT_COPY_RANGER = AT_USPECIAL_2
AT_COPY_FIGHTER = AT_TAUNT_2
AT_COPY_SWORD = AT_FSPECIAL_AIR
AT_COPY_WATER = AT_EXTRA_2
AT_COPY_LEAF = AT_DSTRONG_2
AT_COPY_ICE = AT_FSTRONG_2
AT_COPY_TORNADO = AT_USTRONG_2
AT_COPY_BOMB = AT_FTHROW
AT_COPY_MIKE = AT_UTHROW
AT_COPY_ABYSS = AT_DTHROW
AT_COPY_ESP = AT_NTHROW
AT_COPY_DRILL = AT_EXTRA_1
AT_COPY_SPARK = AT_EXTRA_3

AT_COPY_EXTRA = 0
AT_COPY_EXTRA = 2
AT_COPY_EXTRA = 3
AT_COPY_EXTRA = 39
AT_COPY_EXTRA = 40
AT_COPY_EXTRA = 42
AT_COPY_EXTRA = 43
AT_COPY_EXTRA = 44
AT_COPY_EXTRA = 45
AT_COPY_EXTRA = 46
AT_COPY_EXTRA = 47
AT_COPY_EXTRA = 48
AT_COPY_EXTRA = 49
//
hue_offset=0;
hue_speed=1; //change this to change the speed of the hueshift

//Rune Variables
randomStartAbilityRune = has_rune("A")
slideRune = has_rune("C")
enemyProjStarRune = has_rune("E")
fstrongRune = has_rune("G")
jetRune = has_rune("J")

if(randomStartAbilityRune){
	TCG_Kirby_Copy = random_func(1, 14, true);
}

//compatibility stuff
guiltySprite = sprite_get("trialgrounds_kirby")
