// Muno template



// Character-specific variable initialization could go here

// Used for Sandbert's example cheat code (example of char-specific variable, too)
//rainbow_color = c_white;

//debug
debugtime = false;

//sun stuff
in_shade = false;
//sun timer
SUN_DAMAGE_DEFAULT = 70;
sun_damage_timer = SUN_DAMAGE_DEFAULT;
//baby init
babycount = 0;
babyfollowingcount = 0;
storedbabyfcount = 0;
babythrown = false;
babying = false;
babysucktimer = 0;
lowest = 10;
//cloud init
cloudspittimer = 0;
isspitting = false;
//hook init
hookattached = true;
hookpulltime = 10;
hookorigin = x;
hk = noone;
//temp pos
temp_x = 0;
temp_y = 0;
//fsmash
timesspun = 0;
SPIN_TIMES = 3;
//uspecial
udir = 0;
ux = 0;
uy = 0;
udest_x = 0;
udest_y = 0;
uradius = 225;
utimer = 0;
UTIMER_MAX = 30;
uatebaby = false;
//utilt
dangle = 0;
orbit = 20;
//bair
BANGLE_START = 270;
bangle = BANGLE_START;
//dash attack
DASH_REPEAT_AMT = 1;
currdashrepeat = 0;
//sfx flag
playleechheal = false;

//thank u mawral
grabbed_player_obj = noone;    //the player object currently being grabbed.
grabbed_player_relative_x = 0; //the relative x and y position of the grabbed player, at the point they were grabbed.
grabbed_player_relative_y = 0;   //we store this coordinate to smoothly reposition the grabbed player later.

// Stats - comment contains base cast range and notes. all stats are zetterburn's unless specified otherwise in the notes

// Physical size
char_height         = 60;       
knockback_adj       = 1;		

// Ground movement
walk_speed          = 3.25;		
walk_accel          = 0.2;		
walk_turn_time      = 6;	    
initial_dash_time   = 14;		
initial_dash_speed  = 8;		
dash_speed          = 7;		
dash_turn_time      = 10;		
dash_turn_accel     = 0.75;		
dash_stop_time      = 6;		
dash_stop_percent   = 0.35;		
ground_friction     = 0.4;		
moonwalk_accel      = 1.3;		
    
// Air movement
leave_ground_max    = 7;		
max_jump_hsp        = 5.5;		
air_max_speed       = 6;  		
jump_change         = 3;		
air_accel           = 0.4;		
prat_fall_accel     = 0.4;		
air_friction        = 0.06;		
max_fall            = 8.5;		
fast_fall           = 15;		
gravity_speed       = 0.5;		
hitstun_grav        = 0.45;		

// Jumps
jump_start_time     = 5;	
jump_speed          = 11;	
short_hop_speed     = 7;	
djump_speed         = 10;	
djump_accel         = 0;      
djump_accel_end_time= 0;      
max_djumps          = 2;	
walljump_hsp        = 5.5;	
walljump_vsp        = 8;	
land_time           = 4;	
prat_land_time      = 22;	

// Shield-button actions
wave_friction       = 0.05;	
roll_forward_max    = 9;      
roll_backward_max   = 9;      
wave_land_time      = 10;	
wave_land_adj       = 1.3;	
air_dodge_speed     = 8;      
techroll_speed      = 9;      



// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.15;
crouch_anim_speed   = 0;
walk_anim_speed     = 0.15;
dash_anim_speed     = 0.25;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 32;		
walljump_time       = 32;		
wall_frames         = 2;		

// Crouch
crouch_startup_frames   = 2;
crouch_active_frames    = 8;
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

// Parry
dodge_startup_frames    = 0;
dodge_active_frames     = 1;
dodge_recovery_frames   = 4;

// Tech
tech_active_frames      = 3;
tech_recovery_frames    = 3;

// Tech roll
techroll_startup_frames     = 8;
techroll_active_frames      = 12;
techroll_recovery_frames    = 14;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 4;
air_dodge_recovery_frames   = 3;

// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 4;
roll_forward_recovery_frames    = 3;
roll_back_startup_frames        = 1;
roll_back_active_frames         = 4;
roll_back_recovery_frames       = 3;

// Character-specific sprites init

// Projectile
spr_nspecial_proj = sprite_get("nspecial_proj");

// SFX init
sfx_babyborn = sound_get("babyborn");
sfx_babythrow = sound_get("babythrow");
sfx_eggland = sound_get("eggland");
sfx_eggspew = sound_get("eggspew");
sfx_leechheal = sound_get("heal");
sfx_leechsuck = sound_get("suck");
sfx_smokespit = sound_get("smokespit");
sfx_hookstick = sound_get("hookstick");
sfx_hookpull = sound_get("hookpull");
//sin
sfx_griffinborn = sound_get("buh");
sfx_griffinthrow = sound_get("griffinthrow");

// VFX init
vfx_smoke = hit_fx_create(sprite_get("smoke"), 15);

//plat sprites init
plat_behind = sprite_get("plat_behind");

//hud init

// Hurtbox sprites
hurtb_spr = sprite_get("idle_hurt");
hurtbox_spr = hurtb_spr;
crouchbox_spr       = sprite_get("crouch_hurt");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg(sprite_get("vlamprey_victory_bg"));
set_victory_theme(sound_get("tocatavictory"));

// Movement SFX
land_sound          = asset_get("sfx_land_light");
landing_lag_sound   = asset_get("sfx_land_med");
waveland_sound      = asset_get("sfx_waveland_ran");
jump_sound          = asset_get("sfx_jumpground");
djump_sound         = asset_get("sfx_jumpair");
air_dodge_sound     = asset_get("sfx_quick_dodge");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

killarticles = false;

/*if (get_player_color(player) == 2){
    for(i = 0; i < 6; i++){
        set_character_color_shading(i, 0);
    }
}*/


// Muno template: (don't change)

//user_event(14); // General init