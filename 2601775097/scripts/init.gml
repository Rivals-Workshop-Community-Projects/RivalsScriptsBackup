time = 0;

hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 56;
idle_anim_speed = .2;
crouch_anim_speed = .1;
walk_anim_speed = .2;
dash_anim_speed = .3;
pratfall_anim_speed = .25;

//These variables are used to reference Bar's default movement stats for modification by Guard Aura.
normal_walk_speed = 2.75;
normal_walk_turn_time = 8;
normal_walk_turn_time = 8;
normal_initial_dash_speed = 7.5; 
normal_dash_speed = 7; 
normal_dash_turn_time = 14;
normal_dash_turn_time = 14;
normal_moonwalk_accel = 1.2;
normal_wave_land_adj = 1.35;
normal_air_accel = .3;
normal_prat_fall_accel = .85;
normal_air_friction = .05;

walk_speed = 2.75;
walk_accel = 0.2;
walk_turn_time = 8;
initial_dash_time = 10;
initial_dash_speed = 7.5;
dash_speed = 7;
dash_turn_time = 14;
dash_turn_accel = 1.2;
dash_stop_time = 6;
dash_stop_percent = .4; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .6;
moonwalk_accel = 1.2;

jump_start_time = 5;
jump_speed = 11.5;
short_hop_speed = 7;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .05;

djump_speed = 5;
djump_accel = -1;
djump_accel_start_time = 0;
djump_accel_end_time = 10;
max_djumps = 3;
double_jump_time = 33; //the number of frames to play the djump animation. Can't be less than 31.

walljump_hsp = 5;
walljump_vsp = 11;
walljump_time = 32;
wall_frames = 2;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 12; //fast fall speed
gravity_speed = .65;
hitstun_grav = .5;
knockback_adj = 1.15; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 6;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .4; //grounded deceleration when wavelanding

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

//training mode detection - credit to Jill Katze
training_mode = false;
if (get_training_cpu_action() != CPU_FIGHT || was_reloaded) training_mode = true;
training_msg = false;
msg_menu = true;
msg_phone = true;

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

plat_frame = 0;
plat_animspeed = 0.25;
plat_strip_length = 16; //not sure i even used this lmfao

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
guardaura_counter_cost = 10;
emberfist_cost = 20;
lighthookshot_activate_cost = 5;
lighthookshot_attack_cost = 15;
lighthookshot_total_cost = lighthookshot_activate_cost + lighthookshot_attack_cost;

//skills menu stuff
menu_up = false;
menu_countdown_reset = 1200; //20 secs
menu_countdown = menu_countdown_reset;
is_training_menu = false; //this just redirects the command from unfreezing everyone to just unfreezing bar
recorded_time = 0; //used for testing
skill_cursor_x = 24; //light dagger's position is the default position
skill_cursor_y = 72;
movement = 32; //the cursor moves 32 pixels
border_x1 = 24; //left limit
border_x2 = 152; //right limit
border_y1 = 72; //up limit
border_y2 = 40; //down limit
selected_nspec = -1;
selected_fspec = -1;
selected_uspec = -1;
selected_dspec = -1;
with (oTestPlayer)
{
    selected_nspec = 0;
    selected_fspec = 1;
    selected_uspec = 2;
    selected_dspec = 3;
}
cur_select = 0;
//positions for the skill icons on the selection
skill_xpos1 = 24;
skill_xpos2 = 56;
skill_xpos3 = 88;
skill_xpos4 = 120;
skill_xpos5 = 152;
skill_ypos1 = 72;
skill_ypos2 = 40;

//input names - i'll need it eventually probably
inp_nspec = special_pressed;
inp_fspec = special_pressed && left_pressed || special_pressed && right_pressed;
inp_uspec = special_pressed && up_pressed;
inp_dspec = special_pressed && down_pressed;
inp_skill0 = 0;
inp_skill1 = 0;
inp_skill2 = 0;
inp_skill3 = 0;
inp_skill4 = 0;
inp_skill5 = 0;
inp_skill6 = 0;
inp_skill7 = 0;
inp_skill8 = 0;
inp_skill9 = 0;

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

//if more are needed, i'll just use other inputs
//or if i can't use the default specials like that cuz they will be overwritten idk

//holy light
lightstun_timer = -1; //it counts down twice, once for the pre timer and again for the stun itself
lightstun_id = noone;
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
burn_outline = [33, 57, 155];

//skill graphic variables
fx_empty = hit_fx_create(sprite_get("empty"), 1); //this just allows me to deny hitsparks from existance

