//init

////////////////////////////////////////////////////// CHARACTER GENERAL VARIABLES //////////////////////////////////////////////////////

/*
 * The stats below are taken from Zetterburn, replacing Sandbert's overpowered
 * movement stats. The ATTACKS are still in their overpowered form in this
 * template, so be sure to make the ones for your character weaker.
 * 
 * Base Cast Frame Data:
 * docs.google.com/spreadsheets/d/19UtK7xG2c-ehxdlhCFKMpM4_IHSG-EXFgXLJaunE79I
 */

// STAT NAME				VALUE       BASECAST RANGE   	NOTES

// Physical size
char_height					= 56;       //                  not zetterburn's. this is just cosmetic anyway
normal_knockback_adj		= 1.2;		// 0.9  -  1.2

knockback_adj 				= normal_knockback_adj;


// Ground movement
normal_walk_speed 			= 2.75;		// 3    -  4.5
normal_walk_accel 			= 0.2;		// 0.2  -  0.5
normal_walk_turn_time 		= 8;		// 6
normal_initial_dash_time 	= 10;		// 8    -  16       zetterburn's is 14
normal_initial_dash_speed 	= 7.5; 		// 4    -  9
normal_dash_speed 			= 7; 		// 5    -  9
normal_dash_turn_time 		= 14;		// 8    -  20
dash_turn_accel     		= 1.2;		// 0.1  -  2
dash_stop_time      		= 6;		// 4    -  6        zetterburn's is 4
dash_stop_percent   		= 0.4;		// 0.25 -  0.5
ground_friction     		= 0.6;		// 0.3  -  1
normal_moonwalk_accel 		= 1.2;		// 1.2  -  1.4

walk_speed          		= normal_walk_speed;
walk_accel          		= normal_walk_accel;
walk_turn_time      		= normal_walk_turn_time;
initial_dash_time   		= normal_initial_dash_time;
initial_dash_speed  		= normal_initial_dash_speed;
dash_speed          		= normal_dash_speed;
dash_turn_time      		= normal_dash_turn_time;
moonwalk_accel      		= normal_moonwalk_accel;


// Air movement
normal_leave_ground_max 	= 7;		// 4    -  8
normal_max_jump_hsp 		= 6.5;		// 4    -  8
normal_air_max_speed 		= 5;  	    // 3    -  7         //old bar value: 4.5
jump_change         		= 3;		// 3
normal_air_accel        	= 0.3;		// 0.2  -  0.4
normal_prat_fall_accel 		= 0.85;		// 0.25 -  1.5
normal_air_friction        	= 0.05;		// 0.02 -  0.07
max_fall            		= 10;		// 6    -  11
normal_fast_fall        	= 15;		// 11   -  16
gravity_speed       		= 0.65;		// 0.3  -  0.6
hitstun_grav        		= 0.5;		// 0.45 -  0.53

leave_ground_max 			= normal_leave_ground_max;
max_jump_hsp 				= normal_max_jump_hsp;
air_max_speed 				= normal_air_max_speed;
air_accel 					= normal_air_accel;
prat_fall_accel 			= normal_prat_fall_accel;
air_friction 				= normal_air_friction;
fast_fall 					= normal_fast_fall;


// Jumps
jump_start_time     		= 5;		                // 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed 					= 11.5;		                // 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     		= 7;		                // 4    -  7.4
normal_djump_speed 			= 5;		                // 6    -  12       absa's is -1 because of her floaty djump
djump_accel         		= -1;		                // -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time		= 10;		                //                  the amount of time that   djump_accel   is applied for
normal_max_djumps 			= 2 + 3 * has_rune("B");    // 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        		= 5;		                // 4    -  7
walljump_vsp        		= 11;		                // 7    -  10
land_time           		= 4;		                // 4    -  6
normal_prat_land_time		= 12;		                // 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

djump_speed                 = normal_djump_speed;
max_djumps 					= normal_max_djumps;
prat_land_time				= normal_prat_land_time;

// Shield-button actions
normal_wave_friction 		= 0.4;		// 0    -  0.15
roll_forward_max    		= 9;		// 9    -  11
roll_backward_max   		= 9;		// 9    -  11       always the same as forward
normal_wave_land_time		= 8;		// 6    -  12
normal_wave_land_adj 		= 1.35;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     		= 7.5;		// 7.5  -  8
techroll_speed      		= 10;		// 8    -  11

