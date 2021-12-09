hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

//These variables are used to reference Bar's default movement stats for modification.
normal_dash_anim_speed = .3;

normal_walk_speed = 2.75;
normal_walk_accel = 0.2;
normal_walk_turn_time = 8;
normal_initial_dash_time = 10;
normal_initial_dash_speed = 7.5; 
normal_dash_speed = 7; 
normal_dash_turn_time = 14;
normal_moonwalk_accel = 1.2;

normal_leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
normal_max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
normal_air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
normal_air_accel = .3;
normal_prat_fall_accel = .85;
normal_air_friction = .05;

normal_max_djumps = 3;

normal_fast_fall = 15; //fast fall speed
normal_knockback_adj = 1.15; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

normal_prat_land_time = 6;
normal_wave_land_time = 8;
normal_wave_land_adj = 1.35;
normal_wave_friction = .4; //grounded deceleration when wavelanding



char_height = 56;
idle_anim_speed = .2;
crouch_anim_speed = .1;
walk_anim_speed = .2;
dash_anim_speed = normal_dash_anim_speed;
pratfall_anim_speed = .25;

walk_speed = normal_walk_speed;
walk_accel = normal_walk_accel;
walk_turn_time = normal_walk_turn_time;
initial_dash_time = normal_initial_dash_time;
initial_dash_speed = normal_initial_dash_speed;
dash_speed = normal_dash_speed;
dash_turn_time = normal_dash_turn_time;
dash_turn_accel = 1.2;
dash_stop_time = 6;
dash_stop_percent = .4; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .6;
moonwalk_accel = normal_moonwalk_accel;

jump_start_time = 5;
jump_speed = 11.5;
short_hop_speed = 7;
leave_ground_max = normal_leave_ground_max; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = normal_max_jump_hsp; //the maximum hsp you can have when jumping from the ground
air_max_speed = normal_air_max_speed; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = normal_air_accel;
prat_fall_accel = normal_prat_fall_accel; //multiplier of air_accel while in pratfall
air_friction = normal_air_friction;

djump_speed = 5;
djump_accel = -1;
djump_accel_start_time = 0;
djump_accel_end_time = 10;
max_djumps = normal_max_djumps;
double_jump_time = 33; //the number of frames to play the djump animation. Can't be less than 31.

walljump_hsp = 5;
walljump_vsp = 11;
walljump_time = 32;
wall_frames = 2;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = normal_fast_fall; //fast fall speed //12
gravity_speed = .65;
hitstun_grav = .5;
knockback_adj = normal_knockback_adj; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = normal_prat_land_time;
wave_land_time = normal_wave_land_time;
wave_land_adj = normal_wave_land_adj; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = normal_wave_friction; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 2;
roll_back_active_frames = 4;
roll_back_recovery_frames = 3;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_birdflap");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

msg_menu = false;

//test player detection
testing = false;
with (oTestPlayer)
{
	testing = true;
	msg_menu = true;
}

//practice mode check
if (get_match_setting(SET_PRACTICE)) msg_menu = true;

//Hovering
true_gravity_speed = gravity_speed;
true_max_fall = max_fall;
hover_gravity_multiplier = 0.1;
hover_anim_speed = 0.25;

hovering = false;
can_hover = true;
glide_time_max = 100;
glide_time_restore = 50;
glide_time = glide_time_max;
show_glide_ui = false;

//Double Jumps
prev_djumps = 0; //used for double jump turnarounds in update.gml
djump_speed_reset = djump_speed;
jump_total = max_djumps + 1; //unused

//platform
plat_frame = 0;
plat_animspeed = 0.25;
plat_strip_length = 16; //not sure i even used this lmfao
plat_pre_sprite = sprite_get("plat_pre");
plat_post_sprite = sprite_get("plat_post");

alt_cur = get_player_color(player);
alt_col_dblue = 0;
alt_col_white = 1;
alt_col_hair = 2;
alt_col_skin = 3;
alt_col_lblue = 4;
alt_col_black = 5;
alt_col_light = 6;
alt_col_fire = 7;