fx_introlight = sprite_get("fx_introlight_back");

fx_lightblow1 = hit_fx_create(sprite_get("fx_lightblow1"), 15);
fx_lightslash = hit_fx_create(sprite_get("fx_lightslash"), 15);
fx_lightblow2 = hit_fx_create(sprite_get("fx_lightblow2"), 25);
fx_lightblow3 = hit_fx_create(sprite_get("fx_lightblow3"), 30);
fx_fireblow1 = hit_fx_create(sprite_get("fx_fireblow1"), 20);
fx_fireblow2 = hit_fx_create(sprite_get("fx_fireblow2"), 30);
fx_fireblow3 = hit_fx_create(sprite_get("fx_fireblow3"), 40);
set_hit_particle_sprite(1, sprite_get("fx_lightparticle"));
set_hit_particle_sprite(2, sprite_get("fx_fireparticle"));

fx_boost = hit_fx_create(sprite_get("fx_speedboost"), 14);

fx_ustrong_lightaxe_sprite = sprite_get("empty");

fx_dstrong_fireblast = hit_fx_create(sprite_get("fx_dstrong_fireblast"), 40);
fx_rockblow = hit_fx_create(sprite_get("fx_rockblow"), 27);

//fx_lightdagger_creation_sprite = sprite_get("fx_lightdagger_creation"); // delete this and keep the throwing itself as a hitfx

fx_photonblast = hit_fx_create(sprite_get("fx_photonblast"), 21);

fx_accelblitz = hit_fx_create(sprite_get("fx_accelblitz"), 18);
fx_accel_indicator = sprite_get("accelblitz_indicator");

fx_earthshatter = hit_fx_create(sprite_get("fx_chasmshatter"), 180);

fx_guardaura = hit_fx_create(sprite_get("fx_guardaura"), 15);

fx_emberfist = hit_fx_create(sprite_get("fx_emberfist"), 30);

//technical variables
did_i_turn = false; //for f-strong
turn_timer_value = 12;
turn_timer = turn_timer_value;
start_turn_count = false;
turn_left = false;
turn_right = false;

sfx_charge = sound_get("sfx_charge");

hitbox_cooldown = 10; //for d-strong

tracking_target = noone; //for u-strong

burningfury_active = false;
mp_burn = 2;
fury_damage = 1.5;
fury_cycle = 0; //the number here doesn't matter

forceleap_up = false;
forceleap_down = false;
leap_angle = 0;
leap_xpos = 0;
leap_ypos = 0;

photon_charge = false;
photon_cycle = 0; //counts the amount of attacks
blast_power = 0; //calculate the damage
charge_time = 30; //window length of the winged up charging

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
burst_count = 0;
delay_burst_count = 0;
spawn_earth_shatter = false;
reached_max_bursts = false;
burst_cool = 0;

sfx_fire = sound_get("sfx_constantfire");

guardaura_active = false;
guard_explosion = false;
guard_slow = 0.8;
guard_time_max = 180 //3 secs (usd to be 8)
guard_time = guard_time_max;

emberfist_up = false;
emberfist_down = false;

hookshot = -1; //placeholder for the hitbox
hookshot_speedboost = false; //used for flinging bar
hookshot_lag_count = 0; //throw window time
hookshot_chargetime = 0; //how strong is bar's charge
hookshot_launch = false; //used for the animation
hookshot_skip = false;

hookshot_lifetime = 55;

hookshot_retract = false; //these were ment for the article to know if bar caught anything
hookshot_retract_timer = 0;

//////////////////////////////////////////////////MISC. SECTION//////////////////////////////////////////////////

is_AI = false;
show_player_info = true;
is_bar = 2429376422;

game_paused = false;

last_attack_hit = 0;

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
if (get_player_color(player) == 7 || get_player_color(player) == 8) is_8bit = true;
else is_8bit = false;

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

if (get_player_color(player) == 11)
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
	"AT_GUARD_AURA",
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
	"AT_EXTRA_3",
	"AT_PHONE",
	"???",
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
if (has_rune("K"))
{
	if (!has_rune("L")) mp_max = runeK_mp_max;
	else
	{
        mp_current = 100;
        gauge_color = gauge_EX_color;
        
        lightdagger_cost = 0;
        buff_total_cost = 0; //"buffs" include burning fury and guard aura
        buff_overtime_cost = 0;
        buff_activation_cost = 0;
        burningfury_attack_cost = 0;
        forceleap_activate_cost = 0;
        forceleap_attack_cost = 0;
        photonblast_cost = 0;
        accelblitz_cost = 0;
        chasmburster_activate_cost = 0;
        chasmburster_attack_cost = 0;
        powersmash_activate_cost = 0;
        powersmash_attack_cost = 0;
        guardaura_counter_cost = 0;
        emberfist_cost = 0;
        lighthookshot_activate_cost = 0;
        lighthookshot_attack_cost = 0;
    }
}
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

