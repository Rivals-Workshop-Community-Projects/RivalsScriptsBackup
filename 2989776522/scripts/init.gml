
// STAT NAME		VALUE       BASECAST RANGE   NOTES

// Physical size
char_height         = 85;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = .9;		// 0.9  -  1.2
maxspd = 13;
//maxspd = 70; //sanic speed
// Ground movement
walk_speed          = 3.2;		// 3    -  4.5
walk_accel          = 0.2;		// 0.2  -  0.5
walk_turn_time      = 6;		// 6
initial_dash_time   = 8;		// 8    -  16       zetterburn's is 14
initial_dash_speed  = 6.75;		// 4    -  9
dash_speed          = 6.25;		// 5    -  9
dash_turn_time      = 11;		// 8    -  20
dash_turn_accel     = 1.5;		// 0.1  -  2
dash_stop_time      = 6;		// 4    -  6        zetterburn's is 4
dash_stop_percent   = 0.35;		// 0.25 -  0.5
ground_friction     = 0.55;		// 0.3  -  1
moonwalk_accel      = 1.2;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 6;		// 4    -  8
max_jump_hsp        = 6;		// 4    -  8
air_max_speed       = 5;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.3;		// 0.2  -  0.4
prat_fall_accel     = 0.85;		// 0.25 -  1.5
air_friction        = 0.04;		// 0.02 -  0.07
max_fall            = 11;		// 6    -  11
fast_fall           = 15;		// 11   -  16
gravity_speed       = 0.4;		// 0.3  -  0.6
hitstun_grav        = 0.45;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 10;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 6;		// 4    -  7.4
djump_speed         = 9;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;		// -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;		//                  the amount of time that   djump_accel   is applied for
max_djumps          = 3;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 5.5;		// 4    -  7
walljump_vsp        = 9;		// 7    -  10
land_time           = 4;		// 4    -  6
prat_land_time      = 10;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.12;		// 0    -  0.15
roll_forward_max    = 9;		// 9    -  11
roll_backward_max   = 9;		// 9    -  11       always the same as forward
wave_land_time      = 8;		// 6    -  12
wave_land_adj       = 1.3;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.5;		// 7.5  -  8
techroll_speed      = 10;		// 8    -  11

// Character-specific assets init

//Sprites

// SFX

// VFX
fx_aimlaser = hit_fx_create(sprite_get("fx_aimlaser"), 10);
fx_nspec_laser = hit_fx_create(sprite_get("nspec_laser"), 30);
fx_nspec_laser2 = hit_fx_create(sprite_get("nspec_laser2"), 30);
fx_fspec_projectile_trail = hit_fx_create(sprite_get("fspec_projectile_trail"), 20);
fx_fspec_projectile_trail2 = hit_fx_create(sprite_get("fspec_projectile_trail2"), 20);
fx_sharphit = hit_fx_create(sprite_get("fx_sharphit"), 15);
fx_sharphit_big = hit_fx_create(sprite_get("fx_sharphitbig"), 15);
fx_sharphit_big2 = hit_fx_create(sprite_get("fx_sharphitbig2"), 15);
fx_lightbeams = hit_fx_create(sprite_get("fx_lightbeams"), 12);
fx_lightbeams_fast = hit_fx_create(sprite_get("fx_lightbeams"), 6);
fx_lightbeams_small = hit_fx_create(sprite_get("fx_lightbeams_small"), 12);
fx_lightbeams_small_fast = hit_fx_create(sprite_get("fx_lightbeams_small"), 6);
fx_orb = hit_fx_create(sprite_get("fx_orb"), 10);
fx_bury = hit_fx_create(sprite_get("bury_effect"), 30);
fx_slam = hit_fx_create(sprite_get("fx_slam"), 20);
fx_slamfast = hit_fx_create(sprite_get("fx_slam"), 10);
fx_dust_sharp_big = hit_fx_create(sprite_get("dust_sharp_big"), 20);
fx_dust_sharp_big_fast = hit_fx_create(sprite_get("dust_sharp_big"), 10);
fx_dust_sharp = hit_fx_create(sprite_get("dust_sharp"), 20);
fx_dust_sharp_fast = hit_fx_create(sprite_get("dust_sharp"), 10);
fx_fire = hit_fx_create(sprite_get("fx_fire"), 20);
fx_fire_fast = hit_fx_create(sprite_get("fx_fire"), 10);
fx_fire_slow = hit_fx_create(sprite_get("fx_fire"), 30);
fx_fire_slow2 = hit_fx_create(sprite_get("fx_fire"), 45);
fx_fire2 = hit_fx_create(sprite_get("fx_fire2"), 15);
fx_fire2_slow = hit_fx_create(sprite_get("fx_fire2"), 40);
fx_fire2_small = hit_fx_create(sprite_get("fx_fire2_small"), 15);
fx_fire2_small_slow = hit_fx_create(sprite_get("fx_fire2_small"), 40);
fx_dust = hit_fx_create(sprite_get("dust_effect"), 20);
fx_dust_dark = hit_fx_create(sprite_get("dust_effect_dark"), 20);
fx_lightning = hit_fx_create(sprite_get("fx_lightning"), 10);
fx_lightning_fast = hit_fx_create(sprite_get("fx_lightning"), 5);
fx_pixel = hit_fx_create(sprite_get("fx_pixel"), 20);
fx_pixel_fast = hit_fx_create(sprite_get("fx_pixel"), 10);
fx_pixel_fast2 = hit_fx_create(sprite_get("fx_pixel"), 5);
fx_explosion = hit_fx_create(sprite_get("explosion"), 30);
fx_laugh = hit_fx_create(sprite_get("taunt_laugh_fx"), 9);

