// the bug, it still haunts me gordon

hurtbox_spr = sprite_get("soldier_hurtbox");
crouchbox_spr = sprite_get("soldier_crouchbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

small_sprites = 1;

char_height = 56;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .2;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 6;
dash_speed = 5.5;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .4;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 5.5;
djump_speed = 10;
leave_ground_max = 5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .05;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 8;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .55;
hitstun_grav = .5;
knockback_adj = 0.95; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 16;
wave_land_time = 8;
wave_land_adj = 1.2; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding


//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 1;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 2;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_wra");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

// soldier specific variables
debug = 0;
soldier_debug = 0;
//hud_mode = 2;

rockets_clip = 4;
rockets_clip_max = 4;
rockets_reserve = 20;

buff_current = 0;
buff_max = 150;
buff_timer = 900;
buff_cur_timer = 0;
buff_timer_started = false;
buff_active = false;

buff_visual_back = sprite_get("dspecial_aura_back");
buff_visual_front = sprite_get("dspecial_aura_front");

hud_main = sprite_get("hud_main");
hud_rocket_numbers = sprite_get("hud_rocket_numbers");
hud_ragebar = sprite_get("hud_ragebar");
hud_para = sprite_get("hud_para");
hud_buff = sprite_get("hud_buff");

// crit sprite
critsprite = sprite_get("crit");
crit_vfx = hit_fx_create( critsprite, 60);

critsprite_mirror = sprite_get("crit_mirror");
crit_vfx_mirror = hit_fx_create( critsprite_mirror, 60);

para_active = false;
para_should_undeploy = false;
para_undeploy_anim_timer = 0;
para_sprite_offset = 6;

rocket_cancel = false;
rocket_dstrong_boost_direction = 0;

blastjumping = false;

blastjump_sound = sound_get( "grenade_jump_lp_01" );
blastjump_sound_deployed = false;
blastjump_should_undeploy = false;

fspecial_blast_ground_timer = 0;

explosion_sound = sound_get("explode1");

grenade_explode = 0;

blastjump_dust_timer = 0;

draintask = true;

death_sound_chance_var = 0;
death_sound_var = 0;

airstrongs_credits = 60;

teammate_triggered_buff = 0;

css_dspec = 0;
dspec_swap_task_timer = 0;

_col = get_player_hud_color( player );

// variable used for blastjump state anims
rj_anim_pos = 0; 
rj_dstrong_anim_pos = 0;

// localization file updates: 1


// compatibilities :(

//Kirby Copy Ability
TCG_Kirby_Copy = 10;

// Po & Gumbo food
pot_compat_variable = sprite_get("food_soldier");
pot_compat_text = "Military Chocolate";

// Hikaru support
Hikaru_Title = "The Tenth Class";

// steve
steve_death_message = "Steve was slain by Soldier using [Zoo Wee Mama]";

// undertale stage compatibility
battle_text = "*Smells like gunpowder.";

// mt dedede stage compatiblity init
arena_title = "Screamin' Eagle";

// snake interrogation support
sna_interrogated_line_01 = "If someone tells you to 'quit smoking', don't believe them!";
sna_interrogated_line_02 = "The cow on Teufort is singlehandedly keeping the world intact!";
sna_interrogated_line_03 = "We cannot teleport bread anymore!";

//(legacy) abyss rune buddy support
abyssEnabled = false;
enum runes {A = 1,B = 2,C = 3,D = 4,E = 5,F = 6,G = 7,H = 8,I = 9,J = 10,K = 11,L = 12,M = 13,N = 14,O = 15}
runeA = false; runeB = false; runeC = false; runeD = false; runeE = false; runeF = false; runeG = false; runeH = false; runeI = false; runeJ = false; runeK = false; runeL = false; runeM = false; runeN = false; runeO = false; runesUpdated = false;
ab_hud_x = 0;
ab_hud_y = 0;

// knight support
knight_compat_dream = 
    [
        "I must bring victory to my team!",
        "Is this one of... Merasmus's goons?",
        "Must think about... sensible haircuts!"
    ]


//abyssMods[1 to 15] = [type, description];
//types are: -1 - disabled
// 0 - object mod: Modifies a static object left behind after an attack.
// 1 - ranged mod: Modifies a projectile attack.
// 2 - hit mod: Modifies a direct physical interaction with an opponent.
// 3 - ability boost: Powers up a character attribute or action.
abyssMods = array_create(16,[-1,"Not Implemented."]);

abyssMods[@ runes.A] = [0, "Explosions do not deal self damage."];
abyssMods[@ runes.B] = [3, "Increased weight, 1% less damage taken while DSPECIAL is active."];
abyssMods[@ runes.C] = [3, "Extra air jump."];
abyssMods[@ runes.D] = [0, "USPECIAL creates an explosion. Consumes ammo."];
abyssMods[@ runes.E] = [2, "UTILT and UAIR deal more damage every 40% you have."];
abyssMods[@ runes.F] = [3, "DSPECIAL has a powerful hitbox while deploying."];
abyssMods[@ runes.G] = [1, "The rocket launcher has a bigger clip size and reloads faster."];
abyssMods[@ runes.H] = [2, "DTILT can be cancelled into anything on hit."];
abyssMods[@ runes.I] = [3, "DSPECIAL lasts much longer."];
abyssMods[@ runes.J] = [3, "Air strongs can be charged."];
abyssMods[@ runes.K] = [2, "FSTRONG in the air is much stronger."];
abyssMods[@ runes.L] = [2, "Random critical hits."];
abyssMods[@ runes.M] = [3, "DSPECIAL buff gives speed + heals 1% per hit."];
abyssMods[@ runes.N] = [1, "Rockets explode repeatedly while traveling."];
abyssMods[@ runes.O] = [1, "FSPECIAL and DSTRONG have less endlag."];

// offical rune support
runeA = has_rune("A");
runeB = has_rune("B");
runeC = has_rune("C");
runeD = has_rune("D");
runeE = has_rune("E");
runeF = has_rune("F");
runeG = has_rune("G");
runeH = has_rune("H");
runeI = has_rune("I");
runeJ = has_rune("J");
runeK = has_rune("K");
runeL = has_rune("L");
runeM = has_rune("M");
runeN = has_rune("N");
runeO = has_rune("O");

//adventure mode related
hit_player_event = 13;
draw_hud_event = 14;