
// Physical size
char_height         = 80;       //                  
knockback_adj       = 1;		// 0.9  -  1.2

// Ground movement
walk_speed          = 3.5;		// 3    -  4.5
walk_accel          = 0.4;		// 0.2  -  0.5
walk_turn_time      = 6;	    // 6
initial_dash_time   = 12;		// 8    -  16
initial_dash_speed  = 7.5;		// 4    -  9
dash_speed          = 7;		// 5    -  9
dash_turn_time      = 10;		// 8    -  20
dash_turn_accel     = 2;		// 0.1  -  2
dash_stop_time      = 5;		// 4    -  6
dash_stop_percent   = 0.35;		// 0.25 -  0.5
ground_friction     = 0.9;		// 0.3  -  1
moonwalk_accel      = 1.2;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 7;		// 4    -  8
max_jump_hsp        = 5;		// 4    -  8
air_max_speed       = 5;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.3;		// 0.2  -  0.4
prat_fall_accel     = 0.85;		// 0.25 -  1.5
air_friction        = 0.05;		// 0.02 -  0.07
max_fall            = 10;		// 6    -  11
fast_fall           = 12;		// 11   -  16
gravity_speed       = 0.5;   	// 0.3  -  0.6
hitstun_grav        = 0.5;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                
jump_speed          = 10	    // 7.6  -  12       
short_hop_speed     = 6;		// 4    -  7.4
djump_speed         = 10;		// 6    -  12       
djump_accel         = 0;        // -1.4 -  0        
djump_accel_end_time= 0;        //                  
max_djumps          = 1;		// 0    -  3        
walljump_hsp        = 6;		// 4    -  7
walljump_vsp        = 12    	// 7    -  10
land_time           = 6;		// 4    -  6
prat_land_time      = 10;		// 3    -  24      

// Shield-button actions
wave_friction       = 0.15;		// 0    -  0.15
roll_forward_max    = 9;        // 9    -  11
roll_backward_max   = 9;        // 9    -  11       always the same as forward
wave_land_time      = 8;		// 6    -  12
wave_land_adj       = 1.2;		// 1.2  -  1.5      
air_dodge_speed     = 7.8;      // 7.5  -  8
techroll_speed      = 10;       // 8    -  11



// Character-specific assets init

//Sprites
spr_example = sprite_get("example"); // sprites/example_stripX.png

// Down Staff
dairbounce = false; //DAIR BOUNCES OFF THE GROUND

// SFX
sfx_example = sound_get("example"); // sounds/example.ogg

// VFX
vfx_example = hit_fx_create(spr_example, 54);

// Variables
rainbow_color = c_white; // (used for one of Sandbert w/ a Phone's cheat codes)

//Voice Sounds
voice_lines = true;

nspecial_voice = sound_get("kero");

taunt_voice = sound_get("oya")

// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.1;
crouch_anim_speed   = 0.1;
walk_anim_speed     = 0.125;
dash_anim_speed     = 0.2;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 40;		// 24   -  40
walljump_time       = 40;		// 18   -  32
wall_frames         = 2;		

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 2;
dodge_recovery_frames   = 3;

// Tech
tech_active_frames      = 3;
tech_recovery_frames    = 1;

// Tech roll
techroll_startup_frames     = 1;
techroll_active_frames      = 4;
techroll_recovery_frames    = 2;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 4;
air_dodge_recovery_frames   = 2;

// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 4;
roll_forward_recovery_frames    = 2;
roll_back_startup_frames        = 1;
roll_back_active_frames         = 4;
roll_back_recovery_frames       = 2;

// Crouch
crouch_startup_frames   = 3;
crouch_active_frames    = 8;
crouch_recovery_frames  = 3;


// Hurtbox sprites
hurtbox_spr         = sprite_get("setsuka_hurt_box");
crouchbox_spr       = sprite_get("setsuka_crouch_box");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

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

//Variables
rolled_id = noone;
ballspeed = 0;

// Specials
ball_sprite0 = sprite_get("billiardball");

ball_snooker1 = sprite_get("snookerball");
ball_snooker2 = sprite_get("snookertrap");

chalk_sprite = sprite_get ("chalk1");
chalk_burst1 = hit_fx_create( sprite_get( "chalk2" ), 20 );
chalk_burst2 = hit_fx_create( sprite_get( "chalk3" ), 20 );

// Miiverse

miiverse_post = sprite_get("setsuka_miiverse");

// Pokemon Stadium

pkmn_stadium_front_img = sprite_get("setsuka_front_sprite");
pkmn_stadium_back_img = sprite_get("setsuka_back_sprite");
pkmn_stadium_name_override = "Setsuka";

//Kirby

kirbyability = 16;
swallowed = 0;

// Dracula

dracula_portrait = sprite_get("dracula_portrait");
dracula_portrait2 = sprite_get("dracula_portrait2");

var page = 0;

dracula_speaker[page] = 0;
dracula_text[page] = "What's this? I sense great power within you...";
page++;

dracula_speaker[page] = 1;
dracula_text[page] = "You're talking about my Devil's Eye?";
page++;

dracula_speaker[page] = 0;
dracula_text[page] = "Your right eye bears the essence of ancient idols... yet you are but a simple being.";
page++;

dracula_speaker[page] = 0;
dracula_text[page] = "How did a weak human like you get ahold of that kind of power?";
page++;

dracula_speaker[page] = 1;
dracula_text[page] = "You're not the first person to tell me I'm don't deserve my talent.";
page++;

dracula_speaker[page] = 2;
dracula_text[page] = "And you won't be the last one either.";
page++;

dracula_speaker[page] = 0;
dracula_text[page] = "You have moxie, but it does nothing for flesh so volatile.[glass] I shall pry that eye off of your skull myself!";
page++;

//Daroach

daroach_portrait = sprite_get("dracula_portrait");
daroach_portrait2 = sprite_get("dracula_portrait2")
daroach_portrait3 = asset_get("empty_sprite")

var page = 0;

daroach_speaker[page] = 0;
daroach_text[page] = "Greetings, fair lady. To what do I owe your visit?";
page++;

daroach_speaker[page] = 1;
daroach_text[page] = "Someone called for my services here. Was it you?";
page++;

daroach_speaker[page] = 0;
daroach_text[page] = "Oh! So you're the one he recommended me...";
page++;

daroach_speaker[page] = 0;
daroach_text[page] = "I've been raring to find potential recruits for my squad. Though I don't usually go after humans, I'm willing to extend my options if you're worth the hassle.";
page++;

daroach_speaker[page] = 2;
daroach_text[page] = "I could use the pocket money. Bring it on, mouse.";
page++;
