
// Hurtbox sprites
hurtbox_spr         = sprite_get("sly_hurt_box");
crouchbox_spr       = sprite_get("sly_crouch_box");
air_hurtbox_spr     = -1;
hitstun_hurtbox_spr = -1;

// Physical size
char_height         = 48;       //                  
knockback_adj       = 1.1;		// 0.9  -  1.2

// Ground movement
walk_speed          = 3;		// 3    -  4.5
walk_accel          = 0.35;		// 0.2  -  0.5
walk_turn_time      = 6;	    // 6
initial_dash_time   = 10;		// 8    -  16
initial_dash_speed  = 8;		// 4    -  9
dash_speed          = 6.5;		// 5    -  9
dash_turn_time      = 10;		// 8    -  20
dash_turn_accel     = 2;		// 0.1  -  2
dash_stop_time      = 6;		// 4    -  6
dash_stop_percent   = 0.5;		// 0.25 -  0.5
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
short_hop_speed     = 5.5;		// 4    -  7.4
djump_speed         = 10;		// 6    -  12       
djump_accel         = 0;        // -1.4 -  0        
djump_accel_end_time= 0;        //                  
max_djumps          = 1;		// 0    -  3        
walljump_hsp        = 6;		// 4    -  7
walljump_vsp        = 10    	// 7    -  10
land_time           = 6;		// 4    -  6
prat_land_time      = 10;		// 3    -  24      

// Shield-button actions
wave_friction       = 0.15;		// 0    -  0.15
roll_forward_max    = 9;        // 9    -  11
roll_backward_max   = 9;        // 9    -  11       always the same as forward
wave_land_time      = 8;		// 6    -  12
wave_land_adj       = 1.2;		// 1.2  -  1.5      
air_dodge_speed     = 7.8;      // 7.5  -  8
techroll_speed      = 9.5;       // 8    -  11

// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.2;
crouch_anim_speed   = 0.1;
walk_anim_speed     = 0.2;
dash_anim_speed     = 0.2;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 30;		// 24   -  40
walljump_time       = 30;		// 18   -  32
wall_frames         = 2;		

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 3;
dodge_recovery_frames   = 2;

// Tech
tech_active_frames      = 2;
tech_recovery_frames    = 1;

// Tech roll
techroll_startup_frames     = 1;
techroll_active_frames      = 1;
techroll_recovery_frames    = 1;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 3;
air_dodge_recovery_frames   = 3;

// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 3;
roll_forward_recovery_frames    = 2;
roll_back_startup_frames        = 1;
roll_back_active_frames         = 3;
roll_back_recovery_frames       = 2;

// Crouch
crouch_startup_frames   = 3;
crouch_active_frames    = 1;
crouch_recovery_frames  = 3;

// Movement SFX
land_sound          = asset_get("sfx_land_light");
landing_lag_sound   = asset_get("sfx_land_med");
waveland_sound      = asset_get("sfx_waveland_ran");
jump_sound          = asset_get("sfx_jumpground");
djump_sound         = asset_get("sfx_jumpair");
air_dodge_sound     = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

sc_paraglider_meter = 100;

sc_coins = 0;
sc_coindrop = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
sc_coindrop_pointer = 0;
sc_coinowner_pointer = 0;
sc_coinloss = 0;
sc_coindropped = 0;
sc_multihit_controller = [0, 0, 0, 0];

sc_hud_coins = 0;
sc_gadget = 0;
sc_voltstate = 0;
sc_voltstate_glow = 0;

sc_coinarticle = "obj_article1";

sc_parrysmoke = hit_fx_create(sprite_get("parry_smoke"), 25);
sc_voltage = hit_fx_create(sprite_get("nspecial_voltage2"), 18);
sc_destroy = hit_fx_create(sprite_get("destroy"), 16);

// command grab setup
grabbed_player_obj = noone;
grabbed_player_relative_x = 0;
grabbed_player_relative_y = 0;

clock_exists = noone;
musicbox_exists = noone;

set_victory_bg( sprite_get("victorybg"));
set_victory_theme( sound_get("slyvictory"));


// COMPATIBILITY

// Miiverse

miiverse_post = sprite_get("sly_miiverse");

// Pokemon Stadium

pkmn_stadium_front_img = sprite_get("sly_front_sprite");
pkmn_stadium_back_img = sprite_get("sly_back_sprite");
pkmn_stadium_name_override = "SlyCooper";

// Dracula

dracula_portrait = sprite_get("dracula_portrait");
dracula_portrait2 = sprite_get("dracula_portrait");

var page = 0;

dracula_speaker[page] = 0;
dracula_text[page] = "It seems Beelzebub has attracted vermin into my keep. He will have to answer for this.";
page++;

dracula_speaker[page] = 1;
dracula_text[page] = "Vermin? That's not something you should call a master thief, O Count Dracula sir.";
page++;

dracula_speaker[page] = 0;
dracula_text[page] = "So you're sapient. Interesting... You claim to be a thief?";
page++;

dracula_speaker[page] = 1;
dracula_text[page] = "Yup. I'm here to swipe whatever it is you're keeping behind that throne.";
page++;

dracula_speaker[page] = 0;
dracula_text[page] = "You talk bold for a vermin![glass] You seek my treasure? Then I dare you to come for it!";
page++;

dracula_speaker[page] = 1;
dracula_text[page] = "Always wanted to square off with a real vampire!";
page++;

//Daroach

daroach_portrait = sprite_get("dracula_portrait");
daroach_portrait2 = asset_get("empty_sprite")

var page = 0;

daroach_speaker[page] = 0;
daroach_text[page] = "You must be Sly Cooper. I've heard stories about you. I believe we share much in common.";
page++;

daroach_speaker[page] = 0;
daroach_text[page] = "We lead a team of brains and brawn and we steal treasure both corporeal and ethereal.";
page++;

daroach_speaker[page] = 1;
daroach_text[page] = "There's a key difference between the two of us, Daroach.";
page++;

daroach_speaker[page] = 1;
daroach_text[page] = "You steal treasure from anywhere and anyone. I steal from other thieves, like you for instance.";
page++;

daroach_speaker[page] = 0;
daroach_text[page] = "So I'm your prey, hm? Well then, I should give your style a shot myself.";
page++;

daroach_speaker[page] = 0;
daroach_text[page] = "I'll try stealing from thieves as well, starting with you!";
page++;