aura_frame = 0;
base_aura_speed = 0.25;
aura_speed = base_aura_speed;
aura_alpha = 0.3;
aura_color = $45B6F5;
text_time = 0; //used for the text particles
text_maxTime = 5; //controls the rate of holy text particles spawning
text_alpha = 1; //alpha animation

set_hit_particle_sprite(5, sprite_get("theikos_fx_lightparticle"));
set_hit_particle_sprite(6, sprite_get("theikos_fx_fireparticle"));

//i don't need healing but thanks
heal_count = 0
heal_count_max = 60; //decides how long it takes to heal 1 unit of "damage_heal"
heal_me_now = -1; //the amount of health bar heals after 1 cycle
damage_heal = 0;

//why do i hear boss music?
bossMusic_start = false;
bossMusic_count = 0;
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
normal_prat_land_time = 6; //used to default back after using theikos U-strong

//fire ground logic for Dstrong
groundfire_count = 3;
fire_proj_vspeed = 0; //changes automatically in attack_update.gml
groundfire_offset = 40;
dstrong2_active = false;
dstrong2_active_count = 80; //the same value as AT_DSTRONG_2's 3rd hitbox HG_LIFETIME value
dstrong2_fire_x = x;
dstrong2_fire_y = y;

//strongs effects
fx_armorbreak = hit_fx_create(sprite_get("theikos_fx_fstrong_armorbreak"), 20);
fx_firesmear = hit_fx_create(sprite_get("fx_dstrong_t_firesmear"), 20);
fx_fireground = hit_fx_create(sprite_get("fx_dstrong_t_fireground"), 90);

//theikos Fstrong sound effect array
sfx_armorbreak[0] = sound_get("sfx_armorbreak1");
sfx_armorbreak[1] = sound_get("sfx_armorbreak2");
sfx_armorbreak[2] = sound_get("sfx_armorbreak3");

//////////////////////////////////////////////////WORKSHOP INTERRACTION SECTION//////////////////////////////////////////////////

//stat debug stuff
mp_gain_hit = 0; //updates on hit/getting hit/parry

mp_gain_word = "";
fastfall_word = "";
theikos_word = "";
od_gain_word = "";

//green flower zone
gfzsignspr = sprite_get("GFZ_signpost");

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

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Dategirl compatibility
//faces dictionary:
//0 - normal/happy
//1 - flustered af
//2 - grief
//3 - awkward
//4 - confused
//5 - angry flustered
//Date Girl Support. Generated using McDucky's Date Girl Generator!
Chatting = true;
if (!theikos) DG_portrait = sprite_get("DG_portrait");
else if (theikos) DG_portrait = sprite_get("DG_portrait_theikos");
var DG_page = 0;

//Page 0 - INTRO
DG_page = 0;
DG_chat_type[DG_page] = 1;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 4; //4 - confused
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Uhm, hi..? Do I... Know you?

"

DG_options[DG_page] = 
"You don't, but we can fix that.
You're pretty cute.
Hey~ No need to get all tensed up!"
			
DG_answers[DG_page] = [1,25,32];

//OPTION1
//Page 1
DG_page = 1;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 3; //3 - awkward
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"*Ahem* Well... I'm Bar Reygard, Guardian of the Elements.
Who are you?
"

DG_nextindex[DG_page] = 2;

//Page 2
DG_page = 2;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0; //0 - normal/happy
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = true;

DG_dialogue[DG_page] = 
"

"

DG_dialogue_right[DG_page] = 
"My name is Callie! I don't really know where I'm from but
I do want to get to know YOU more!
"
DG_nextindex[DG_page] = 3;

//SELECT1
//Page 3
DG_page = 3;
DG_chat_type[DG_page] = 1;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 1; //1 - flustered af
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"G-Get to know me? Well.. There isn't a lot to say...
I'm just an angel from another world assigned to stop the
chaos happening here in Aether."

DG_options[DG_page] = 
"An angel? I never would have guessed!
I would have expected something a bit more grand.
What do you guard?"
			
DG_answers[DG_page] = [4,9,18];

//OPTION1-1
//Page 4
DG_page = 4;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0; //0 - normal/happy
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Yeah, Angels in my world are hiding in plain sight.
We use a human disguise to blend in.
Gehenom did it first so we were forced into it to stop them."

