hurtbox_spr = sprite_get("idle_hurt");
crouchbox_spr = sprite_get("crouch_hurt");
mask_index = sprite_get("smol_mask");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
//each game frame uses X anim frames
idle_anim_speed = 0.15;
walk_anim_speed = 0.15;
dash_anim_speed = .3;

crouch_anim_speed = 2;
pratfall_anim_speed = .2;

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 8;
dash_speed = 7.5;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 16;
dash_stop_percent = .55; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .45;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 7;
djump_speed = 9;
leave_ground_max = 6.5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5.5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .06;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 9; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .45;
hitstun_grav = .45;
knockback_adj = 1.2; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 8; //normal landing frames
prat_land_time = 32;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 4;
techroll_recovery_frames = 3;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 1;
roll_back_active_frames = 4;
roll_back_recovery_frames = 3;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_light");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");
small_djump = false;

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 4;

//=================================================
//Custom Frame Data indices
AG_NOZ_HOVER_SPRITE = 55; //Sprites to use while hovering (for aerial attacks)
HG_MUNO_OBJECT_LAUNCH_ANGLE = 77; //Thanks Muno
// Special values:
//  0: use normal angles
// -1: Horizontal Away (simulates Angle 0 flipper 3)
// -2: Radial Away (resembles flipper 8)

//=================================================
//Custom vfx & sprites

anim_reflector_shockwave_frame = 0;
anim_do_draw_twinkle = false;
anim_rand_twinkle = 0;
anim_rand_x = 0;
anim_rand_y = 0;

vfx_snow_twinkle = hit_fx_create(sprite_get("vfx_snow_twinkle"), 9);
vfx_ice_small = hit_fx_create(sprite_get("vfx_ice_small"), 4);
vfx_ice_big = hit_fx_create(sprite_get("vfx_ice_big"), 20);
vfx_ice_huge = HFX_ETA_ICE_BIG;

vfx_electric_twinkle = hit_fx_create(sprite_get("vfx_electric_twinkle"), 9);
vfx_spark_big = hit_fx_create(sprite_get("vfx_spark_big"), 20);
vfx_spark_huge = HFX_ABS_SWEET_BIG;

vfx_nspecial_spr = sprite_get("vfx_nspecial");
vfx_sleep = hit_fx_create(sprite_get("vfx_sleep"), 25);
vfx_lnotes = hit_fx_create(sprite_get("vfx_nspecial_notes_left"), 24);
vfx_rnotes = hit_fx_create(sprite_get("vfx_nspecial_notes_right"), 24);

vfx_frozen_sprite = sprite_get("vfx_frozen");

anim_hover_hair_frame = 0;
anim_hover_hair_rates = [0.15,0.25,0.35,0.5,0.75];
idle_hover_spr = sprite_get("idle_hover");
vfx_hair_hover_spr = sprite_get("vfx_hair_hover");
vfx_hair_exhausted_spr = sprite_get("vfx_hair_exhausted");

jex_hover_spr = sprite_get("jex_hover");
jex_hover_frame_counter = 0; //determines image_index of above sprite
vfx_thrusters_spr = sprite_get("jex_thrusters");
vfx_thrusters_empty = hit_fx_create(sprite_get("vfx_smokepuff"), 12);
thrusters_sfx = noone;
//for FSPECIAL
vfx_thrusters_charge = hit_fx_create(sprite_get("vfx_fspecial_charge"), 8);
vfx_steam_hit_mini = hit_fx_create(sprite_get("steam_hit_spr_mini"), 16);

vfx_reflect_shine_spr = sprite_get("reflect_shine");
vfx_reflect_shockwave_spr = sprite_get("reflect_shock");

anim_hud_rollin = 0;
anim_hud_fadeout = 0;
anim_hud_timers_max = 16;
hovermeter_spr = sprite_get("hovermeter");
hud_hovermeter_spr = sprite_get("hud_hovermeter");

pratland_spr = sprite_get("pratland");

article1_spr = sprite_get("article1");
article1_spike_spr = sprite_get("article1_spike");
article1_col_spr = sprite_get("article1_col");
vfx_article_despawn = hit_fx_create(sprite_get("article1_despawn"), 12);

anim_hairblink_timer = 0;
anim_hairblink_max = anim_hud_timers_max;

anim_indicatorflash_timer = 0;
anim_indicatorflash_max = anim_hud_timers_max;

anim_fakeparry_timer = 0;
//anim_fakeparry_fg = asset_get("new_dodge_spr");
anim_fakeparry_bg = asset_get("fx_parry_new");

noz_anim_back_flipping = false;
noz_anim_backflip_spr = sprite_get("doublejump_back");