//Custom Hitboxes
hb_sweet_0 = sprite_get("hb_sweet_0");
hb_sweet_1 = sprite_get("hb_sweet_1");
hb_sweet_2 = sprite_get("hb_sweet_2");
hb_burn_0 = sprite_get("hb_burn_0");
hb_burn_1 = sprite_get("hb_burn_1");
hb_burn_2 = sprite_get("hb_burn_2");
hb_light_0 = sprite_get("hb_light_0");
hb_light_1 = sprite_get("hb_light_1");
hb_light_2 = sprite_get("hb_light_2");
hitbox_shape1 = -1; //sweetspots
hitbox_shape2 = -1; //holy burning
hitbox_shape3 = -1; //lightstun (unused for now)

HG_HITBOX_COLOR = -1;
//HG_HITBOX_COLOR is a new custom variable that changes the color of the hitboxes
//0 = default
//1 = sweetspots(yellow), only when there's at least 1 sour spot and 1 sweetspot these will appear
//2 = holy burn(cyan), when using any move that inflicts holy burn
//3 = lightstun(white), will only show if the sparks of light rune is active, on moves that inflict a spark of light

//heh, stole from munophone so i can still use it
window_end = 0;

//////////////////////////////////////////////////MANA MECHANIC SECTION//////////////////////////////////////////////////

mpGainable = true; //disables mp gain from attacks
mpBelowZero = false;

//No MP Message
mp_error_active = false;
mp_error_frame = 0;
mp_error_speed = 0.25;
mp_errorcool = 20;
mp_message1 = hit_fx_create(sprite_get("no_mp2"), 32);
mp_message2 = hit_fx_create(sprite_get("no_mp2-"), 32);

//MP color
gauge_color = $E9973E;

//Mini MP Gauge
show_miniMP = false;
miniMP_time = 0;
miniMP_time_limit = 180;
miniMP_alpha = 1;

miniMP_attack = 100; //amount of time it shows the mini gauge when attacking/getting hit/parrying
miniMP_MPdebug = 120; //amount of time it shows the mini gauge when going into "mana debug mode"
miniMP_noMP = 160; //amount of time it shows the mini gauge when you have no MP
//it's easier to set numbers on the same spot lol

//Mana Debug Mode
manaDebug = false;
manaDebug_cooldown = 0;
manaDebug_cd_active = false;

//Fast Count
mp_fc_maxNum = 60; //60 = 60 frames
mp_fc_num = 0;
mp_fc_rate = 2; //the rate at which the MP goes up, no negative numbers
mp_rate_default = mp_fc_rate;

//MP gain
mp_spawn = 100; //this MP value will decide how much bar MP has when spawning and respawning, aswell as training mode reset
mp_current = mp_spawn;
mp_max = 100;

//skill cooldown
cool_start = false;
cool_reset = 120;
cooldown = cool_reset;
cd_error_active = false;
cd_error_frame = 0;
cd_error_speed = 0.25;
cd_errorcool = 20;
cd_message1 = hit_fx_create(sprite_get("cooldown"), 32);
cd_message2 = hit_fx_create(sprite_get("cooldown-"), 32);

//Strongs Cost
strong_cost = 5;

//Skill Cost
lightdagger_cost = 5;
buff_total_cost = 50; //"buffs" include burning fury and guard aura
buff_overtime_cost = 5;
buff_activation_cost = 10;
burningfury_attack_cost = 10;
forceleap_activate_cost = 10;
forceleap_attack_cost = 10;
forceleap_total_cost = forceleap_activate_cost + forceleap_attack_cost;
photonblast_cost = 40;
accelblitz_cost = 10; //rip za warudo
chasmburster_activate_cost = 5;
chasmburster_attack_cost = 25;
chasmburster_total_cost = chasmburster_activate_cost + chasmburster_attack_cost;
powersmash_activate_cost = 5;
powersmash_attack_cost = 25;
powersmash_total_cost = powersmash_activate_cost + powersmash_attack_cost;
emberfist_cost = 20;
lighthookshot_activate_cost = 5;
lighthookshot_attack_cost = 15;
lighthookshot_total_cost = lighthookshot_activate_cost + lighthookshot_attack_cost;
searingdescent_activate_cost = 10;
searingdescent_attack_cost = 10;
searingdescent_total_cost = searingdescent_activate_cost + searingdescent_attack_cost;
flashbang_activate_cost = 0;
flashbang_attack_cost = 10;
flashbang_total_cost = flashbang_activate_cost + flashbang_attack_cost;