// Variables
Eggman = true;
is_KOB = true;
alt = get_player_color(player);
loaded = false;
attacking = false;
upb = false;
nspecial_charge = 0;
nspecial_charged = false;
nspecial_charge_sfx = false;
nspecial_charge_sfx2 = noone;
nspecial_meter_hud = 2;
nspecial_start_charge = 0;
fspecialY = 0;
fspec_hit = false;
target_list = ds_list_create();
fspec_sfx = false;
aim_sprite = sprite_get("fspec_aim");
aimtarget = noone;
aimtarget2 = noone;
the_eggpawn = noone;
the_eggpawn2 = noone;
eggpawn_cooldown = 420;
eggpawn_cooldown2 = 600;
eggpawn_cooldown_multiplier = 1.0;
eggpawn_icon = 0;
eggpawn_destroyed = false;
eggpawn_health_multiplier = 1.0;
ftilt_hitbox = noone;
dattack_timer = 0;
dattack_hitbox = noone;
dattack_anim = 0;
dattack_alpha = 0;
dattack_hit = false;
nair_loop = 0;
hit_timer = 0;
eff_offset_X = 0;
eff_offset_Y = 0;
armor_timer = 0;
floatmax = 120;
float = 0;
floating = false;
floatanim = 0;
floatbuffer = 0;
djumpfloat = 0;
voice = noone;
voicecooldown = 0; //attack sounds
voicecooldown2 = 0; //hurt sounds
voicecooldown3 = 0; //galaxy hit sounds
sfx = noone;
eff = noone;
floating_sfx = false;
hover_sfx = noone;
voicemode = get_synced_var(player);
i_have_70_alt_accounts = false;
familiar_eggmans = 0;
lookuptime = 0;
airdodgeanimthing = 0;
rand = 0;
silly = 0;

inside_mech = true;
inside_mech2 = true;
can_summon_mech = true;

//Ground
spr_idle = sprite_get("idle");
spr_crouch = sprite_get("crouch");
spr_walk = sprite_get("walk");
spr_walkturn = sprite_get("walkturn");
spr_dash = sprite_get("dash");
spr_dashstart = sprite_get("dashstart");
spr_dashstop = sprite_get("dashstop");
spr_dashturn = sprite_get("dashturn");

//Air
spr_jumpstart = sprite_get("jumpstart");
spr_jump = sprite_get("jump");
spr_doublejump = sprite_get("doublejump");
spr_walljump = sprite_get("walljump");
spr_pratfall = sprite_get("pratfall");
spr_land = sprite_get("land");
spr_landinglag = sprite_get("landinglag");

//Dodge
spr_parry = sprite_get("parry");
spr_roll_forward = sprite_get("roll_forward");
spr_roll_backward = sprite_get("roll_backward");
spr_airdodge = sprite_get("airdodge");
spr_airdodge_waveland = sprite_get("waveland");
spr_tech = sprite_get("tech");

//Hurt
spr_hurt = sprite_get("hurt");
spr_bighurt = sprite_get("bighurt");
spr_hurtground = sprite_get("hurtground");
spr_uphurt = sprite_get("uphurt");
spr_downhurt = sprite_get("downhurt");
spr_bouncehurt = sprite_get("bouncehurt");

spr_lookup = sprite_get("lookup");

AT_SLAP = AT_EXTRA_1;
AT_KICK = AT_EXTRA_2;

if(get_color_profile_slot_r(0,0) != 225){
    set_color_profile_slot(0, 0, 225, 28, 28);
}