wave_friction 				= normal_wave_friction;
wave_land_time 				= normal_wave_land_time;
wave_land_adj 				= normal_wave_land_adj;


// Animation Info

// Misc. animation speeds
idle_anim_speed     		= 0.2;
crouch_anim_speed   		= 0.1;
walk_anim_speed     		= 0.2;
normal_dash_anim_speed  	= 0.3;
pratfall_anim_speed 		= 0.2;

dash_anim_speed 			= normal_dash_anim_speed;

normal_wait_time            = 256;         //how long it takes for the animation to be done
wait_length                 = 100;         //amount of frames the wait animation takes
wait_sprite                 = sprite_get("wait");

wait_time                   = normal_wait_time;


// Jumps
double_jump_time    		= 33;		// 24   -  40
walljump_time       		= 32;		// 18   -  32
wall_frames         		= 2;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    	= 1;
dodge_active_frames     	= 1;
dodge_recovery_frames   	= 3;

// Tech
tech_active_frames      	= 3;
tech_recovery_frames    	= 1;

// Roll
roll_forward_startup_frames = 2;
roll_forward_active_frames  = 4;
roll_forward_recovery_frames= 3;
roll_back_startup_frames    = roll_forward_startup_frames;
roll_back_active_frames     = roll_forward_active_frames;
roll_back_recovery_frames   = roll_forward_recovery_frames;

// Tech roll
techroll_startup_frames     = 2;
techroll_active_frames      = 2;
techroll_recovery_frames    = 2;

// Airdodge
air_dodge_startup_frames    = 2;
air_dodge_active_frames     = 3;
air_dodge_recovery_frames   = 3;

// Crouch
crouch_startup_frames 		= 2;
crouch_active_frames 		= 1;
crouch_recovery_frames 		= 1;



// Hurtbox sprites
hurtbox_spr         = asset_get("ex_guy_hurt_box");
crouchbox_spr       = asset_get("ex_guy_crouch_box");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Movement SFX
land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_birdflap");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;


//////////////////////////////////////////////////////// USEFUL CUSTOM VARIABLES ////////////////////////////////////////////////////////

// "literally a white pixel" - nart
spr_pixel = sprite_get("white_pixel");

//for attacks
window_end = 0; //the last frame (including whifflag if it's there)
window_last = 0; //AG_NUM_WINDOWS
window_cancel_time = 0; //AG_WINDOW_CANCEL_FRAME
hbox_view = get_match_setting(SET_HITBOX_VIS);

strong_pressed = false;

//various detections
alt_cur = get_player_color(player);
training = (get_match_setting(SET_PRACTICE));
is_cpu = false;
playtesting = (object_index == oTestPlayer);
got_gameplay_time = get_gameplay_time(); //allows me to run stuff for 1 frame after bar is loaded/reloaded

is_dodging = false;
is_attacking = false;

//hurt spin rotation
cur_sprite_rot = 0;
should_rotate = false;
rotate_time = -1;

//intro animation shenanigans
AT_INTRO = 2;

//custom window loop time (modify window type 9 for this)
AG_WINDOW_LOOP_TIMES = 37;          //attack grid index, the number you put next to it is the amount to loop
window_loops = 0;                   //decides the amount of times to loop