//skills menu stuff
//is_training_menu = false; //this just redirects the command from unfreezing everyone to just unfreezing bar

//skill refferences
AT_SKILL0 = AT_NTHROW; // [0] light dagger
AT_SKILL0_AIR = AT_NSPECIAL_AIR; // [0] light dagger (air)
AT_SKILL1 = AT_FTHROW; // [1] burning fury
AT_SKILL1_AIR = AT_FSPECIAL_AIR; // [1] burning fury (air)
AT_SKILL2 = AT_UTHROW; // [2] force leap
AT_SKILL3 = AT_DTHROW; // [3] photon blast
AT_SKILL4 = AT_NSPECIAL_2; // [4] accel blitz
AT_SKILL5 = AT_EXTRA_1; // [5] chasm burster
AT_SKILL6 = AT_FSPECIAL_2; // [6] power smash
AT_SKILL7 = AT_USPECIAL_2; // [7] guard aura
AT_SKILL8 = AT_DSPECIAL_2; // [8] ember fist
AT_SKILL9 = AT_EXTRA_2; // [9] light hookshot
AT_SKILL10 = AT_EXTRA_3; // [10] searing dscent
AT_SKILL11 = 39; // [11] flashbang

//jpeg menu---------------------------------------------------------------------

//you can change the sprite per-alt or for other reasons if you wish by changing which sprite this variable uses
hud_menu = sprite_get("hud_menu_bg");

//menu variables
specialnums = [0, 0, 0, 0];         //add 1 to each number for the special number, i.e. 0211 = specs 1322
menu_open = false;
menu_confirm = true;
menu_close = false;                 //used to reset all variables at once when the menu is closed
close_timer = -1;                   //used for menu vfx when closing					
if (!testing) menu_timer = 120;		//menu closes when this equals -1
else menu_timer = -1; 
menu_dir = -1;                      //returns 0 for up, 1 for right, 2 for down, and -1 for left and idle
prev_dir = -1;                      //used for input lockout so you pressing a direction once doesn't register every frame
active_col = 0;                     //used for player selection
for(var i = 0; i <= 3; i++){
    for(var j = 0; j <= 2; j++){
        specs_chosen[i, j] = true;  //determines what icons are drawn on the menu
    }
}
cursor_timer = 0;					//used for the cursor blinking
arrow_frame = 0;
arrow_anim_up = false;
arrow_anim_side = false;
arrow_anim_down = false;
menu_armor_time_reset = 60*4;
menu_armor_time = menu_armor_time_reset;

//jpeg menu end-----------------------------------------------------------------

//if more are needed, i'll just use other inputs
//or if i can't use the default specials like that cuz they will be overwritten idk

//holy light
lightstun_timer = -1; //it counts down twice, once for the pre timer and again for the stun itself
lightstun = false;
lightstun_pre_stun = false;
lightstun_parried = false;
lightstun_parried_timer = -1;
lightstun_has_hit = false;

fx_lightstunned = sprite_get("fx_lightstunned");
fx_lightstunned_frame = 0;
fx_lightstunned_rot = 0;
fx_lightstunned_alpha = 1;
fx_lightstunned_speed = 0.25;
fx_lightstunned_alphaincrease = false;

//holy burn
holyburning = false;
holyburn_counter = 0;
holyburn_maxcount = 120;
holyburn_default_maxcount = 120;
burn_outline = [255, 255, 255];
holy_burned_by = noone;

//skill graphic variables
fx_empty = hit_fx_create(sprite_get("empty"), 1); //this just allows me to deny hitsparks from existance

fx_introlight = sprite_get("fx_introlight_back");
fx_boost = hit_fx_create(sprite_get("fx_speedboost"), 14);

fx_ustrong_lightaxe_sprite = sprite_get("empty");
fx_lightdagger = sprite_get("empty");
fx_lightdagger_air = sprite_get("empty");
fx_accel_indicator = sprite_get("accelblitz_indicator");
fx_lighthookshot = sprite_get("empty");
fx_armorbreak = hit_fx_create(sprite_get("theikos_fx_fstrong_armorbreak"), 20);
fx_lightpillar = sprite_get("theikos_fx_ustrong_lightpillar");

