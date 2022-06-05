// init is a script that creates variables when the player is created on the stage.
/*
 * Base Cast Frame Data:
 * docs.google.com/spreadsheets/d/19UtK7xG2c-ehxdlhCFKMpM4_IHSG-EXFgXLJaunE79I
 */

// STAT NAME		ZETTER VALUE   BASECAST RANGE   NOTES

// Physical size
char_height         = 60;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = 0.95;		// 0.9  -  1.2

// Ground movement
walk_speed          = 3.25;		// 3    -  4.5
walk_accel          = 0.2;		// 0.2  -  0.5
walk_turn_time      = 8;	    // 6
initial_dash_time   = 15;		// 8    -  16
initial_dash_speed  = 7;		// 4    -  9
dash_speed          = 7;		// 5    -  9
dash_turn_time      = 8;		// 8    -  20
dash_turn_accel     = 1.6;		// 0.1  -  2
dash_stop_time      = 4;		// 4    -  6
dash_stop_percent   = 0.35;		// 0.25 -  0.5
ground_friction     = 1;		// 0.3  -  1
moonwalk_accel      = 1.3;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 6;		// 4    -  8
max_jump_hsp        = 8;		// 4    -  8
air_max_speed       = 4;  		// 3    -  7
jump_change         = 3;		// 3
air_accel           = 0.3;		// 0.2  -  0.4
prat_fall_accel     = 0.85;		// 0.25 -  1.5
air_friction        = 0.04;		// 0.02 -  0.07
max_fall            = 10;		// 6    -  11
fast_fall           = 12;		// 11   -  16
gravity_speed       = 0.3;		// 0.3  -  0.6
hitstun_grav        = 0.5;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 10;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 6;		// 4    -  7.4
djump_speed         = 10;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;        // -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;        //                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 4;		// 4    -  7
walljump_vsp        = 10;		// 7    -  10
land_time           = 6;		// 4    -  6
prat_land_time      = 8;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.15;		// 0    -  0.15
roll_forward_max    = 9;        // 9    -  11
roll_backward_max   = 9;        // 9    -  11       always the same as forward
wave_land_time      = 8;		// 6    -  12
wave_land_adj       = 1.3;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.5;      // 7.5  -  8
techroll_speed      = 8.5;       // 8    -  11


// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.1;
crouch_anim_speed   = 0.1;
walk_anim_speed     = 0.125;
dash_anim_speed     = 0.2;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 32;		// 24   -  40
walljump_time       = 32;		// 18   -  32
wall_frames         = 2;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 2;
dodge_recovery_frames   = 3;

// Tech
tech_active_frames      = 3;
tech_recovery_frames    = 1;

// Tech roll
techroll_startup_frames     = 1;
techroll_active_frames      = 3;
techroll_recovery_frames    = 1;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 4;
air_dodge_recovery_frames   = 2;

// Roll
roll_forward_startup_frames     = 1;
roll_forward_active_frames      = 3;
roll_forward_recovery_frames    = 1;
roll_back_startup_frames        = 1;
roll_back_active_frames         = 3;
roll_back_recovery_frames       = 1;

// Crouch
crouch_startup_frames   = 2;
crouch_active_frames    = 1;
crouch_recovery_frames  = 2;



// Hurtbox sprites
hurtbox_spr         = sprite_get("idle_hbox");
crouchbox_spr       = -1;
air_hurtbox_spr     = sprite_get("crouchbox");
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg(sprite_get("victory_background")); // victory_background.png

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//victory theme & intro theme
switch(get_player_color(player)){
    case 0:
    set_victory_theme(sound_get("victory"));
    sound_play(sound_get("intro"));
    break;
    case 1:
    set_victory_theme(sound_get("victory"));
    sound_play(sound_get("intro"));
    break;
    case 2:
    set_victory_theme(sound_get("victory"));
    sound_play(sound_get("intro"));
    break;
    case 3:
    set_victory_theme(sound_get("sm_victory"));
    sound_play(sound_get("sm_intro"));
    break;
    case 4:
    set_victory_theme(sound_get("sm_victory"));
    sound_play(sound_get("sm_intro"));
    break;
    case 5:
    set_victory_theme(sound_get("sm_victory"));
    sound_play(sound_get("sm_intro"));
    break;
    case 6:
    set_victory_theme(sound_get("fusion_victory"));
    sound_play(sound_get("fusion_intro"));
    break;
    case 7:
    set_victory_theme(sound_get("fusion_victory"));
    sound_play(sound_get("fusion_intro"));
    break;
    case 8:
    set_victory_theme(sound_get("fusion_victory"));
    sound_play(sound_get("fusion_intro"));
    break;
    case 9:
    set_victory_theme(sound_get("victory"));
    sound_play(sound_get("intro"));
    break;
    case 10:
    set_victory_theme(sound_get("victory"));
    sound_play(sound_get("intro"));
    break;
    case 11:
    set_victory_theme(sound_get("victory"));
    sound_play(sound_get("intro"));
    break;
    case 12:
    set_victory_theme(sound_get("victory"));
    sound_play(sound_get("intro"));
    break;
    case 13:
    set_victory_theme(sound_get("victory"));
    sound_play(sound_get("intro"));
    break;
    case 14:
    set_victory_theme(sound_get("victory"));
    sound_play(sound_get("intro"));
    break;
    case 15:
    set_victory_theme(sound_get("victory"));
    sound_play(sound_get("intro"));
    break;
    case 16:
    set_victory_theme(sound_get("fusion_victory"));
    sound_play(sound_get("fusion_intro"));
    break;
    case 17:
    set_victory_theme(sound_get("prime_victory"));
    sound_play(sound_get("prime_intro"));
    break;
    case 18:
    set_victory_theme(sound_get("m1_victory"));
    sound_play(sound_get("m1_intro"));
    break;
    case 19:
    set_victory_theme(sound_get("m1_victory"));
    sound_play(sound_get("m1_intro"));
    break;
    case 20:
    set_victory_theme(sound_get("victory"));
    sound_play(sound_get("intro"));
    break;
    case 21:
    set_victory_theme(sound_get("victory"));
    sound_play(sound_get("intro"));
    break;
    case 22:
    set_victory_theme(sound_get("prime_victory"));
    sound_play(sound_get("prime_intro"));
    break;
    case 23:
    set_victory_theme(sound_get("prime_victory"));
    sound_play(sound_get("prime_intro"));
    break;
    case 24:
    set_victory_theme(sound_get("prime_victory"));
    sound_play(sound_get("prime_intro"));
    break;
    case 25:
    set_victory_theme(sound_get("mando_victory"));
    sound_play(sound_get("mando_intro"));
    break;
    case 26:
    set_victory_theme(sound_get("victory"));
    sound_play(sound_get("intro"));
    break;
    case 27:
    set_victory_theme(sound_get("m1_victory"));
    sound_play(sound_get("m1_intro"));
    break;
    case 28:
    set_victory_theme(sound_get("m2_victory"));
    sound_play(sound_get("m2_intro"));
    break;
    case 29:
    set_victory_theme(sound_get("m2_victory"));
    sound_play(sound_get("m2_intro"));
    break;
    case 30:
    set_victory_theme(sound_get("victory"));
    sound_play(sound_get("intro"));
    break;
    case 31:
    set_victory_theme(sound_get("victory"));
    sound_play(sound_get("intro"));
    break;
}

