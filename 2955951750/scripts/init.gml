//Snooping as usual, I see?
//Oxob for Rivals of Aether created by Trail Mix
//Oxob originally created by...Oxob.

hurtbox_spr = sprite_get("oxob_hurtbox");
crouchbox_spr = sprite_get("oxob_crouchbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 56;
idle_anim_speed = .15;
crouch_anim_speed = .1;
walk_anim_speed = .2;
dash_anim_speed = .25;
pratfall_anim_speed = .25;

walk_speed = 3.5;
walk_accel = 1;
walk_turn_time = 6;
initial_dash_time = 6;
initial_dash_speed = 6.5;
dash_speed = 6.4;
dash_turn_time = 6;
dash_turn_accel = 1;
dash_stop_time = 7;
dash_stop_percent = 0.8; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .4;
moonwalk_accel = 0.85;

jump_start_time = 5; 
jump_speed = 11.5;
short_hop_speed = 6;
djump_speed = 10.5;
leave_ground_max = 6.25; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6.25; //the maximum hsp you can have when jumping from the ground
air_max_speed = 3.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .35;
prat_fall_accel = .8; //multiplier of air_accel while in pratfall
air_friction = .05;
max_djumps = 1;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = 0.55;
hitstun_grav = .51;
walljump_hsp = 6.5;
walljump_vsp = 8.5;
walljump_time = 9;
wall_frames = 2;
double_jump_time = 31; //the number of frames to play the djump animation. Can't be less than 31.
knockback_adj = 0.97; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 15;
wave_land_time = 10;
wave_land_adj = 1.25; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = 0.25; //grounded deceleration when wavelanding

weakhit = hit_fx_create(sprite_get("weakhit"), 12);
weakhit2 = hit_fx_create(sprite_get("weakhit2"), 12);
mediumhit = hit_fx_create(sprite_get("mediumhit"), 17);
stronghit = hit_fx_create(sprite_get("stronghit"), 19);

nspec_floorhit = hit_fx_create(sprite_get("nspecialfloorvfx"), 12);
nspec_wallhit = hit_fx_create(sprite_get("nspecialwallvfx"), 12);
nspec_boltgeyser = hit_fx_create(sprite_get("nspecialbigfloorvfx"), 15);
nspec_airbolt = hit_fx_create(sprite_get("bolt"), 15);
fspecial_vfx = hit_fx_create(sprite_get("fspecialvfx"), 15);

nspec_vfx = noone;
nspec_air_frame = -1;
nspec_air_timer = 0;
nspec_air_limit = 190;

shield_health = 24.00; //Amount of health Oxob's shield (DSPECIAL) currently has.
shield_health_max = 24.00; //Amount of health Oxob's shield (DSPECIAL) can have.
shield_health_regen = 0.1; //Amount of health Oxob's shield regenerates when not in use.
shield_afterhit = false; //used to handle hitboxes of a group that hit the shield when they hit oxob after he drops it
hud_ping_timer = 0;
battery_vis = 0; //transparency of the shield meter when it appears below oxob
battery_vis_gain = 0; //how much to change shield meter transparency each frame
battery_vis_timer = 0; //timer for shield meter transparency changes

shield_mask = sprite_get("dspecial_mask");
collision_mask = mask_index;

shield_hit_player_dir = 1; //Where the opponent is when they hit Oxob's shield. used for shield push calculation.
shield_stun = 0; //Extra time where Oxob cannot lower shield after being hit. May not be used.

dash_cancel = 0; //Whether Oxob is preforming the necessary steps to do a dash cancel (releasing left/right, being in dash or dattack, pressing attack)
dash_cancel_attack = 0; //Whether Oxob is actually dash cancelling.

dstrong_timer = 0; //Used to determine airdodge/djump cancel frame after dstrong in case the player falls off ledge during the move
spin_timer = 0; //Used to determine fspecial/super uspecial endlag periods
fspecial_timer = 0; //Used to determine when fspecial multihit should end
fspec_opp_y = 0; //Set when boosted fspec lands to determine the origin point
uspec_kb_ramp = 0; //Used to determine boosted uspec's bkb, increasing knockback with distance fallen
uspec_kbs_ramp = 0;

fspecial_spin_cancel = 0; //Set to 1 if fspecial hit a player, used to determine if the player can cancel the spin into an attack
fspecial_wall_bounces = 0; //Amount of wall bounces FSpecial has done this airtime.
uspecial_slammed = 0; //used to prevent infinite damage from uspecial
uspecial_target = noone;

snapped_to_ledge = false; //Used for FSpecial's ledge forgiveness

//FIELD SYSTEM INIT.GML (by Delta Parallax)
//Defines variables neccesary for the field and other systems to function.

var cur = get_player_color(player); //The current alt being used.
var use_white = (cur == 8 or cur == 9); //Whether to use white for the field's inner glow

player_field_vars = {
    field_obj : noone, //A pointer to the field article.
    field_soundobj : noone,//A point to the sound instance when in the field.
    field_sound_debug_toggle : false, //debug var, for making the sound not play
    init_radius : 40, //Field's radius upon being created.      //Was 60
    bounds : [40,200], //Minimum and maximum values of the radius of the field at any one time.         //was 40,180
    despawn_time : 0, //How long to wait at minimum until the field despawns
    in_field : false, //Whether you are inside the field
    boosted : false, //Whether you started the current special inside of the field. not read for every special, only certain ones
    decay : 0.3, //How many px the field's radius should decrease by every frame.                  //was 0.14
    parried_decrease : 50, //How many px the field's radius decreases by when parried.
    hitplayer_growth : 2.75, // How many px the field's radius should increase by per % dealt when an enemy is hit.      //was 2.5
    radius_smooth_amount : 0.25, //Value between 0-1 to control how fast the visual circle's radius should update to its actual value. 0 means that the value will not change and 1 means the change will be instant.
    uses_additive_blending : true, //Whether to use additive blending. 
    circle_color : use_white ? c_white : make_color_rgb(get_color_profile_slot_r(cur,1),get_color_profile_slot_g(cur,1),get_color_profile_slot_b(cur,1)), //The color used for the glow.
    circle_part_increment : 2.1, //How much to separate the electricity sprites on the field.
    circle_glow_speed : 1 / (8*pi), //A lower value means a slower glow pulse speed.
    circle_glow_amplitude : 0.15, //The amplitude of the glow for the field.
    circle_glow_midpoints : [0.2, 0.3], //Minimum and maximum midpoint alpha values for the glow.
    circle_glow_numsides : 20, //How many sides to use for the glow.
    after_images_on : true, //Whether to spawn after images in the field.
    after_images : ds_list_create(), //Afterimage list.
    after_image_speed_threshold : 3, //Only spawn afterimages if your speed is above this number.
    after_image_alpha : 0.5, //starting alpha for the after image
    after_image_alpha_decay : 0.07, //How much the after image fades out per frame.
    after_image_spawn_interval : 4, //Interval, in frames, between after image spawns.
    after_image_color : use_white or (cur == 4) ? c_white : make_color_rgb(get_color_profile_slot_r(cur,1),get_color_profile_slot_g(cur,1),get_color_profile_slot_b(cur,1)) //The color used for the glow.
}

//enhanced Fspecial variables (JPEG Warrior)
fspec_angle = 0; //angle boosted fspec is currently at
fspec_angle_target = 0; //angle fspec is trying to be at
fspec_angle_adjust = 5; //how quickly homing fspec turns during startup. higher number means slower homing.
fspec_angle_limit = 75; //limit to how far fspecial can seek opponents
fspec_speed = 22; //speed of enhanced fspecial
fspec_turn_adjust = 6; //how quickly homing fspecial attempts to turn during travel. higher number means FASTER turning.

//dashing = 0; //used to alter immediate running shorthop speed
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
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 3;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 2;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 2;
roll_forward_max = 9.5; //roll speed
roll_backward_max = 9.5;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//compatibility

miiverse_post = sprite_get("miiversepost");

//HIT DETECTION
//its supposed to be for articles but i think i got this ngl
hbox_group = array_create(4,0);
var i1 = 0;
var i2 = 0;
repeat(4) {
    hbox_group[@i1] = array_create(50,0);
    repeat(50) {
        hbox_group[@i1][@i2] = array_create(10,0);
        i2++;
    }
    i2 = 0;
    i1++;
}
 
hitstun = 0;
hitstun_full = 0;
 
kb_adj = 1;
kb_dir = 0;
orig_knock = 0;
 
hit_lockout = 0;
 
article_should_lockout = false; //set to false if you don't want hit lockout.