//normal ver
fx_b_lightblow1 = hit_fx_create(sprite_get("fx_lightblow1"), 15);
fx_b_lightslash = hit_fx_create(sprite_get("fx_lightslash"), 15);
fx_b_lightblow2 = hit_fx_create(sprite_get("fx_lightblow2"), 25);
fx_b_lightblow3 = hit_fx_create(sprite_get("fx_lightblow3"), 30);
fx_b_fireblow1 = hit_fx_create(sprite_get("fx_fireblow1"), 20);
fx_b_fireblow2 = hit_fx_create(sprite_get("fx_fireblow2"), 30);
fx_b_fireblow3 = hit_fx_create(sprite_get("fx_fireblow3"), 40);

fx_b_dstrong_fireblast = hit_fx_create(sprite_get("fx_dstrong_fireblast"), 40);
fx_b_rockblow = hit_fx_create(sprite_get("fx_rockblow"), 27);
fx_b_photonblast = hit_fx_create(sprite_get("fx_photonblast"), 21);
fx_b_accelblitz = hit_fx_create(sprite_get("fx_accelblitz"), 18);
fx_b_chasmburster = hit_fx_create(sprite_get("fx_chasmburster"), 18);
fx_b_earthshatter = hit_fx_create(sprite_get("fx_chasmshatter"), 180);
fx_b_homing_afterimage = hit_fx_create(sprite_get("fx_homing_afterimage"), 16);
fx_b_emberfist = hit_fx_create(sprite_get("fx_emberfist"), 30);
fx_b_flashbang_lightsmear = hit_fx_create(sprite_get("fx_flashbang_lightsmear"), 9);
fx_b_flashbang_firesmear = hit_fx_create(sprite_get("fx_flashbang_firesmear"), 15);
fx_b_firesmear = hit_fx_create(sprite_get("fx_dstrong_t_firesmear"), 20);
fx_b_fireground = hit_fx_create(sprite_get("fx_dstrong_t_fireground"), 90);

//theikos ver
fx_t_lightblow1 = hit_fx_create(sprite_get("theikos_fx_lightblow1"), 15);
fx_t_lightslash = hit_fx_create(sprite_get("theikos_fx_lightslash"), 15);
fx_t_lightblow2 = hit_fx_create(sprite_get("theikos_fx_lightblow2"), 25);
fx_t_lightblow3 = hit_fx_create(sprite_get("theikos_fx_lightblow3"), 30);
fx_t_fireblow1 = hit_fx_create(sprite_get("theikos_fx_fireblow1"), 20);
fx_t_fireblow2 = hit_fx_create(sprite_get("theikos_fx_fireblow2"), 30);
fx_t_fireblow3 = hit_fx_create(sprite_get("theikos_fx_fireblow3"), 40);

fx_t_dstrong_fireblast = hit_fx_create(sprite_get("theikos_fx_dstrong_b_fireblast"), 40);
fx_t_rockblow = hit_fx_create(sprite_get("theikos_fx_rockblow"), 27);
fx_t_photonblast = hit_fx_create(sprite_get("theikos_fx_photonblast"), 21);
fx_t_accelblitz = hit_fx_create(sprite_get("theikos_fx_accelblitz"), 18);
fx_t_chasmburster = hit_fx_create(sprite_get("theikos_fx_chasmburster"), 18);
fx_t_earthshatter = hit_fx_create(sprite_get("theikos_fx_chasmshatter"), 180);
fx_t_homing_afterimage = hit_fx_create(sprite_get("theikos_fx_homing_afterimage"), 16);
fx_t_emberfist = hit_fx_create(sprite_get("theikos_fx_emberfist"), 30);
fx_t_flashbang_lightsmear = hit_fx_create(sprite_get("theikos_fx_flashbang_lightsmear"), 9);
fx_t_flashbang_firesmear = hit_fx_create(sprite_get("theikos_fx_flashbang_firesmear"), 15);
fx_t_firesmear = hit_fx_create(sprite_get("theikos_fx_dstrong_firesmear"), 20);
fx_t_fireground = hit_fx_create(sprite_get("theikos_fx_dstrong_fireground"), 90);