/*
//attack names
attack_index = [
	"???",
	"AT_JAB",
	"???",
	"???",
	"AT_FTILT",
	"AT_DTILT",
	"AT_UTILT",
	"AT_FSTRONG",
	"AT_DSTRONG",
	"AT_USTRONG",
	"AT_DATTACK",
	"AT_FAIR",
	"AT_BAIR",
	"AT_DAIR",
	"AT_UAIR",
	"AT_NAIR",
	"AT_FSPECIAL", //doesn't exist
	"AT_DSPECIAL", //doesn't exist
	"AT_USPECIAL", //doesn't exist
	"AT_NSPECIAL", //doesn't exist
	"AT_FSTRONG_2",
	"AT_DSTRONG_2",
	"AT_USTRONG_2",
	"AT_USPECIAL_GROUND", //doesn't exist
	"AT_POLARIS",
	"AT_POWER_SMASH",
	"AT_BURNING_FURY",
	"AT_FORCE_LEAP",
	"AT_PHOTON_BLAST",
	"AT_LIGHT_DAGGER",
	"AT_EMBER_FIST",
	"AT_CHASM_BURSTER",
	"AT_DSPECIAL_AIR", //doesn't exist
	"AT_ACCEL_BLITZ",
	"AT_BURNING_FURY_AIR",
	"AT_TAUNT",
	"AT_TAUNT_2",
	"AT_LIGHT_HOOKSHOT",
	"AT_SEARING_DESCENT",
	"AT_FLASHBANG",
	"AT_EXTRA_5",
	"AT_LIGHT_DAGGER_AIR",
	"???",
	"???",
	"???",
	"???",
	"???",
	"AT_THEIA_EVLOGIA",
	"???", //light stunner
	"AT_L_PUNISHMENT",
	"???"
];
*/

//object classification so i can mess around with it (might need to add more slots to it but oh well)
bar_hitbox = noone;
bar_hit_fx = noone;
bar_hit_fx_pause = false;         //setting this to true makes the hit effect hitpause



//special alt stuff
my_day = 25;
my_month = 10;
birthboy = (current_day == my_day && current_month = my_month);
bibical = (get_match_setting(SET_SEASON) == 3 && !birthboy && alt_cur == 16);

//flash color
light_col = make_colour_rgb(get_color_profile_slot_r(alt_cur, 6), get_color_profile_slot_g(alt_cur, 6), get_color_profile_slot_g(alt_cur, 6));
light_alpha = 0;

//Outline color setup
outline_time = 0;
outline_time_up = true;
default_line_color = [61, 113, 224];
lerp_array = [0, 0, 0]; //lerps around
activate_outline = false;

if (alt_cur != 0 && !birthboy) line_color = [get_color_profile_slot_r(alt_cur, 7), get_color_profile_slot_g(alt_cur, 7), get_color_profile_slot_b(alt_cur, 7)];
else line_color = default_line_color;

no_effect_line_color = [0, 0, 0];
switch (alt_cur)
{
    case 14: //gameboy
        no_effect_line_color = [15, 56, 15];
        break;
    case 15: //NES
        no_effect_line_color = [32, 0, 178];    
        break;
    case 16: //seasonal-halloween
        if (bibical) no_effect_line_color = [75, 43, 43];    
        break;    
    case 25: //helel
        no_effect_line_color = [52, 52, 52];    
        break;
    case 26: //theikos
        no_effect_line_color = [97, 45, 2];
        break;
}

fire_col = make_colour_rgb(line_color[0], line_color[1], line_color[2]);

//trail code
apply_motion_trail = false;

trail_cur_num = 0;      //rotates between the array values to update them
trail_total_size = 10;  //the total size of the trail array
trail_draw_size = 1;    //what size does it actually draw it on

is_accel_trail = false;

trail_pos = [0];
t = 0;
repeat (trail_total_size)   //fills array
{
    trail_pos[t] = {
            sprite: sprite_index,
            subimg: image_index,
            x: x,
            y: y,
            xscale: image_xscale,
            yscale: image_yscale,
            rot: image_angle,
            col: image_blend,
        };
    t ++;
}


///////////////////////////////////////////////////CUSTOM HITBOX COLOR SYSTEM/////////////////////////////////////////////////

//Custom Hitbox Colors System (by @SupersonicNK)
// USAGE: set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, $FFFFFF) the colors are in BGR sadly

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
//color array
hb_color[0] = 0;        //nothing
hb_color[1] = $00FFFF;  //sweetspot
hb_color[2] = $FFFFFF;  //holy light
hb_color[3] = $FFFF00;  //holy fire


////////////////////////////////////////////////////// CHARACTER SPECIFIC VARIABLES //////////////////////////////////////////////////////

//Intro
intro_alpha = 0;
intro_pillar_fx_frame = 0;
intro_pillar_fx_speed = 0.25;

//Glide
//PS_GLIDE = 50; //custom state - "replaced with a macro in update.gml" - nart
glide_vsp = 1.5; //the speed in which bar will slowly fall, it's a constant speed
glide_fastfall_vsp = 10;
glide_anim_speed = 0.2; //increase image_index by this value
can_glide = true;