//=================================================
//Rune flags
noz_rune_flags = 
{
    dstrong_spread: has_rune("A"),
    reflector: has_rune("B"),
    low_friction: has_rune("C"),
    air_control: has_rune("D"),
    nair_boost: has_rune("E"),
    aerial_strongs: has_rune("F"),

    frostbite: has_rune("G"),
    ice_longer: has_rune("H"),
    enhanced_dodge: has_rune("I"),
    jumpcancels: has_rune("J"),
    wide_strongs: has_rune("K"),

    cloud_explode: has_rune("L"),
    enhanced_hover: has_rune("M"),
    enhanced_sleep: has_rune("N"),
    climber_mode: has_rune("O")
}

//=================================================
// Stat reset flags
joke_explainer_mode = (get_synced_var(player) & 0x01) > 0; //Toggles JE7k Echo mode
request_stats_update = true;

//=================================================
//Balancing variables

noz_snowstack_timer_max = 60 * 6;
noz_snowimmune_timer_max = 60 * 2;
noz_frostzone_timer_max = 120; //maximum length of empoweredness
noz_snowstack_increment = 2; //ticks of chill per tick spent in zone
noz_frostzone_increment = noz_frostzone_timer_max; //ticks of empoweredness per tick spent in zone

noz_freeze_grav = 0.1;
noz_freeze_base_stun = 45;
noz_freeze_base_vsp = 5;
noz_freeze_mult_vsp = 0.010;
noz_freeze_max_hsp = 5;

noz_pratfall_max_vsp = 7;

noz_dtilt_proj_cooldown_max = 24;

//reflector rune 
noz_reflector_damage_max = 40;
noz_reflector_damage_min = 10;
noz_reflector_recharge_rate = 0.05;
noz_reflector_dmg_mult = 1.5;

noz_nspecial_radius = 50;
noz_nspecial_mashing_bonus = 1;
noz_nspecial_sleep_base = floor(95 * noz_nspecial_mashing_bonus);
noz_nspecial_sleep_early = floor(25 * noz_nspecial_mashing_bonus);
noz_nspecial_sleep_mult = 0.2 * noz_nspecial_mashing_bonus;
noz_nspecial_sleep_max = floor(180 * noz_nspecial_mashing_bonus);
noz_nspecial_sleepimmune_max = 90;
noz_nspecial_interruption_time = 16; //how long before sleeping if a move is in progress

noz_fspecial_airtime = 150;
noz_fspecial_lifetime = 800;
noz_fspecial_cooldown = 180;
noz_fspecial_ylock_max = 160; //lower value means higher position -- Y=0 is at the top of the screen
noz_fspecial_soft_cooldown_max = 240; //platforms created during this cooldown have no colliders

//joke explainer skull bash version
noz_fspecial_chargetime = 120;
noz_fspecial_misfire_frame = 7;
noz_fspecial_misfire_bonus = 0x99;

noz_uspecial_hover_max = 480 * (1 + noz_rune_flags.enhanced_hover);
noz_uspecial_short_cost = 60; // 1/8
noz_uspecial_medium_cost = 90; // 1/6
noz_uspecial_long_cost = 120; // 1/4
noz_uspecial_hover_recharge = 2;
noz_uspecial_hover_recharge_air = 0.5;
noz_uspecial_hover_vspeed = 2 + air_max_speed;
noz_uspecial_hover_exhaustion_base = 30;
noz_uspecial_hover_hspeed = 1.5 + air_max_speed;
noz_uspecial_hover_vstrength = 0.80;
noz_uspecial_hover_hstrength = 1.5 * air_accel;

noz_dspecial_cooldown = 300;
jex_dspecial_cooldown = 120;

//joke explainer thunder version
noz_dspecial_target_spawn_height = 350;
noz_dspecial_minimum_spawn_height = 150;

//Cloudkick
noz_cloudkick_mult = 0.33;
noz_cloudkick_scale = 50;
noz_cloudkick_friction = 0.33; //to lessen friction after a kick
noz_cloudkick_speed = 8;
//Extended clouds
noz_long_cloud_big = 180;
noz_long_cloud_small = 150;
noz_cloud_hit_restore_time = 30;

//=================================================
// Move variables/flags initialized here

at_jab_timesthrough = 0;
at_jab_true_total_timesthrough = 0;
at_nair_hover_need_grid_adjust = false;
at_dair_early_cancel = false;
at_dair_need_landing_lag_hitbox = false;

//reflector rune
at_reflector_damage_block = noz_reflector_damage_max;

//Airdash rune
at_airdash_prev_hsp = 0;
at_airdash_prev_vsp = 0;


at_fspecial_started_free = false;
at_fspecial_on_soft_cooldown = 0;
at_fspecial_soft_cooldown_timer = 0;

at_fspecial_missile_charge = 0;