//effect hit_fx_create setup
fx_lightblow1 = fx_b_lightblow1;
fx_lightslash = fx_b_lightslash;
fx_lightblow2 = fx_b_lightblow2;
fx_lightblow3 = fx_b_lightblow3;
fx_fireblow1 = 	fx_b_fireblow1;
fx_fireblow2 = 	fx_b_fireblow2;
fx_fireblow3 = 	fx_b_fireblow3;

fx_dstrong_fireblast = 		fx_b_dstrong_fireblast;
fx_rockblow = 				fx_b_rockblow;
fx_photonblast = 			fx_b_photonblast;
fx_accelblitz = 			fx_b_accelblitz;
fx_chasmburster = 			fx_b_chasmburster;
fx_earthshatter = 			fx_b_earthshatter;
fx_homing_afterimage = 		fx_b_homing_afterimage;
fx_emberfist = 				fx_b_emberfist;
fx_flashbang_lightsmear = 	fx_b_flashbang_lightsmear;
fx_flashbang_firesmear = 	fx_b_flashbang_firesmear;
fx_firesmear = 				fx_b_firesmear;
fx_fireground = 			fx_b_fireground;

//particles
set_hit_particle_sprite(1, sprite_get("fx_lightparticle"));
set_hit_particle_sprite(2, sprite_get("fx_fireparticle"));

set_hit_particle_sprite(5, sprite_get("theikos_fx_lightparticle"));
set_hit_particle_sprite(6, sprite_get("theikos_fx_fireparticle"));


//technical variables
did_i_turn = false; //for f-strong
turn_timer_value = 12;
turn_timer = turn_timer_value;
start_turn_count = false;
turn_left = false;
turn_right = false;

sfx_charge = sound_get("sfx_charge");

hitbox_cooldown_max = 10; //for d-strong
hitbox_cooldown = hitbox_cooldown_max;

tracking_target = noone; //for u-strong

burningfury_active = false;
mp_burn = 2;
fury_damage = 1.5;
fury_cycle = 0; //the number here doesn't matter
burningfury_target = noone;

forceleap_up = false;
forceleap_down = false;
leap_angle = 0;
leap_xpos = 0;
leap_ypos = 0;

photon_charge = false;
photon_cycle = 0; //counts the amount of attacks
blast_power = 0; //calculate the damage
max_charge_time = 40; //window length of the winged up charging
photon_used = false;

accelblitz_active = false;
accelblitz_done_once = false;
accelblitz_active_timer = false;
accelblitz_post_timer = 0;
accel_drawpoint_x = 0;
accel_drawpoint_y = 0;
tp_angle = 90; //the angle of the joystick, the default is 90 (up)
tp_dist = 15; //distance that the indicator will go per frame
dist_x = 0;
dist_y = 0;
tp_prec = 8; //The precision of the teleportation algorithm.

blur_array_length = 2;
blur = array_create(blur_array_length);

burst_pos = 56;
burst_count = -1;
max_burst_count = 20;
burst_count_start = false;
spawn_earth_shatter = false;
reached_max_bursts = false;
burst_cool = 0;
chasm_burningfury_was_active = false;

sfx_fire = sound_get("sfx_constantfire");
artc_powersmash_chasm = noone;

polaris_active = false;
homing_target_id = noone;
already_shot = false;
homing_cooldown = -1; //30 frames cooldown
homing_post_buffer = -1;
homing_post_buffer_counting = false;
homing_outline_alpha = 0.1;
homing_outline_alpha_rate = 0.02;
homing_outline_increase = true;

emberfist_up = false;
emberfist_down = false;

hookshot = -1; //placeholder for the hitbox
hookshot_speedboost = false; //used for flinging bar
hookshot_lag_count = 0; //throw window time
hookshot_chargetime = 0; //how strong is bar's charge
hookshot_launch = false; //used for the animation
hookshot_skip = false;
hookshot_retract = false; //these were ment for the article to know if bar caught anything
hookshot_retract_timer = 0;

descent_timer_reset = 20;
descent_timer = descent_timer_reset; //checks untill bar can jump/airdodge out out the move
searingdescent_id = noone;

