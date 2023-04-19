if (!custom_clone) {
    hurtbox_spr = sprite_get("melon_hurtbox");
    crouchbox_spr = sprite_get("melon_crouchbox");
    air_hurtbox_spr = -1;
    hitstun_hurtbox_spr = -1;
} else {
    hurtbox_spr = sprite_get("clone_hurt");
    crouchbox_spr = sprite_get("clone_hurt");
    air_hurtbox_spr = sprite_get("clone_hurt");
    hitstun_hurtbox_spr = sprite_get("clone_hurt");
}

le_stinkeyBingus = false;

char_height = 52;
idle_anim_speed = .15;
crouch_anim_speed = .1;
walk_anim_speed = .25;
dash_anim_speed = .25;
pratfall_anim_speed = .25;

walk_speed = 2.8;
walk_accel = 0.2;
walk_turn_time = 8;
initial_dash_time = 13;
initial_dash_speed = 6.4;
dash_speed = 5.8;
dash_turn_time = 15;
dash_turn_accel = 1.5;
dash_stop_time = 5;
dash_stop_percent = .8; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .35;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 6;
djump_speed = 12;
leave_ground_max = 4.5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 4.5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 2; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .17;
prat_fall_accel = 1; //multiplier of air_accel while in pratfall
air_friction = .03;
max_djumps = 1;
double_jump_time = 36; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 13; //maximum fall speed without fastfalling
fast_fall = 16; //fast fall speed
gravity_speed = .55;
hitstun_grav = .45;
knockback_adj = 0.95; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 12;
wave_land_time = 6;
wave_land_adj = 1.4; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .03; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 3;
crouch_active_frames = 1;
crouch_recovery_frames = 4;

//parry animation frames
dodge_startup_frames = 3;
dodge_active_frames = 1;
dodge_recovery_frames = 5;

//tech animation frames
tech_active_frames = 1;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 2;
techroll_active_frames = 6;
techroll_recovery_frames = 3;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 6;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 6;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 2;
roll_back_active_frames = 6;
roll_back_recovery_frames = 3;
roll_forward_max = 8.5; //roll speed
roll_backward_max = 8.5;

land_sound = asset_get("sfx_land_light");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = sound_get("se_plop2");
air_dodge_sound = sound_get("SE_Watermelon");

// Hit Effects
juiceFX = hit_fx_create( sprite_get("hfx_juice"), 28 );
commetFX = hit_fx_create( sprite_get("fx_comet_hammer"), 32 );
bookpickFX = hit_fx_create( sprite_get("fx_bookpick"), 21 );
jackpickFX = hit_fx_create( sprite_get("fx_jackpick"), 21 );
dynamitepickFX = hit_fx_create( sprite_get("fx_dynamitepick"), 21 );
jacksmallFX = hit_fx_create( sprite_get("fx_jackssmall"), 20 );
jackbigFX = hit_fx_create( sprite_get("fx_jacksbig"), 21 );

// Particles
set_hit_particle_sprite( 1, sprite_get( "book_particle" ) );
set_hit_particle_sprite( 2, sprite_get( "jacks_particle" ) );
set_hit_particle_sprite( 3, sprite_get( "dynamite_particle" ) );

// Victory Stuff

set_victory_bg(sprite_get("melon_victory_bg"));

set_victory_theme( sound_get( "omor_grimey" ));

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

// Custom Stuff
FlytrapID = 0
FlytrapCooldownTimer = 0;

atk_FStrongChargeTimer = 0;

atk_FSpecialUsed = false;

atk_noDSpecial = false;

atk_DAirJumpTime = 0; 
// If in DAir it is the time before you are allowed to jump out of the move
// If not in dair it is a delay before you are allowed to jump
atk_DAirJumps = 0;
atk_DAirSpeed = 10;
atk_DairBounces = 0;

atk_NSpecialRechargeTimer = -1;
atk_NSpecialProjectile = 1;
// 1 = Book
// 2 = Jacks
// 3 = dynamite

isPlaytest = (object_index == oTestPlayer);

// Article controller vibration

// Note: WHY DOES THIS HAVE TO BE SO HARD. ITS LEGIT 1 LINE OF CODE
//       ON A BANNED FUNCTION WHY :skull_emoji:

CV_cloneID = -4;

// The COMMAND GRAB Code
// By Wabungus!

// Grab Movement:

/* The following variables are used by the method in attack_update.gml
 * They are what actually causes the 'grab' part of the grab, including
 * moving the caught object around and whatnot.
 */

// Makes lowest number player with grab code run all the other functions
// This is mainly for accessing outside stuff
otherRunTime = 0; // Increments to make sure all characters are loaded
otherRunIsHighest = true; // if true this player will run others

// Id of the object to be grabbed (supports articles & players)
grabId = 0;

// Total number of movements for grab
grabPositionsTotal = 0;

// Current movement to be performing
grabPositionsCurrent = 0;

// Easing Timer for Grab Movements
grabEasingTimer = 0;

// Position of grabbed object at start of move
grabStartX = 0;
grabStartY = 0;

// Remaining time in window when grab activates (-1 means it hasn't been set yet)
grabWindowRemaining = -1;

// Final Value Changes Check - If ones grab windows last longer than the length
//                             of time designated for movement, this makes sure
//                             that the opponent stays in place until the end
grabHoldPosition = false;

// Visibilty Reset
grabVisibleReset = false; // Makes object visible at end of grab

// Grab Activation:

/* These are variables that are relevant to how the player would activate
 * the grab in various locations and with various types of objects.
 * This code is best suited for usage on players and articles, however I
 * have included the ability to grab player's hitboxes as well.
 */

// Values used for if grabbed object falls out of grab early somehow 
// (EX: grab canceled due to landing lag)
grabOpponetDamage = 0;
grabKnockbackScaling = 0;
grabHitBoxDamage = 0;
grabKnockback = 0;
grabLaunchAngle = 0;

// - Hitbox Specific: 
// Hitbox IDs to check when grabbing
grabHitboxID = ds_list_create();
grabIsHitbox = false; // Used for reseting hit priority

// - Article Specific:
// none currently

// What kinds of things will this move grab
grabCanPlayer = false;
grabCanHitbox = false;
grabCanArticle = false;

// Grab Drop Info

// Lets the grab code know this is a player
grabObjectType = 1;

/* Grabbable Object Types
 * 1 = Player
 * 2 = Hitbox
 * 3 = Article (note: must have article_hit.gml active)
 */