at_uspecial_hovering = false;     // currently in hoverstate. removed on land, hitstun, walljump, airdodge, djump, dair, or on death
at_uspecial_was_hovering = false; // if you have ever hovered this airtime. only removed on true stage ground (or death)
at_uspecial_exhausted = false;    // if you ran out of hover (or canceled it early) 
at_uspecial_hover_meter = noz_uspecial_hover_max;

at_fspecial_cooldown_override = false;
at_uspecial_cooldown_override = false;

at_dspecial_thunder_feeler_pos = { x:x, y:y } //feeler will update this position.

noz_is_in_frost_zone = false; //if you are this exact frame in a snow zone (for buff reasons)
noz_frostzone_timer = 0; //wether you are empowered by the ice
noz_frostzone_empowered = false; //for individual attacks to track empowered properties

noz_climber_twin = noone; //master has the twin, twin has the master
noz_climber_is_master = !custom_clone; //wether it's the main one (custom_clone gets fiddled with)
noz_climber_is_dead = false; //wether a twin is waiting to respawn.
noz_climber_damage_restore = 0; //on death, damage returns to zero. surviving twin needs to restore the damage.



//=================================================
// Copy of other_init
// Ensures Nozomi can apply debuffs to herself
// Looking at you, Kirby >:]
noz_handler_id = noone;
noz_is_in_snow_zone = false;
noz_snowstack_timer = 0;
noz_snow_frostbite = false;
noz_snow_frostbite_dot_tick = 0;
noz_snowimmune_timer = 0;
noz_sleep_timer = 0;
noz_sleep_anim_timer = 0;
noz_sleepimmune_timer = 0;
noz_sleep_interrupt_timer = 0;
noz_sleep_last_joy_dir = -1;
noz_sleep_mashanim_timer = 0;
noz_freeze_timer = 0;
noz_freeze_vsp = 0;
noz_freeze_hsp = 0;
noz_freeze_anim_sprite = noone;
noz_freeze_anim_index = 0;
noz_freeze_anim_rotate = 0;
noz_freeze_anim_rotate_speed = 5;
jex_thunder_static_timer = 0;
//Kirby-specific
noz_has_kirby_ability = false;

//=================================================
// Compatibility Zone

//Pokémon Stadium
pkmn_stadium_front_img = sprite_get("cmp_stadium_front");
pkmn_stadium_back_img = sprite_get("cmp_stadium_back");
pkmn_stadium_name_override = "Nozomi";

//Mt. Dedede Stadium
arena_title = "Idol Figment";

//Trial Grounds
guiltySprite = sprite_get("cmp_trial_grounds");

//Hikaru
Hikaru_Title = "Idol Figment";

//Wall-E
walle_taunt_sound = sound_get("cmp_walle");
walle_taunt_type = 2;
walle_taunt_playing = false;
walle_taunt_buffer = 0;

//Miiverse
miiverse_post = sprite_get("cmp_miiverse");

//Kirby
enemykirby = noone;
kirbyability = 16;
swallowed = false;

//Agent N
nname = "Smol Nozomi"
ncode1 = "Class: Figment     Reward: $1000";
ncode2 = "Can fly with her twintails. Exhibits cryokinetic powers.";
ncode3 = "Wanted by 'Haltmann Works' for 'being weaboo trash'...?";

//Hypercam
uhc_victory_quote = "sno whalation remix (2014 ver) subsribe 4 more amv ^_^";

sprite_change_offset("cmp_uhc", 11, 8);
uhc_taunt_videos[0] = { sprite:sprite_get("cmp_uhc"), song:sound_get("cmp_uhc"), fps:12 };

//==========================================================
// Joke Explainer Costume-like structure
// The rest are handled by setting the sprites in the attack grid!

var spritelist = [ "idle", "jumpstart", "jump", "doublejump", "doublejump_back", "walljump", "land", 
"crouch", "walk", "walkturn", "dashstart", "dash", "dashturn", "dashstop", "parry", "airdodge", "waveland", 
"pratfall", "pratland", "hurt", "spinhurt", "tech", "roll_forward", "roll_backward" ];
noz_joke_explainer_sprites[array_length(spritelist)-1] = {};

for (var i = 0; i < array_length(spritelist); i++)
{
    var loopval = 0;
    switch (spritelist[i])
    {
        //certain replacements requires the animation to loop manually. 
        //tag them for animation.gml
        case "idle": loopval = PS_IDLE; break;
        case "walk": loopval = PS_WALK; break;
        case "dash": loopval = PS_DASH; break;
        case "pratfall": loopval = PS_PRATFALL; break;
        default: break;
    }

    noz_joke_explainer_sprites[i] = { 
          noz: sprite_get(spritelist[i]), 
          jex: sprite_get("jex_"+spritelist[i]),
          loops: loopval }
}