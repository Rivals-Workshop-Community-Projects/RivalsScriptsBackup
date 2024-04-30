// init.gml
// https://rivalslib.com/workshop_guide/programming/reference/scripts/init_and_attack_scripts.html#initializing-variables
// Initializes your character's variables. Runs at the beginning of a match.
// Many of them are built-in variables to do with movement or animation, 
// but you can also initialize any variables you need for your complex behavior, such as `laser_charge = 0`.


// Basecast frame data: docs.google.com/spreadsheets/d/19UtK7xG2c-ehxdlhCFKMpM4_IHSG-EXFgXLJaunE79I

char_height = 64 // 36 – 74. Purely aesthetic. Used for centering things on the character, placing the overhead HUD, etc

knockback_adj = .9 //.9 – 1.2. The multiplier to knockback dealt to you: 1 = default value higher values = lighter character lower values = heavier character

// MOVEMENT

// Ground Movement
walk_speed = 3 // 3 - 4.5. The maximum speed you can achieve while walking, in pixels per frame
walk_accel = 0.35 // .2 – .5. The speed gained per frame while walking
walk_turn_time = 6 // 6 for all characters. The number of frames it takes to turn around

initial_dash_time = 8 // 8 – 16. The number of frames in your initial dash
initial_dash_speed = 6.25 // 4 – 11. The speed of your initial dash in pixels per frame
dash_speed = 5.5 // 4.75 – 9. The speed of your run in pixels per frame
dash_turn_time = 10 // 8 – 20. The number of frames it takes to turn while running
dash_turn_accel = 1.3 // .1 – 2. The acceleration applied when turning while running
dash_stop_time = 6 // 4 – 6. The number of frames it takes to stop while running
dash_stop_percent = .35 // .25 – .5. the value to multiply your hsp by when going into idle from dash or dashstop

ground_friction = .5 // .3 – 1. Natural deceleration while on the ground
moonwalk_accel = 1.25 // 1.2 – 1.4.	The acceleration to apply while moonwalking

roll_forward_max = 11 // 9 – 11. The speed of your forward roll
roll_backward_max = 11 // 9 – 11. The speed of your backward roll

techroll_speed = 10 // 8 – 11. The speed during techroll’s movement

// Landing
land_time = 4 // 4 – 6. The number of frames in your normal landing state
prat_land_time = 18 // 3 – 24. The number of frames in your prat land state
wave_land_time = 12 // 6 – 12 usually 8. The number of frames your waveland state lasts
wave_land_adj = 1.25 // 1.2 – 1.5. The multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .15 // 0 – .15. Grounded deceleration when wavelanding

// Air Movement
air_dodge_speed = 8 // 7.5 – 8	The speed during airdodge’s movement

air_accel = .3 // .2 – .4. The hsp acceleration applied when you hold left or right in a normal aerial state
prat_fall_accel = .85 // .4 – 1.5.	A multiplier to your normal horizontal aerial acceleration: 1 = normal 0 = no acceleration
air_friction = .03 // .02 – .07. Natural deceleration applied while in the air. Also applies while in hitstun, increasing survivability

max_fall = 10 // 8 – 11. The maximum vsp you can accelerate to while falling normally
fast_fall = 14 // 11 – 16. The vsp applied when fastfalling
gravity_speed = .5 // .3 – .6. The gravitational acceleration applied in non-hitstun aerial states
hitstun_grav = .5 // .45 – .525. The gravitational acceleration applied in hitstun. Changes to this have large consequences to your character's survivibility

// Jumping
max_djumps = 1 // The max number of double jumps you can use.

short_hop_speed = 6 // 4 – 7.4	The vsp applied when shorthopping
jump_speed = 10.5 // 7.6 – 12. The vsp applied when fullhopping
djump_speed = 10 // 8 – 12 (-1 for Absa). The vsp applied when double jumping
djump_accel = 0 // 0 (-1 for Absa). Requires djump_accel_end_time to be set
djump_accel_end_time= 0 // The duration that djump_accel is applied.

leave_ground_max = 7 // 4 – 8. The maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 4.5 // 4 – 8. The maximum hsp you can have when jumping from the ground
air_max_speed = 4 //3 – 7. The maximum hsp you can accelerate to when in a normal aerial state