glide_stamina_max = has_rune("B") ? 150 : 100;
glide_stamina = glide_stamina_max;
glide_stamina_restore = 50;
glide_ui = false;

//Double jump stuff
prev_djumps = 0;
djump_turn = false;

//MP mechanic
mp_current = 100;
mp_max = 100 + 100 * has_rune("M");
mp_gainable = true;
mp_gain_rate = 2 + 5 * has_rune("M");

infinite_mp_mode = false;

mp_mini_timer = 0;
mp_mini_timer_set = 180;

mp_color = $e9973e;
mp_color_ex = $FFFF00;

//other mp costs
mp_cost_strongs = 5;    //strongs

//value storage
was_free = free;



//record skill data
skill_script_type = 0;
user_event(2);

//saves skill data in case it's needed
if (get_synced_var(player) >= 4228) for (var i = 0; i <= 3; i++) cur_skills[i] = (get_synced_var(player) >> (i * 4)) & 0xf;
else set_synced_var(player, 12816);
//put this in user_event2 ^ because it needs to run on css and ingame

skill = [0]; //this array checks all the attacks
a = 0; //array start

//skill setup
AT_SKILL0  = set_skill("Light Dagger", 0, 0, 0, AT_NTHROW, AT_NSPECIAL_AIR, 5, 5, 5);
AT_SKILL1  = set_skill("Burning Fury", 1, 1, 0, AT_FTHROW, AT_FSPECIAL_AIR, 10, 10, 50);
AT_SKILL2  = set_skill("Force Leap", 2, 2, 0, AT_UTHROW, -1, 10, 10, 10);
AT_SKILL3  = set_skill("Photon Blast", 3, 3, 0, AT_DTHROW, -1, 20, 10, 40);

AT_SKILL4  = set_skill("Flashbang", 4, 0, 1, AT_EXTRA_4, -1, 0, 10, 10);
AT_SKILL5  = set_skill("Power Smash", 5, 1, 1, AT_FSPECIAL_2, -1, 5, 25, 30);
AT_SKILL6  = set_skill("Accel Blitz", 6, 2, 1, AT_NSPECIAL_2, -1, 10, 0, 10);
AT_SKILL7  = set_skill("Polaris", 7, 3, 1, AT_USPECIAL_2, -1, 10, 10, 50);

AT_SKILL8  = set_skill("Ember Fist", 8, 0, 2, AT_DSPECIAL_2, -1, 20, 0, 20);
AT_SKILL9  = set_skill("Light Hookshot", 9, 1, 2, AT_EXTRA_2, -1, 5, 15, 20);
AT_SKILL10 = set_skill("Searing Descent", 10, 2, 2, AT_EXTRA_3, -1, 10, 10, 10);
AT_SKILL11 = set_skill("Chasm Burster", 11, 3, 2, AT_EXTRA_1, -1, 5, 25, 30);

AT_SELECT = 3;                      //select attack

AG_WINDOW_MP_CONSUME        = 34;   //mana amount to consume
AG_WINDOW_MP_CONSUME_TIME   = 35;   //the frame to consume mana (0 = window start - default | +1 = window_timer frame | if type one - changes to increments)
AG_WINDOW_MP_CONSUME_TYPE   = 36;   //type of mana consumption (0 = when pointed out | 1 = rapid consumption throughout the window)

cur_skill_spr = 0;
menu_x = 0;
menu_y = 0;