DG_nextindex[DG_page] = 5;

//Page 5
DG_page = 5;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0; //0 - normal/happy
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = true;

DG_dialogue[DG_page] = 
"

"

DG_dialogue_right[DG_page] = 
"Gehenom? Sounds pretty spooky~

"
DG_nextindex[DG_page] = 6;

//Page 6
DG_page = 6;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0; //0 - normal/happy
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"You Humans probably know it as Hell or The Underworld.

"

DG_nextindex[DG_page] = 7;

//Page 7
DG_page = 7;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 3; //3 - awkward
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"W-well I should probably go, I still have work to do in this
world, and it's not gonna finish itself.
"

DG_nextindex[DG_page] = 8;

//Page 8
DG_page = 8;
DG_chat_type[DG_page] = 3;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0; //0 - normal/happy
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"It was nice talking to someone for once though!
Things started to get a bit lonely here...
"

//OPTION1-2
//Page 9
DG_page = 9;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 3; //3 - awkward
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"W-well yeah that's understandable.

"

DG_nextindex[DG_page] = 10;

//Page 10
DG_page = 10;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 3; //3 - awkward
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"You probably expected something less... Normal looking.

"

DG_nextindex[DG_page] = 11;

//Page 11
DG_page = 11;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 3; //3 - awkward
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"My Theïkós would fit that description a bit more.

"

DG_nextindex[DG_page] = 12;

//Page 12
DG_page = 12;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 3; //3 - awkward
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = true;

DG_dialogue[DG_page] = 
"

"

DG_dialogue_right[DG_page] = 
"...Theïkós?

"
DG_nextindex[DG_page] = 13;

//Page 13
DG_page = 13;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0; //0 - normal/happy
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Y-yeah! That's my true form, the more angelic and grand
looking one.
"

DG_nextindex[DG_page] = 14;

//Page 14
DG_page = 14;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0; //0 - normal/happy
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Using God's blessing I can transform to an unrestraint form,
summoning an a holy armor on my body and becoming
virtually indestructable."

DG_nextindex[DG_page] = 15;

//Page 15
DG_page = 15;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0; //0 - normal/happy
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"The only thing really holding this pure power back is...
Well my willpower.
"

DG_nextindex[DG_page] = 16;

//Page 16
DG_page = 16;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0; //0 - normal/happy
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Without it, that form will crumble and the power - wasted.

"

DG_nextindex[DG_page] = 17;

//Page 17
DG_page = 17;
DG_chat_type[DG_page] = 3;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 3; //3 - awkward
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"W-well I should get going, I have a job to do.
But I do appritiate the talk!
"

//OPTION1-3
//Page 18
DG_page = 18;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0; //0 - normal/happy
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"This gauntlet, actually.

"

DG_nextindex[DG_page] = 19;

//Page 19
DG_page = 19;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0; //0 - normal/happy
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"This gauntlet is a very dangerous tool if it falls to the
wrong hands.
"

DG_nextindex[DG_page] = 20;

//Page 20
DG_page = 20;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0; //0 - normal/happy
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"The gauntlet holds the leftover energies God used to create
the universe. My gauntlet specifically has the energy of
the creation of the physical world, the elements."

DG_nextindex[DG_page] = 21;

//Page 21
DG_page = 21;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 2; //2 - grief
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"But... It also holds a more... personal place in my heart...

"

DG_nextindex[DG_page] = 22;

//Page 22
DG_page = 22;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 3; //3 - awkward
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"I-I feel like I rambled for too long... I should probably
get going.
"

DG_nextindex[DG_page] = 23;

//Page 23
DG_page = 23;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 3; //3 - awkward
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Thanks for the chat, though..!

"

DG_nextindex[DG_page] = 24;

//Page 24
DG_page = 24;
DG_chat_type[DG_page] = 3;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 2; //2 - grief
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"...Dad...

"

//OPTION2
//Page 25
DG_page = 25;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 1; //1 - flustered af
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"W-wha-

"

DG_nextindex[DG_page] = 26;

//Page 26
DG_page = 26;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 5; //5 - angry flustered
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"D-don't just say weird things l-like that...!

"

DG_nextindex[DG_page] = 27;

//Page 27
DG_page = 27;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 5; //5 - angry flustered
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = true;

DG_dialogue[DG_page] = 
"

"

DG_dialogue_right[DG_page] = 
"I'm just being honest though! You have a cute face~!

"
DG_nextindex[DG_page] = 28;