jump_start_time = 5 // 5 for all characters. The number of frames of jumpsquat minus one
jump_change = 3 // 3 for all characters. The hsp applied if left or right is held when jumping. Will not slow you down if you’re already going faster. When reversing your momentum with a double jump, this is the maximum hsp you can have


// Wall Jumping
walljump_hsp = 5 // 4 – 7. The horizontal speed to apply while walljumping, in pixels per frame
walljump_vsp = 9 // 7 – 10. The vertical speed to apply while walljumping, in pixels per frame
walljump_time = 32 // 18 – 32.	The number of frames the walljump state takes. Normally 32, but some characters have shorter values


// ANIMATION

// Animation Speeds
idle_anim_speed = .15 //The speed of your idle animation in anim frames per gameplay frame
walk_anim_speed = .15 //The speed of your walk animation in anim frames per gameplay frame
dash_anim_speed = .2 //The speed of your dash animation in anim frames per gameplay frame
pratfall_anim_speed = .25 //The speed of your pratfall animation in anim frames per gameplay frame
crouch_anim_speed = .15 //	The speed of your (held) crouch animation in anim frames per gameplay frame

// Jump
double_jump_time = 32 // 24 – 40. The number of frames to play the double jump animation. Most characters have a value of 32 so that the double jump animation transitions into the falling portion of the normal jump animation 

// Crouch Animation Frames
crouch_startup_frames = 6 // The number of animation frames during crouch’s startup
crouch_active_frames = 19 // The number of animation frames during crouch's active frames
crouch_recovery_frames = 2 // The number of animation frames during crouch’s recovery

// Parry Animation Frames
dodge_startup_frames = 1 // Number of animation frames during parry’s startup. Usually just 1
dodge_active_frames = 2 //	Number of animation frames during parry’s active frames
dodge_recovery_frames = 4 // Number of animation frames during parry’s recovery frames

// Tech Animation Frames
tech_active_frames = 3 // The number of animation frames during tech in place’s invincibility
tech_recovery_frames = 1 // The number of animation frames during tech in place’s recovery

// Tech Roll Animation Frames
techroll_startup_frames = 2 // The number of animation frames during techroll’s startup
techroll_active_frames = 2 // The number of animation frames during techroll’s movement
techroll_recovery_frames = 2 // The number of animation frames during techroll’s recovery

// Airdodge Animation Frames
air_dodge_startup_frames = 2 // The number of animation frames during techroll’s startup
air_dodge_active_frames = 2 // The number of animation frames during techroll’s movement
air_dodge_recovery_frames = 3 // The number of animation frames during techroll’s recovery

// Roll Animation Frames
roll_forward_startup_frames = 2 // The number of animation frames during roll forward’s startup
roll_forward_active_frames = 2 // The number of animation frames during roll forward’s movement
roll_forward_recovery_frames = 2 // The number of animation frames during roll forward’s recovery
roll_back_startup_frames = 2 // The number of animation frames during roll backward’s startup
roll_back_active_frames = 2 // The number of animation frames during roll backward’s movement
roll_back_recovery_frames = 2 // The number of animation frames during roll backward’s recovery

// SPRITES
// my_spr = sprite_get("my_sprite") // Loads from sprites/my_sprite_stripX.png
// Hurtbox Sprites
hurtbox_spr = sprite_get("rhubarb_hurtbox")
crouchbox_spr = sprite_get("crouch_hurtbox")
air_hurtbox_spr = -1  // -1 means use hurtbox_spr
hitstun_hurtbox_spr = -1   // -1 means use hurtbox_spr

// SOUNDS
// my_sfx = sound_get("my_sfx") // Loads from sounds/my_sfx.ogg
// Movement Sounds
land_sound = asset_get("sfx_land_heavy")
landing_lag_sound = asset_get("sfx_land")
waveland_sound = asset_get("sfx_waveland_ran")
jump_sound = asset_get("sfx_jumpground")
djump_sound = asset_get("sfx_jumpair")
air_dodge_sound = asset_get("sfx_quick_dodge")

// VFX
// my_vfx = hit_fx_create(my_spr, duration)

vfx_sludge_bubble = hit_fx_create( sprite_get("bubble_pop_fx"), 12);

vfx_sludge_bubble_2 = hit_fx_create( sprite_get("bubble_pop_fx_2"), 28);

vfx_sludge_smallest = hit_fx_create( sprite_get( "fx_sludge_smallest"), 20);