//skill descriptions, will show on the UI when info_mode_menu is true
skill_desc[0] = string("
    Throws a light spear's head either forward or
    diagnally. Burning fury modifies it's damage and
    knockback, but will no longer pierce.
    ");
skill_desc[1] = string("
    Charges up holy fire, press the input again to
    do a firey dash attack. Press ATTACK or SPECIAL
    before the last hit to stun foes in place.
    ");
skill_desc[2] = string("
    Leaps diagnally up, can be aimed up or forward.
    Press ATTACK or SPECIAL for a powerful blast.
    Hitting foes prevents pratfalling.
    ");
skill_desc[3] = string("
    Charges up holy light by holding down SPECIAL.
    releasing the SPECIAL button will unleash up to
    3 light waves.
    ");
skill_desc[4] = string("
    A command grab, if a foe is grabbed they will be
    blasted aside. Burning Fury pushes Bar and foes
    away from the blast.
    ");
skill_desc[5] = string("
    Jumps down into the ground and creates a crater
    filled with holy fire. Can be cancelled in midair
    with a jump.
    ");
skill_desc[6] = string("
    Aim around by moving and holding SPECIAL. releasing
    it will make Bar fly to it in lightspeed. Hitting
    foes while flashing will prevent pratfall.
    ");
skill_desc[7] = string("
    Releases 4 sparks of light that burn MP over time.
    When Bar hits a foe, a single spark will home to
    the hit player. Input again to release a light blast.
    ");
skill_desc[8] = string("
    Punches out a stream of holy fire that can be
    aimed around. Burning Fury alters the attack into
    a multihit blast instead.
    ");
skill_desc[9] = string("
    Throws a light spear tied to a light chain that
    when hits a foe or wall, Bar will throw himself
    forward. Charging makes Bar go further.
    ");
skill_desc[10] = string("
    Leaps high up into the air with a burning hand.
    holding SPECIAL will make Bar crash down.
    Burning Fury makes the initial leap higher
    ");
skill_desc[11] = string("
    Punches down the ground to unleash bursts of
    holy fire. can be cancelled midair with a jump.
    Burning Fury increases bursts amount to 6.
    ");
//////////////


//Holy Burning Mechanic
holyburn_active = true;     //check if the mechanic is active
holyburning = false;        //becomes true if they are burning
holyburner_id = 0;          //keeps track of who is burning, to set the pallete correctly
holyburn_timer = 0;
holyburn_timer_set = 120;

//Lightstun Mechanic
lightstun_active = has_rune("L");
lightstun_type = 0; //0 = not lightstunned | 1 = pre-lightstun timer | 2 = frozen
lightstun_timer = 0;
lightstun_pre_set = 300; //timer pre-sets
lightstun_active_set = 120;

lightstun_last_attack = 0;
lightstun_last_hbox = 0;
lightstun_last_attack_timer = 0;

////////////////////////////////////////////////////////////// VFX SETUP //////////////////////////////////////////////////////////////

fx_empty = hit_fx_create(asset_get("empty_sprite"), 1);
bar_plat_speed = 0.2;

//notice messages
notice_type = 0;
notice[0] = [32, 78, hit_fx_create(sprite_get("notice_mp"), 32)];
notice[1] = [44, 78, hit_fx_create(sprite_get("notice_cd"), 32)];
notice_time = -1;
notice_time_max = 20;
msg = noone;

//particles
set_hit_particle_sprite(1, sprite_get("fx_part_light"));
set_hit_particle_sprite(2, sprite_get("fx_part_fire"));
fx_part_light = hit_fx_create(sprite_get("fx_part_light"), 16);
fx_part_fire = hit_fx_create(sprite_get("fx_part_fire"), 16);

fx_light_follow = hit_fx_create(sprite_get("fx_light_follow"), 9);
fx_burn = hit_fx_create(sprite_get("fx_burn"), 18);

fx_lightblow = [
    hit_fx_create(sprite_get("fx_lightblow1"), 15),
    hit_fx_create(sprite_get("fx_lightblow2"), 25),
    hit_fx_create(sprite_get("fx_lightblow3"), 30)
];
fx_fireblow = [
    hit_fx_create(sprite_get("fx_fireblow1"), 30),
    hit_fx_create(sprite_get("fx_fireblow2"), 40),
    hit_fx_create(sprite_get("fx_fireblow3"), 50)
];
fx_lightslash = hit_fx_create(sprite_get("fx_lightslash"), 15);

fx_intro_back = sprite_get("fx_introlight_back");
fx_intro = hit_fx_create(sprite_get("fx_intro"), 22);

fx_dstrong_blast = hit_fx_create(sprite_get("fx_dstrong_blast"), 40);
fx_dstrong_quake = hit_fx_create(sprite_get("fx_dstrong_quake"), 27);

fx_skill3 = hit_fx_create(sprite_get("fx_skill3"), 20);

fx_skill4_smear = hit_fx_create(sprite_get("fx_skill4_smear"), 20);
fx_skill4_smear_burn = hit_fx_create(sprite_get("fx_skill4_smear_burn"), 15);

fx_skill6 = hit_fx_create(sprite_get("fx_skill6"), 18);
fx_skill7_afterimage = hit_fx_create(sprite_get("fx_skill7_afterimage"), 16);
fx_skill8 = hit_fx_create(sprite_get("fx_skill8"), 30);
fx_skill11_burst = hit_fx_create(sprite_get("fx_skill11_burst"), 18);
fx_skill11_chasm = hit_fx_create(sprite_get("fx_skill11_chasm"), 180);

fx_fstrong2 = hit_fx_create(sprite_get("fx_fstrong2"), 20);
fx_dstrong2_smear = hit_fx_create(sprite_get("fx_dstrong2_smear"), 20);
//fx_dstrong2_groundfire = hit_fx_create(sprite_get("fx_dstrong2_groundfire"), 90);

sfx_charge = sound_get("sfx_charge");

fx_theikos_aura = hit_fx_create(sprite_get("fx_theikos_aura"), 24);


//////////////////////////////////////////////////////////// ATTACK SPECIFIC ////////////////////////////////////////////////////////////

//general
bar_grabbed_id = noone;
bar_grab_time = 0;

bar_tracking_id = noone;
angle_saved = 0;

start_skill_cancel = false;
skill_cancel_timer = 20;
skill_input_dir = 0; //0 = neutral | 1 = left/right | 2 = up | 3 = down

charge_color = false;

//taunt
taunt_react_time = 0;

//u-strong
ustrong_dir = [0, 0];

//dstrong
dstrong_last_hbox = 0;

//light dagger
prepare_dagger_cd = false;
dagger_spam_cd = 0;
dagger_spam_cd_set = 40;

//burning fury
burnbuff_active = false;
fury_norm_cost = skill[1].mp_use_cost;
fury_mult = 1.5;
mp_cost_burn_rate = 5; //used for burning fury's buffed state

//force leap
leap_used = false;
leap_move_x = 0;
leap_move_y = 0;

//photon blast
blast_used = false;
blast_charge_level = 0;

//power smash
power_crater_artc = noone;

//accel blitz
accel_pos = [0, 0];
accel_mark_spd = 0;
accel_marker_artc = noone;
accel_vulnerable = false;
accel_goto = 0;
accel_used = false;
accel_act_time = 0;
accel_flashed_time = 0;

//polaris
lightbuff_active = false;
polaris_shot = false;
polaris_id = noone;
mp_cost_light_rate = 3; //used for polaris
polaris_shots_max = 4;
polaris_shots_left = 4;
polaris_shot_ids = [];
prev_bar_pos = [x, y, spr_dir];
polaris_norm_cost = skill[7].mp_use_cost;
last_hitstop = 0;
last_kb = [0, 0, 0, 0, 0];
last_hitstun = 0;
//last_atk = [0, 0];

lightbuff_alpha = 0.1;
lightbuff_rate = 0.02;
lightbuff_increase = true;
lightbuff_softarmor_max = mp_max/4;

//ember fist
ember_range = 40;
ember_alter_anim_start = 0;
ember_alter_anim_end = 0;
fury_ember_timer = 0;
fury_ember_x = 0
fury_ember_y = 0;

//light hookshot
hook_charge = 0;
hook_grab = 0; //0 = nothing | 1 = player grab | 2 = terrain grab
hook_fling_anim = false;
hook_chain_amount = 0;
hook_chain_artc = noone;

dist = [];
hook_proj = [0, 0];
hook_bar_pos = [0, 0];

//chasm burster
chasm_range = 48;
chasm_limit = 0;
chasm_count = 0;
chasm_far_x = -10000; //there has to be a better way than to spawn all the bursts
chasm_x = [];
chasm_y = [];
chasm_burst_timer = 0;
chasm_spawn_rate = 5;

//theikos strongs
strong2_charge = 0;
ustrong2_pillar_end_timer = 0;

dstrong2_fire_count = 3;
dstrong2_active = false;
dstrong2_startpos = [0, 0];
dstrong2_was_freemd = false;
theikos_fire_artc = noone;

///////////////////////////////////////////////////////// ABYSS RUNES SECTION ///////////////////////////////////////////////////////////

//rune A - airdash
rune_A_active = has_rune("A");
PS_AIRDASH = 51; //custom state
rune_A_cd = 0; //20
rune_A_attack_boost = false;
rune_A_airdash_speed = 11;

rune_D_active = has_rune("D");

rune_G_active = has_rune("G");
rune_G_warp_lag = 0; //replicates the lag that used to be a thing cuz bar was inside accel blitz's animation instead

rune_H_drag_id = noone;
rune_H_target_was_free = false;
rune_H_collision_pos = [0, 0];

//OVERDRIVE - LORD'S PUNISHMENT
AT_OVERDRIVE = 49;
can_overdrive = has_rune("N");
od_current = 0;
od_max = 100;
od_cast = 0; //0 = not cast | 1 = ready but still not cast | 2 = casting | 3 = post-OD buffs
prev_od_cast = 0; //this locks some of the effects so they don't multiply forever

od_buff_time_max = 900; //it's actually in seconds. not frames
od_buff_time = 0;

godbuff_mult = 1.5;

od_fallthrough_y = 0; //checks when bar should stop going through platforms

od_color_const = $3BE1FF;
od_color = od_color_const;
od_color_time = 0;
od_color_flash = false;
od_sword_image = 0;
od_slash_alpha = 0;
od_sword_pos = [[0, 0], [0, 0]];
sword_timer = 0;

od_bg_alpha = 0;
od_rect_alpha = 0;

//THEIKOS
has_theikos = has_rune("O");
AT_THEIKOS = 47;
theikos_event_runtime = 0;
theikos_type = 0; //0 = no theikos | 1 = regular mode | 2 = anti-cheapie mode
theikos_mult = 1.75;
found_cheapie = false;
prev_attack = 0;
theikos_music = false;

/////////////////////////////////////////////////////////// WORKSHOP SECTION ////////////////////////////////////////////////////////////

//greenwood stage compatibility
greenwood_cheer = 1;

//green flower zone
gfzsignspr = sprite_get("GFZ_signpost");

//miiverse
miiverse_post = sprite_get("miiverse");

//pokemon stadium
pkmn_stadium_front_img = sprite_get("pokemon_front");
pkmn_stadium_back_img = sprite_get("pokemon_back");
pkmn_stadium_name_override = "bar";

//the last resort
resort_portrait = sprite_get("last_resort");

//soulbound conflict
battle_text = (theikos_type > 0) ? "* The guardian's true face revealed." : "* Bar braces himself!";

//dracula portrait
dracula_portrait = sprite_get("dracula_port" + string(1 + 2 * (has_theikos || alt_cur == 26)));
dracula_portrait2 = sprite_get("dracula_port" + string(2 + 2 * (has_theikos || alt_cur == 26)));

//RC car
kart_sprite = sprite_get("car");
kart_frames = 4;
kart_anim_speed = 0.1;
kart_anim_speed_scaling = 0.3;
kart_engine_sound = 3;
kart_drift_spr = 3;

//adventure mode hit_player redirect
hit_player_event = 13;

//draw_hud redirect
draw_hud_event = 14;

//pit - palutena's guidance
user_event(7);

//callie - date
user_event(8);

//the chosen one - art
tcoart = sprite_get("tcoart1");
if (has_theikos || alt_cur == 26) tcoart = sprite_get("tcoart2");

//moonchild - music
childsupport = 1;

//neptendo - music
hasnepusupport = 1;
nepusong = sound_get("mus_nepu");

//link - spear
link_spear_drop = 8;

//otto - bobblehead (i also included the old one)
otto_bobblehead_sprite = sprite_get("otto_bobble_head");

//steve death messeges
steve_death0 = "Steve was denied from Shamaeem by Bar_Rey using [Mage's Gauntlet]"; //message to appear when there's no other message
steve_death1 = "Steve was slain by Bar_Rey"; //normal death message
steve_death2 = "Steve was slain by Bar_Rey using [Mage's Gauntlet]"; //death from an attack that uses bar's gauntlet
steve_death3 = "Steve was flashed to death by Bar_Rey"; //death from light based attacks
steve_death4 = "Steve was burnt to a crisp whilst fighting Bar_Rey using [Mage's Gauntlet]"; //dying while holyburning = true;
steve_death5 = "Death.attack.AT_TAUNT"; //dying if bar killed steve with his taunt
steve_death_message = steve_death0;


//assist buddy
assistAttack = AT_FAIR; //The attack to use as the assist
assistOffsetX = -32; //The horizontal distance they spawn from the player
assistOffsetY = 0; //The vertical distance they spawn from the player
assistVelX = 27; //The horizontal velocity applied when the assist is called
assistVelY = -6; //The vertical velocity applied when the assist is called
assistGroundOnly = false; //Whether or not they are forced to the ground
assistFloat = false; //Whether or not they stay in place vertically
assistCool = 120; //The time it takes for the assist to recharge

//final smash buddy
fs_meter_color = 0; //a custom variable for the gauge color

fs_portrait_x = 150;
fs_char_portrait_y = 100;
fs_char_portrait_override = get_char_info(player, INFO_PORTRAIT);
fs_char_chosen_final_smash = "custom";
fs_char_chosen_trigger = "custom";
fs_char_attack_index = AT_OVERDRIVE;
fs_hide_meter = true; //so i can make it use the OD gauge instead
fs_charge_mult = 0;

//put [fs_charge] in hit_player.gml and parry.gml so it will work like the rune version
//put [fs_charge_mult] to decide the charge rate if it doesn't suit me fancy
//use [fs_ai_attempt_use] to make a CPU use the final smash

//mamizou angelhog
mamizou_transform_spr = sprite_get(alt_cur == 8 ? "mamizou_shadow" : "mamizou_angelhog");

//po and gumbo food
pot_compat_variable = sprite_get("gumbo_schnitzel");
pot_compat_text = "Holy Schnitzel";

//Quote
bar_victory_quote = "No problem.";
bar_handled_victory_quote = false;
bar_was_in_stage = get_stage_data(SD_ID);

//////////////////////////////////////////////////////////// #DEFINE SECTION ////////////////////////////////////////////////////////////

//checks the skills themselves
#define set_skill(name, id, slot_x, slot_y, atk, air_atk, cost, cost_ex, cost_min)
{
    //  name            = the name of the skill in question
    //  id              = the sprite to display from the icon strip on the UI above the MP gauge (0-11)
    //  slot_x          = which skill slot is it for (0-3)
    //  slot_y          = which skill is it between the 3 choices (0-2)
    //  atk             = the ground attack index to use
    //  air_atk         = the air attack index to use (-1 makes it use the same one as the ground version)
    //  cost            = initial cost when activating the skill (for flashbang it's 0)
    //  cost_ex         = secoundary skill cost like when light hookshot is fired or bar lands with power smash
    //  cost_min        = what move_cooldown will see to check if we have enough MP to use the skill in the firs place
    //  cost_min2       = specific for some very certain moves if they need another cooldown limiter
    
    skill[a] = {
        skill_name: name,
        skill_id: id,
        skill_pos_x: slot_x,
        skill_pos_y: slot_y,
        skill_attack: atk,
        skill_attack_air: air_atk,
        mp_cost1: cost,
        mp_cost2: cost_ex,
        mp_use_cost: cost_min,
    };
    
    a ++;
    return a-1;
    
    //explanations
    /*
        //"name"/"skill_name" i don't REALLY need but i guess it's nice to have
        //generally, it's based off muno's steve items
        //on his items these names come up on nspec's tables

        //draw_hud.gml - rethink this - it will only display one icon at a certain spot
        //  draw_sprite_ext(hud_skills, skill_id, temp_x + skill_pos_x * 30 + 98, temp_y - 40, 2, 2, 0, c_white, 1);
        //  hud_skills = sprite_get("hud_skills"); //this will also use the disabled skill icons, it swiches around, will need testing

        //set_attack.gml
        //  if (specialnums[0] == 0) attack = free ? skill_attack : skill_attack_air;
        //  if (skill_attack_air == -1) skill_attack_air = skill_attack;

        //attack_update.gml
        //  if (window_timer == 1 && window == 2) mp_current -= mp_cost1; //initial cost
        //  if (window_timer == 1 && window == 5) mp_current -= mp_cost2; //extra cost

        //update.gml
        //  move_cooldown[skill name] = 1 + ceil(mp_use_cost - mp_current);
    */
}