//character variables
sonic_inmatch = false;
tails_inmatch = false;
knuckles_inmatch = false;
amy_inmatch = false;
shadow_inmatch = false;
silver_inmatch = false;
rouge_inmatch = false;
chaos_inmatch = false;
based_frog_inmatch = false;

//burn stuff
sol_burn = false;
sol_burn_id = 0;
sol_burn_timer = 0;
//bury stuff
villager_bury = false;
villager_bury_id = 0;
villager_bury_timer = 0;
villager_bury_hitpause = false;
villager_bury_cooldown = 0;
villager_bury_sprite = sprite_get("bury");

runeA = false; runeB = false; runeC = false; runeD = false; runeE = false; runeF = false; runeG = false; runeH = false; runeI = false; runeJ = false; runeK = false; runeL = false; runeM = false; runeN = false; runeO = false; runesUpdated = false;

//runeE = true;runeF = true;runeG = true;runeH = true;runesUpdated = true;

alpha = 0.5;
playtesting = (object_index == oTestPlayer);

kob_sleep_sprite = sprite_get("sleep");
kob_sleep_sprite_air = sprite_get("sleep");
kob_sleep = false;

toonlink_photo = sprite_get("toonlink_photo");
toonlink_photo2 = 6;
miiverse_post = sprite_get("miiverse");
arena_title = "Mad Genius";
boxing_title = "Mad Genius";
wily_robotmaster_img = sprite_get("Wily_Castle");
gfzsignspr = sprite_get("greenflowerzone");
gfzsignsfx = sound_get("adv_laugh");
//guiltySprite = sprite_get("trialgrounds");
//resort_portrait = sprite_get("lastresort");
//pkmn_stadium_front_img = sprite_get("pkmnstadium");
//pkmn_stadium_back_img = sprite_get("pkmnstadium_back");
pkmn_stadium_name_override = "Eggman";
fs_char_chosen_final_smash = "custom";
fs_char_portrait_y = 80;
fs_portrait_x = 60;
fs_meter_x = -20;
fs_meter_y = -10;
fs_attack_index = AT_NSPECIAL;
Toadie_Ability = 5;
TCG_Kirby_Copy = 15;

// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.1;
crouch_anim_speed   = 0.1;
walk_anim_speed     = 0.125;
dash_anim_speed     = 0.2;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 20;		// 24   -  40
walljump_time       = 18;		// 18   -  32
wall_frames         = 2;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 3;
dodge_recovery_frames   = 4;

// Tech
tech_active_frames      = 1;
tech_recovery_frames    = 2;

// Tech roll
techroll_startup_frames     = 1;
techroll_active_frames      = 4;
techroll_recovery_frames    = 4;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 4;
air_dodge_recovery_frames   = 3;

// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 4;
roll_forward_recovery_frames    = 4;
roll_back_startup_frames        = 1;
roll_back_active_frames         = 4;
roll_back_recovery_frames       = 4;

// Crouch
crouch_startup_frames   = 1;
crouch_active_frames    = 1;
crouch_recovery_frames  = 2;

/*

Muno's Words of Wisdom: Due to a Certified Dan Moment, you must duplicate the
last frame of your crouch animation. So like, if your animation has 10 frames
total, add an 11th that's the copy of the 10th. You do NOT include this 11th
frame in the crouch_recovery_frames or etc; configure these values AS IF there
were only 10 frames.

The reason for this is that otherwise, the crouch just glitches out at the end
of the standing-up animation. Dan Moment

*/



// Hurtbox sprites
hurtbox_spr         = sprite_get("hurtbox");
sprite_change_offset("hurtbox", 50, 98);
sprite_change_offset("hurtbox_mechless", 50, 98);
crouchbox_spr       = sprite_get("hurtbox_crouch");
sprite_change_offset("hurtbox_crouch", 50, 98);
sprite_change_offset("hurtbox_crouch_mechless", 50, 98);
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_portrait(sprite_get("portrait"));
set_victory_bg(sprite_get("victorybg")); // victory_background.png
set_victory_theme(sound_get("victory")); // victory_theme.ogg

// Movement SFX
//land_sound = asset_get("sfx_land_med");
land_sound = noone;
//landing_lag_sound = asset_get("sfx_land");
landing_lag_sound = noone;
waveland_sound      = asset_get("sfx_waveland_zet"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = asset_get("sfx_jumpground");
djump_sound         = asset_get("sfx_jumpair");
air_dodge_sound     = asset_get("sfx_quick_dodge");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines

muno_event_type = 0;
user_event(14);