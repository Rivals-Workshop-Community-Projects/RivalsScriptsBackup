//====================================================== STATS

char_height = 76;
idle_anim_speed = 0.15;
walk_anim_speed = 0.6;
dash_anim_speed = 0.4;
crouch_anim_speed = 0.3;
//pratfall_anim_speed = .25;

walk_speed = has_rune("B")? 6 : 4.5;
walk_accel = has_rune("B")? 1 : 0.5;
walk_turn_time = 6;
initial_dash_time = 6;
initial_dash_speed = has_rune("B")? 14 : 8;
dash_speed = has_rune("B")? 10 : 7.5;
dash_turn_time = 15;
dash_turn_accel = 0.7;
dash_stop_time = 8;
dash_stop_percent = 0.35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 0.5;
moonwalk_accel = 1.4;

jump_start_time = 8;
jump_speed = 13;
short_hop_speed = 7.5;
djump_speed = 12;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 7; //the maximum hsp you can have when jumping from the ground
air_max_speed = 7; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 4; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = 0.3;
prat_fall_accel = 0.85; //multiplier of air_accel while in pratfall
air_friction = 0.07;
max_djumps = has_rune("I")? 3 : 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
wall_frames = 5;
walljump_hsp = 5;
walljump_vsp = 10;
walljump_time = 32;
can_wall_cling = true;
max_fall = 11;
fast_fall = 18;
gravity_speed = 0.65;
hitstun_grav = 0.5;
knockback_adj = 1.1;

land_time = 7;
prat_land_time = 10;
wave_land_time = 15;
wave_land_adj = 1.9; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = 1; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 3;
dodge_active_frames = 8;
dodge_recovery_frames = 6;

//tech animation frames
tech_active_frames = 18;
tech_recovery_frames = 4;

//tech roll animation frames
techroll_startup_frames = 3;
techroll_active_frames = 14;
techroll_recovery_frames = 5;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 4;
air_dodge_active_frames = 7;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 3;
roll_forward_active_frames = 14;
roll_forward_recovery_frames = 5;

roll_back_startup_frames = 3;
roll_back_active_frames = 14;
roll_back_recovery_frames = 5;

roll_forward_max = 7;
roll_backward_max = 7;

land_sound = sound_get("step");
landing_lag_sound = sound_get("step");
waveland_sound = sound_get("deform");
jump_sound = sound_get("pt_jump");
djump_sound = sound_get("pt_jump");
//air_dodge_sound = asset_get("sfx_quick_dodge");

hurtbox_spr = sprite_get("dashbox");
hurtbox_spr = sprite_get("dashbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

bubble_x = -2;
bubble_y = 0;

//====================================================== VARIABLES

//combo
combo = 0;
combo_timer = 0;
combo_words_timer = 0;
combo_very = false;
combo_words_id = 0;
combo_got_hit = false;

//wait
AT_WAIT = 45;

//smooth transition char height
charHeightDestination = 0;
charHeightOffset = 0;

//dtilt
AT_DTILT_MACH = 46;

//intro, taunt
entrance_done = false;
AT_ENTRANCE = 42;

//nspecial, supertaunt
has_supertaunt = false;
madeTauntSound = false;
pretauntvsp = 0;
pretaunthsp = 0;
randomTauntSound = 0;
taunt_index = 0;
tauntGotSpeedBack = true;

AT_SUPERTAUNT = 43;

//fspecial & mach run
dash_timer = 0;
taunt_dash_interrupt = false;
mach_sound_active = false;
mach_sound = noone;
grab_sound_active = false;
grab_sound = noone;
AT_GRABDASH = 44;
grabp = noone;
old_spr_dir = false;

//uspecial
uspec_charge = 0;
uspec_sound = noone;
walkAnim = false;
uspecialSoundActive = false;

//dspecial air
cancelTimer = 0;
dspec_sound = noone;
dspecialSoundActive = false;

//dspecial ground (article 1 - Peppino Clone)
my_clone = noone;
killarticles = false;

//uair
pre_uair_hsp = 0;
uair_pratfall = false;

//fstrong
fstrong_made_noise = false;

//fstrong leftover from phase 3
//fstrongLoopTimer = 0;

//afterimage
afterimage_timer = 0;
afterimage_array = 0;
afterimage_colour = 0;

//misc
attacking = false;
peped = false;
grabbed_by_player = 0;
walljump_jump_time = 0;
parried_spr = false;

//more afterimage? idk
afterimage_lastwasgreen = false;
afterimage_counter = 0;
afterimage_mode = 0;
afterimage_array = 0;

//====================================================== COMPATIBILITIES

//PTV (in progress)
ptv_bg_color = $E98A05;
ptv_stock_icon = sprite_get("_ptv_stock");
sprite_change_offset("_ptv_stock", 0, -2);
ptv_stock_y_offset = 4;

ptv_speed = 4;
ptv_idle_time = 4 * 4 * 20; //ammount of frames * ptv_speed * 25, that way it transitions exactly as the 25th loop of idle ends
ptv_idle = sprite_get("_ptv_idle");
ptv_panic_idle = sprite_get("_ptv_panic_idle");
ptv_panic_flare[0] = sprite_get("_ptv_panic_flare1");
ptv_flare[0] = sprite_get("_ptv_flare1");
ptv_flare[1] = sprite_get("_ptv_flare2");
ptv_flare[2] = sprite_get("_ptv_flare3");
ptv_custom[0] = sprite_get("_ptv_nice1");
ptv_death[0] = sprite_get("_ptv_death1");
ptv_death[1] = sprite_get("_ptv_death2");
ptv_death[2] = sprite_get("_ptv_death3");
ptv_custom_specific[0] = sprite_get("_ptv_staunt");
ptv_kill[0] = sprite_get("_ptv_kill");

//MunoPhone Touch
muno_event_type = 0;
user_event(14);

//miiverse
miiverse_post = sprite_get("_miiverse");

//kirby
kirbyability = 16;
swallowed = 0;

//Po & Gumbo
pot_compat_variable = sprite_get("_po_gumpo_dish");
pot_compat_text = "Mistake";

//Wii
wiimote_compat_sprite = sprite_get("_fakemote"); 

//Talking Flower
talkingflower_special_taunt_line = 37;

//Mt. Dedede Stadium
arena_title = "The Look-a-like-a";

//Boxing Ring
boxing_title = "The Look-a-like-a";

//Soulbound Conflict (undertale)
battle_text = "* Fake Peppino melts into the scene!";

//pokemon stadium
pkmn_stadium_front_img = sprite_get("_fakemon_wild");
pkmn_stadium_back_img = sprite_get(random_func(0, 2, true) == 0? "_fakemon" : "_fakemon2");
pkmn_stadium_name_override = "Msngdough";

//scoop
scoop_personalized_flavour_name = "Frozem Melted Cheese";
scoop_personalized_flavour_sprite = sprite_get("_scoop");

//toad
voicepitch = 1;