vfx_sludge_smaller = hit_fx_create( sprite_get( "fx_sludge_smaller"), 20);

vfx_sludge_small = hit_fx_create( sprite_get( "fx_sludge_small"), 24);

vfx_sludge_large = hit_fx_create( sprite_get( "fx_sludge_large" ), 28 );

vfx_sludge_large_2 = hit_fx_create( sprite_get( "fx_sludge_large_2" ), 32 );

set_hit_particle_sprite(1, sprite_get("hit_fx_sludge"));

//Sprites
// spr_nspecial_proj = sprite_get("nspecial_proj")


// SFX
// sfx_example = sound_get("example") // sounds/example.ogg

// VFX
// vfx_example = hit_fx_create(spr_example, 54)

set_victory_bg(sprite_get("victory_bg"));
set_victory_theme(sound_get("rhubarb_victory"));


// Visual offsets for when you're in Ranno's bubble
bubble_x = 0
bubble_y = 8

prev_x = x;

// air_max_speed = 7;
// air_accel = .8;

// my variables
HG_SLUDGE_EFFECT = 84;

spawn_index = 0;

var alt = get_player_color(player);
sludge_color = make_color_rgb(get_color_profile_slot_r(alt, 2), get_color_profile_slot_g(alt, 2), get_color_profile_slot_b(alt, 2));
disease_color = make_color_rgb(get_color_profile_slot_r(alt, 7), get_color_profile_slot_g(alt, 7), get_color_profile_slot_b(alt, 7));
sludge_hbox_color = make_color_rgb(get_color_profile_slot_r(0, 2), get_color_profile_slot_g(0, 2), get_color_profile_slot_b(0, 2));

ustrong_charge_sound = noone;
sludge_puddle_id = noone;
sludge_geyser_id = noone;
dstrong_mobile = false;
geyser_indicator_sound = noone;
geyser_spawn_x = 0;
geyser_spawn_y = 0;
geyser_fail = false;
prev_g_x = 0;
prev_g_y = 0;
sludge_slowed = false;

// rune variables
if(has_rune("F")){
    air_max_speed = 7;
    air_accel = .8;
}

screen_wrapped = false;
kill_goof = false;
stored_percent = 0;
nair_spins = 0;
nair_spins_max = 8;
rune_respawn = has_rune("O");

genesis = false;

if(get_player_color(player) == 17 || get_player_name(player) == "GLITCH"){
	genesis = true;
	
	var col_r = get_color_profile_slot_r( get_player_color(player), 2);
	var col_g = get_color_profile_slot_g( get_player_color(player), 2);
	var col_b = get_color_profile_slot_b( get_player_color(player), 2);
	
	var col_final = make_color_rgb(col_r, col_g, col_b);
	
	glitch_color = col_final;
}

if(get_player_color(player) == 17){
	glitch_color = c_red;
}

gX_glitch_sound = noone;

//Custom Hitbox Colors System (by @SupersonicNK)
HG_HITBOX_COLOR = 79; //This can be any number above 57 and below 100. It is recommended that you put this number below Munophone's starting_hg_index value, to prevent conflicts.

//Sprite Setup
//knockback arrow sprite
__kb_arrow_spr = asset_get("knock_back_arrow_spr")
//actual hitbox sprites
var w = 100
__hb_circle_t = sprite_get("hitbox_circle_trans");
    sprite_change_offset("hitbox_circle_trans",w,w);
    sprite_change_collision_mask("hitbox_circle_trans",false,0,0,0,0,0,0);
__hb_rect_t = sprite_get("hitbox_square_trans");
    sprite_change_offset("hitbox_square_trans",w,w);
    sprite_change_collision_mask("hitbox_square_trans",false,0,0,0,0,0,0);
__hb_r_rect_t = sprite_get("hitbox_rounded_rectangle_trans");
    sprite_change_offset("hitbox_rounded_rectangle_trans",w,w);
    sprite_change_collision_mask("hitbox_rounded_rectangle_trans",false,0,0,0,0,0,0);
__hb_hd_spr = [__hb_circle_t, __hb_rect_t, __hb_r_rect_t];
//drawn hitbox sprite
__hb_draw_spr = sprite_get("hitbox_shapes");
    sprite_change_offset("hitbox_shapes",w,w);

has_recolored_hitboxes = false;