////variables

//general variables
idle_air_index = 0;
land_sound = sound_get("jump_land");
landing_lag_sound = sound_get("jump_land");
jump_sound = sound_get("jump_spin");
djump_sound = sound_get("jump_spin");

//hud
menu_y = -12; //-12 is low, -42 is high
openmenu = false;
item_id = 1;
moving_text = 0;
name_xval = [27, 22, 19, 59, 51, 45];
menu_alpha = 0;
hud_beam_cooldown = 0;
hud_missile_cooldown = 0;
hud_flash_shift_cooldown = 0;
items_select = [0, 0, 0, 0, 0, 0];
power_ups = [0, 0, 0, 0, 0, 0];
select_timer = 0;
sound_timer = 0;
prev_dameg = get_player_damage(player);
menu_version = 1;
menu_v_select = 0;
hologram_y = 0;

//resource values
missile_amount = (has_rune("H")? 275: 35);
power_bomb_amount = (has_rune("H")? 15: 2);
aeion = 1000;
aeion_sfx = 0;

//dspecial
ball_angle = 0;
bomb_type = 0; //0 normal bomb, 1 power bomb
bomb_amount = 0;
bomb_timer = 0;
power_charge = 0;
power_cooldown = 0;
empty = hit_fx_create(sprite_get("empty"), 1);
dspecial_sound = 0;
freee = free;
cross = noone;
cross_timer = 0;
ball_hsp = 0;
dtap_morph = 0;

//nspecial
beam_sprite = 0; //0 base, 1 plasma, 2 wave, 3 plasma + wave
charge = 0;
hit_0 = hit_fx_create(sprite_get("0_hit"), 4);
hit_1 = hit_fx_create(sprite_get("1_hit"), 4);
hit_2 = hit_fx_create(sprite_get("2_hit"), 4);
hit_3 = hit_fx_create(sprite_get("3_hit"), 4);
diffusion_sprite = 0;
diffusion1 = hit_fx_create(sprite_get("diffusion_" + string(diffusion_sprite)), 14);
diffusion2 = hit_fx_create(sprite_get("diffusion_" + string(diffusion_sprite)), 10);
spread = [];
spreadvsp = [-6, -5.5, -5, -5.5, -6];
spreadhsp = [-2, -1, 0, 1, 2];
spreading = 0;
blink_timer = 0;
c_sound = 0;

//fspecial
missile_sprite = 0; //0 base, 1 sups, 2 ice
ice_icon = sprite_get("ice_icon");
ice_particle = sprite_get("ice_particle");
missile_hit = hit_fx_create(sprite_get(string(missile_sprite) + "_missile_hit"), 10);

//dattack
spark_timer = 0;
spr_distance = 0;

//flash shift
flash_alpha = 0;
dodgex = x;
dodgey = y;
dodgendx = x;
dodgendy = y;
dodge_amount = 3;

//rune F
if(has_rune("F")){
    set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 88);
    set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 100);
    
    set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 60);
    set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 60);
    set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 110);
    set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 100);
    
    set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 60);
    set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 80);
    set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 60);
    set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 70);
    set_hitbox_value(AT_BAIR, 3, HG_WIDTH, 60);
    set_hitbox_value(AT_BAIR, 3, HG_HEIGHT, 80);
    
    set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 80);
    set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 80);
    set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 80);
    set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 80);
    set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 80);
    set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 80);
    
    set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 80);
    set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 60);
    set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 60);
    set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 60);
}

//rune k
damage_counter = 0;

/*
3-spammable plasma