flashbanged_id = noone;

//////////////////////////////////////////////////MISC. SECTION//////////////////////////////////////////////////

is_AI = false;
AI_vs = false; //bypasses the "i can't see the AI's skills cuz he can choose whatever he wants now"
AI_fighting_time = 0;
show_player_info = true;
is_bar_ditto = false;

//bar URLs just in case
is_bar = 2601775097; //full ver
is_bar_test = 2560739972; //test build
is_bar_old = 2429376422; //old ver- why do you even have this

//small_sprites = 1;

game_paused = false;

last_attack_hit = 0;
previous_attack = AT_JAB;

//intro - credit to nackles42 for the tutorial!
intro_timer = -4; //setting it to -4 should prevent the first few frames of the animation from being blocked by the screen opening.
intro_alpha = 0;
intro_pillar_fx_frame = 0;
intro_pillar_fx_speed = 0.25;
intro_blur = array_create(5);

//fall animation
switch_spr = false;

//is this an 8-bit alt? (used to give it different outline effects)
is_8bit = false;
if (get_player_color(player) == 14 || get_player_color(player) == 15) is_8bit = true;
else is_8bit = false;

helel_alt = false;
if (get_player_color(player) == 25) helel_alt = true;
else helel_alt = false;

theikos_alt = false;
if (get_player_color(player) == 26) theikos_alt = true;
else theikos_alt = false;


//outline coloring
color_r = 0;
color_g = 0;
color_b = 0;
increase = true;
color_timer = 0;
color_time_max = 30;

//B E   A F R A I D   N O T
allow_bibical = false;
bibical = false;

if (get_player_color(player) == 19)
{
    switch(get_match_setting(SET_SEASON))
    {
        case 1: //vday
            allow_bibical = false;
            break;

        case 2: //summer
            allow_bibical = false;
            break;

        case 3: //halloween
            allow_bibical = true;
            break;

        case 4: //xmas
            allow_bibical = false;
            break;
    }
}
if (allow_bibical) bibical = true;

//helel skin stuff
color_rate = 0;
helel_blur = array_create(2);

//classic skin stuff
//the actual date stuff is set in: init_shader.gml | css_draw.gml
myday = 25;
mymonth = 10;
birthboy = false;
if (current_day == myday && current_month == mymonth) birthboy = true;

