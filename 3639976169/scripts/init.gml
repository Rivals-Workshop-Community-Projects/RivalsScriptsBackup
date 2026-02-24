small_sprites = 1;

hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 80;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .15;
dash_anim_speed = .225;
pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 16;
initial_dash_speed = 7.5;
dash_speed = 6;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 6;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .4;
moonwalk_accel = 1.45;

jump_start_time = 5;
jump_speed = 13;
short_hop_speed = 8;
djump_speed = 10;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 9.5; //maximum fall speed without fastfalling
fast_fall = 12; //fast fall speed
gravity_speed = .65;
hitstun_grav = .5;
knockback_adj = 1.08; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 28;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 8.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 4;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med2");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = sound_get("waveland");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;




orb_slots = [ 0, 0, 0 ];

spr_orb_lightning = sprite_get("light_orb");
spr_orb_frost = sprite_get("frost_orb");
spr_orb_dark = sprite_get("dark_orb");
spr_orb_plasma = sprite_get("plasma_orb");
spr_arrow = asset_get("triangle_spr");
spr_meteor_fire = sprite_get("meteor_fire");

orb1 = instance_create(x, y, "obj_article1");
orb2 = instance_create(x, y, "obj_article1");
orb3 = instance_create(x, y, "obj_article1");

orb1.pos = 25;
orb1.orbID = 0;
orb1.sprite_index = sprite_get("orb_slot_primary");

orb2.pos = 0;
orb2.orbID = 1;

orb3.pos = -25;
orb3.orbID = 2;
temp_hit_fx = noone;
//temp_dualcast_id = 0;

position_delay = 
[
    x, y,    
    x, y,
    x, y,
    x, y,
    x, y,
    x, y,    
    x, y,
    x, y,
    x, y,
    x, y,
];

vfx_dark_orb = hit_fx_create(sprite_get("dark_orb_attack"), 30);
vfx_lightning_aura = hit_fx_create(sprite_get("lightning_aura"), 6);
vfx_hologram_vanish = hit_fx_create(sprite_get("hologram_vanish"), 20);
vfx_meteor_explode = hit_fx_create(sprite_get("meteor_explode"), 22);
vfx_meteor_land = hit_fx_create(sprite_get("meteor_land"), 22);

anim_landinglag = sprite_get("landinglag");

armor_duration = 0;
armor_temp = 0;
armor_cooldown = 0;
dualcast_orb = 0;

prev_attack = noone;
prev_attack_startup = 0;
prev_attack_endlag = 0;

hologram_valid_attack = AT_JAB;
hologram = noone;

energized = false;
energized_attack = false;

meteor_fx_obj = noone;
channeled_plasma = false;
charge_amount = 0;


// Enable the old frost orb behavior by setting this to true.
old_ice = has_rune("A");

// this should fix replay desync
//temp_clone = noone;
if (!custom_clone && !instance_exists(oTestPlayer))
{
    //temp_clone = instance_create(x, y-60, "oPlayer");
    //temp_clone.jump_to_attack = 0;
    hologram = instance_create(x, y, "oPlayer");
    hologram.owner = self;
    hologram.jump_to_attack = 0;
    hologram.super_armor = true;
    hologram.hologram_active = false;
    with (hologram)
    {
        user_event(3);
    }
}

// Character Compatibilities
TCG_Kirby_Copy = 15;