//Page 28
DG_page = 28;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 5; //5 - angry flustered
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"... I-I don't have time for this-

"

DG_nextindex[DG_page] = 29;

//Page 29
DG_page = 29;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 5; //5 - angry flustered
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Besides...! I-... I have someone else on my mind already.

"

DG_nextindex[DG_page] = 30;

//Page 30
DG_page = 30;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 5; //5 - angry flustered
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = true;

DG_dialogue[DG_page] = 
"

"

DG_dialogue_right[DG_page] = 
"Hm... What a bummer.

"
DG_nextindex[DG_page] = 31;

//Page 31
DG_page = 31;
DG_chat_type[DG_page] = 3;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 3; //3 - awkward
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"S-sorry...?

"

//OPTION3
//Page 32
DG_page = 32;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 3; //3 - awkward
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Yeah I... I guess so. It's just... It's been odd here.

"

DG_nextindex[DG_page] = 33;

//Page 33
DG_page = 33;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 4; //4 - confused
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"This world is filled to the brim with people of all
shapes and sizes.
"

DG_nextindex[DG_page] = 34;

//Page 34
DG_page = 34;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 4; //4 - confused
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"And here I thought that the weirdest thing ever was a
demon skeleton, but apperently that's normal here too.
"

DG_nextindex[DG_page] = 35;

//SELECT3
//Page 35
DG_page = 35;
DG_chat_type[DG_page] = 1;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 4; //4 - confused
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"On top of that, most people here are looking for a fight,
I just want to finish my job and go back home.
"

DG_options[DG_page] = 
"Don't worry about it much, not everything is about work.
I was accepted pretty warmly here though.
"
			
DG_answers[DG_page] = [36,41];

//OPTION3-1
//Page 36
DG_page = 36;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 3; //3 - awkward
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"I- Guess so... Maybe I can just stop to smell the flowers
a bit...
"

DG_nextindex[DG_page] = 37;

//Page 37
DG_page = 37;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0; //0 - normal/happy
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"But for now time is against me, creatures of abyss are
appearing all over this world, I should at least wrap that
up."

DG_nextindex[DG_page] = 38;

//Page 38
DG_page = 38;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0; //0 - normal/happy
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Thanks for talking with me a bit... Uh...

"

DG_nextindex[DG_page] = 39;

//Page 39
DG_page = 39;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0; //0 - normal/happy
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = true;

DG_dialogue[DG_page] = 
"

"

DG_dialogue_right[DG_page] = 
"My name is Callie.

"
DG_nextindex[DG_page] = 40;

//Page 40
DG_page = 40;
DG_chat_type[DG_page] = 3;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 3; //3 - awkward
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Haha... I was rambling too much to ask for your name...
I-I see.. thanks, Callie.
"

//OPTION3-2
//Page 41
DG_page = 41;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 1; //1 - flustered af
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Really? I guess I was too tunnel-visioned for finishing my
job here to notice...
"

DG_nextindex[DG_page] = 42;

//Page 42
DG_page = 42;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 3; //3 - awkward
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Maybe I should try to get around here first... It might make
it easier for me to feel more comfterable here.
"

DG_nextindex[DG_page] = 43;

//Page 43
DG_page = 43;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 3; //3 - awkward
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"Can't help but feel like I'm meddling with other people's
affairs.
"

DG_nextindex[DG_page] = 44;

//Page 44
DG_page = 44;
DG_chat_type[DG_page] = 2;

DG_adopts_color_left[DG_page] = true;
DG_adopts_color_right[DG_page] = true;

DG_left_strip[DG_page] = 0; //0 - normal/happy
DG_right_strip[DG_page] = 0;

DG_custom_left_portrait[DG_page] = true;
DG_custom_right_portrait[DG_page] = false;

DG_right_speaker[DG_page] = false;

DG_dialogue[DG_page] = 
"I should go, I feel like I need to understand this world and
it's people more, so I can do a decent job at preventing a
disaster waiting to happen."

DG_nextindex[DG_page] = 38;

//////////////////////////////////////////////////////////////////////////////////////////////////

//munophone
spr_exp0 = sprite_get("_exp0"); //nair
spr_exp1 = sprite_get("_exp1"); //burning fury buffing
spr_exp2 = sprite_get("_exp2"); //angleable moves
spr_exp3 = sprite_get("_exp3"); //accel blitz
spr_exp4 = sprite_get("_exp4"); //chasm burster
spr_exp5 = sprite_get("_exp5"); //alternate option moves

spr_drip = sprite_get("_pho_drip");

user_event(14);