//move names for the stat debug thing
move_names = [
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
	"AT_PHONE",
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

//////////////////////////////////////////////////ABYSS RUNES SECTION//////////////////////////////////////////////////

//rune A
runeA_dash = false;
runeA_dash_dir = spr_dir;
runeA_dash_time_max = 8;
runeA_dash_timer = runeA_dash_time_max;
runeA_dash_cool_active = false;
runeA_dash_cooldown_max = 20;
runeA_dash_cooldown = runeA_dash_cooldown_max;

//rune B
runeB_glide_time_max = 150;

//rune J
runeJ_multiplyer = 0.2;

//rune G
runeG_blitzjump = false;
runeG_was_free = false;
runeG_attack_kb_y = 0;

//rune H
runeH_target = noone;
runeH_pullx = 0;
runeH_pully = 0;
runeH_angle = 0;

//rune K
runeK_mana_regen = 10;
runeK_mp_max = 200;
gauge_EX_color = $FAF328;
gauge_EX_color_return = gauge_EX_color;
gauge_EX_timer = 5;
gauge_EX_timer_active = false;

//E9973E = light blue
//E9C23E = light blue 2
//FAF328 = light blue 3
//43E9FF = yellow
//2EC7FF = yellow 2
//3BE1FF = yellow 3
//486BFF = red

//rune N
holyburn_mechanic_active = true;
lightstun_mechanic_active = false;

//rune O
od_current = 0;
od_max = 100;
od_already_active = false;
od_fire_timer = 0;
od_ready = false;
od_gainable = true; //it's just stopping it for a few frames so the variables can reset properly
od_cooldown = 0; //this prevents bar from keeping the godpower mode on
//od_prepare_godpower = false;

gauge_OD_color = $3BE1FF;
gauge_OD_color_return = gauge_OD_color;
gauge_OD_timer = 5;
gauge_OD_timer_active = false;
AT_OVERDRIVE = 49;
od_fallthrough_y = 0; //if bar is on the ground he should fall_through untill he reach
OD_stop_timer_max = 145;
OD_stop_timer = OD_stop_timer_max;
OD_sword_image = 0;
OD_slash_alpha = 1;
od_fx_fireblow2 = hit_fx_create(sprite_get("theikos_fx_fireblow2"), 30);
od_fx_fireblow3 = hit_fx_create(sprite_get("theikos_fx_fireblow3"), 40);
if (is_8bit)
{
	od_fx_fireblow2 = fx_fireblow2;
	od_fx_fireblow3 = fx_fireblow3;
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//FINAL SMASH/OVERDRIVE POST ATTACK EFFECT: LORD'S BLESSING
//buffs his natural mana regen, damage output (and by extention mana gain from hitting), doubles the holy burn time and extends light attack hitstuns
//the buff only starts after the entire attack is finished
//lord's punishment will grant bar golden eyes (in post_draw.gml), will also make all his effects golden like the theikos alt

godpower = false;
god_damage = 0.5;
god_mp_rate = 10;
god_time_reset = 900; //15 secs
god_time = god_time_reset;
god_burn_time = 240;

if (has_rune("L"))
{
	god_time_reset = 1800; //30 secs
	god_time = god_time_reset;
}

//////////////////////////////////////////////////THEIKOS BAR SECTION//////////////////////////////////////////////////

theikos = false; //this is used to load up all the theikos stuff
if (has_rune("L")) theikos = true;
else theikos = false;

theikos_active = false; //this is used so i can delay the transformation
fuck_you_cheapies = false;
AT_THEIKOS = 47;
trans_stall_max = 120;
trans_stall = 0;

aura_frame = 0;
base_aura_speed = 0.25;
aura_speed = base_aura_speed;
aura_alpha = 0.3;
aura_color = $45B6F5;
text_time = 0; //used for the text particles
text_maxTime = 5; //controls the rate of holy text particles spawning
text_alpha = 1; //alpha animation

//i don't need healing but thanks
heal_count = 0
heal_count_max = 60; //decides how long it takes to heal 1 unit of "damage_heal"
heal_me_now = -1; //the amount of health bar heals after 1 cycle
damage_heal = 0;

//why do i hear boss music?
bossMusic_start = false;
bossMusic_count = 0;
bossMusic_playing = false;
theikos_music_toggle = true;

//Theikos Skin Hair Glow
theikos_color_increase = true;

theikos_color_maxTime = 60; //60 = 60 frames
theikos_color_rate = 2; //the rate at which the time goes up
theikos_color_alpha = 0; //the "if" statements use this for the time

theikos_redrate = 0.9;
theikos_red = 70;
theikos_greenrate = 1.5;
theikos_green = 129;
theikos_bluerate = 0.8;
theikos_blue = 195;

//the calculation i did for these goes like this:
//1: take the brightest color and darkest color you want it to fade between
//2: lightest color - darkest color = value
//3: value / 255 = rate
//4: tweak the numbers till they fit your liking

heavy_land = false;
heavy_land_start_count = false;
heavy_land_count = 0;

//Attacking
theikosAttack = 0.5; //this is used for the theikos attack multiplyer

turbo_time = false;

//rapid punches Fstrong
fstrong_canceled = false;
fstrong_loops_remaining = 0;
fstrong_countup = 0;

//rapid going up Ustrong (i might not need some of these variables and just merge them with the Fstrong stuff)
ustrong_canceled = false;
ustrong_loops_remaining = 0;
ustrong_countup = 0;
lightpillar_frame = 0;
lightpillar_xscale = 0.3;
lightpillar_alpha = 0.8;
ustrong2_cast = false;

//fire ground logic for Dstrong
groundfire_count = 3;
fire_proj_vspeed = 0; //changes automatically in attack_update.gml
groundfire_offset = 40;
dstrong2_active = false;
dstrong2_active_count = 80; //the same value as AT_DSTRONG_2's 3rd hitbox HG_LIFETIME value
dstrong2_fire_x = x;
dstrong2_fire_y = y;

//theikos Fstrong sound effect array
sfx_armorbreak[0] = sound_get("sfx_armorbreak1");
sfx_armorbreak[1] = sound_get("sfx_armorbreak2");
sfx_armorbreak[2] = sound_get("sfx_armorbreak3");

if (theikos_alt) user_event(1); //should activate the effects without needing anything else, he can't turn back from this lol
user_event_1_active = false;

user_event_0_was_active = false;

//////////////////////////////////////////////////WORKSHOP INTERRACTION SECTION//////////////////////////////////////////////////

//stat debug stuff
mp_gain_hit = 0; //updates on hit/getting hit/parry

mp_gain_word = "";
fastfall_word = "";
theikos_word = "";
od_gain_word = "";

//green flower zone
gfzsignspr = sprite_get("GFZ_signpost");

//miiverse
miiverse_post = sprite_get("miiverse");

//pokemon stadium
pkmn_stadium_front_img = sprite_get("pokemon_front");
pkmn_stadium_back_img = sprite_get("pokemon_back");
pkmn_stadium_name_override = "bar";

//steve death message
steve_death0 = "Steve was denied from Shamaeem by Bar_Rey using [Mage's Gauntlet]"; //message to appear when there's no other message
steve_death1 = "Steve was slain by Bar_Rey"; //normal death message
steve_death2 = "Steve was slain by Bar_Rey using [Mage's Gauntlet]"; //death from an attack that uses bar's gauntlet
steve_death3 = "Steve was flashed to death Bar_Rey"; //death from light based attacks
steve_death4 = "Steve was burnt to a crisp whilst fighting Bar_Rey using [Mage's Gauntlet]"; //dying while holyburning = true;
steve_death5 = "Death.attack.AT_TAUNT"; //dying if bar killed steve with his taunt

steve_death_message = steve_death0;

//moonchild
childsupport = 1;

//the last resort
resort_portrait = sprite_get("last_resort");

//the chosen one art
if (theikos) tcoart = sprite_get("tcoart2");
else tcoart = sprite_get("tcoart1");

//soulbound conflict
if (theikos) battle_text = "* The guardian's true face revealed.";
else battle_text = "* Bar braces himself!";

//assist buddy
assistAttack = AT_FAIR; //The attack to use as the assist
assistOffsetX = -32; //The horizontal distance they spawn from the player
assistOffsetY = 0; //The vertical distance they spawn from the player
assistVelX = 27; //The horizontal velocity applied when the assist is called
assistVelY = -6; //The vertical velocity applied when the assist is called
assistGroundOnly = false; //Whether or not they are forced to the ground
assistFloat = false; //Whether or not they stay in place vertically
assistCool = 120; //The time it takes for the assist to recharge

hasnepusupport = 1;
nepusong = sound_get("mus_nepu");

//final smash buddy
fs_meter_color = 0; //a custom variable for the gauge color

fs_portrait_x = 246;
fs_char_portrait_y = 50;
fs_char_portrait_override = sprite_get("fs_portrait1");
fs_char_chosen_final_smash = "custom";
fs_char_chosen_trigger = "custom"; //put [fs_force_fs = true;] when bar should activate AT_OVERDRIVE in attack_update.gml
fs_char_attack_index = AT_OVERDRIVE;
//fs_meter_x = 0;
//fs_meter_y = 0;
fs_hide_meter = true; //so i can make it use the OD gauge instead
//put [fs_charge] in hit_player.gml and parry.gml so it will work like the rune version
//put [fs_charge_mult] to decide the charge rate if it doesn't suit me fancy
//use [fs_ai_attempt_use] to make a CPU use the final smash

//rivals of fighters stage
//superMove = AT_OVERDRIVE;

//callie compatibility
user_event(12);

//car bar
if (get_player_color(player) != 31 && !theikos) kart_sprite = sprite_get("car");
else kart_sprite = sprite_get("car_theikos");
kart_frames = 4;
kart_anim_speed = 0.1;
kart_anim_speed_scaling = 0.3;
kart_engine_sound = 3;
kart_drift_spr = 3;

//so bar can gain mana in adventure mode and other various stage objects
hit_player_event = 13;

//munophone
muno_event_type = 0;
user_event(14);