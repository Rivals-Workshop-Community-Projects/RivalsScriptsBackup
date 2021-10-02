hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

//VFX
vfx_dair = hit_fx_create(sprite_get("vfx_dair"), 18);
luigi_fire = hit_fx_create(sprite_get("luigi_fire_hit_direct"),30);
luigi_fire_small = hit_fx_create(sprite_get("luigi_fire_hit_omni"),30);
vfx_boulder_trail = hit_fx_create(sprite_get("bouldertrail"), 20); if get_player_color(player) != 0 vfx_boulder_trail = hit_fx_create(sprite_get("bouldertrail_alt"), 20);
vfx_ancientpower = hit_fx_create(sprite_get("ancientpower_pop"), 20);
luigi_fire_persist = hit_fx_create(sprite_get("fire_part_spr_luigi"), 40);
vfx_infamous_spray_burst = hit_fx_create(sprite_get("infamous_spray_burst"), 20);
vfx_bird = hit_fx_create(sprite_get("baby_bird_luigi"), 600);

//Egg
egg_stored = false;
egg_store_bounces = 0;
egg_store_fireball_onfire = false;
egg_store_fireball_onfire_id = noone;
egg_store_fireball_weakfire = false;
egg_store_fireball_firetimer = 0;
in_range_of_egg_throw = false;
egg_catch_cooldown = 0;
fireballtogglecooldown = 0;
fireballtogglecooldown_noanimation = 0;
fireballtogglecooldown_full = 25;

//Egg Hit
has_hit_luigi_egg = false;

//misc.
has_daired = false;
luigi_fireball = noone;
luigi_egg = false;
utilt_hat_has_hit = false;
taunt_hold_timer = 0;
has_naired = false;
misfire_charged = false;
misfire_cooldown = 50;
dattack_timer = 0;
untitled_goose_egg_type = 1;
infamoustaunt_spray_fade = 0;
infamoustaunt_spray_text_x = 0;
infamoustaunt_spray_text_y = 0;
infamoustaunt_spray_text_img = 0;
mario_taunt_big = false;
rune_N_abyss_spr_index = asset_get("empty_sprite");
rune_N_abyss_img_index = 0;
rune_N_abyss_opacity = 0;
rune_N_abyss_strongtype = AT_FSTRONG;
bird_luigi_2_taunt = false;
dspecial_grab_id = noone;
dspecial_thrown_grab_id = false;
dspecial_start_free = false;
birdluigi_grab_immune = false;
uair_boost = false;
dash_sfx_played = false;
turned_into_a_goomba = false;
nes_taunt_x = 0;
nes_taunt_y = 0;
nes_taunt_vsp = 0;
nes_taunt_win_timer = 0;

//Intro Vacuum
vacuum_distance = room_width * 3;
vacuum_distance -= 10;
vacuum_distance += player * 10;
vacuum_move_type = 1;

//Intro Sound
carhorn = false;
carhorn_prev = false;
carhorn_timer = 0;

//Fspecial
fspecial_charge = 0;
fspecial_charge_image = 0;
fspecial_stored = false;
fspecial_has_restored_djump = false;
fspecial_speed_boost = 0.25;
fspecial_slow_motion = false;
fspecial_bounce_vsp = 0;

//Compatibilities
trummelcodecneeded = false;
kirbyability = 16;
enemykirby = noone;
swallowed = 0;
Hikaru_Title = "Green Bird Guy";
miiverse_post = sprite_get("miiverse1");
otto_bobblehead_sprite = sprite_get("otto_bobblehead");
battle_text = "*Bird Guy, with a hat.";
arena_title = "Bird Guy with a hat";
fire_taunt = sprite_get("fire_taunt");
fire_taunt_duration = 60;
fire_taunt_frames = 15;
plushForAmber = sprite_get("amber_plush");
steve_death_message = "Steve was fireballed by Bird Luigi using [Egg]";
steve_death_message_orig = steve_death_message;
steve_death_message_egg = "Steve was egged by Bird Luigi";
steve_death_message_fire = "Steve died to a fair and balanced Damage-Over-Time gimmick."
steve_death_message_otto = "death.attack.sting.item"
feri_costume = sprite_get("feri_costume");
assistAttack = AT_NSPECIAL; //The attack to use as the assist
assistOffsetX = -46; //The horizontal distance they spawn from the player
assistOffsetY = 0; //The vertical distance they spawn from the player
assistGroundOnly = false; //Whether or not they are forced to the ground
assistFloat = true; //Whether or not they stay in place vertically
tcoart = sprite_get("tcosketch");
guiltySprite = sprite_get("trialgrounds");
resort_portrait = sprite_get("lastresort")
toonlink_photo = sprite_get("TL");
toonlink_photo2 = 7;
pkmn_stadium_front_img = sprite_get("pkmnstadium_front");
pkmn_stadium_back_img = sprite_get("pkmnstadium_back");
gfzsignspr = sprite_get("greenflower_sign");
sorry_art = sprite_get("sorryart_birdluigi");
daroach_bossstage_taunted = false;
daroach_bossstage_taunted_times = 0;
daroach_bossstage_release_the_bird = false;
/* nocode1 = "When did Bird Guy get a hat?";
nocode2 = "...Also, make sure to watch";
nocode3 = "out for his fire attacks."; */
dracula_bossstage_taunted = false;
dracula_bossstage_taunted_times = 0;
dracula_bossstage_release_the_bird = false;
rof_super_active = 0;
superMove = 14;
fs_char_attack_index = 50;
fs_char_chosen_final_smash = "custom";
fs_char_chosen_trigger = "ori";
fs_cutscene_length = 60;
fs_cutscene_time = 0;
fs_target_id = noone;
nname = "Bird Guy?"
ncode1 = "Bird guy lookin kinda different, has he always had that hat?"
ncode2 = "and what about the fire?"
ncode3 = "Maybe its the way hes dressed."

//dspecial fire effect variables
birdluigifire = false;
birdluigifire_timer = 0;
birdluigifire_damage = 0;
birdluigifire_id = noone;

//Glide + Flutter variables
flutterjump_max = 100;
flutterjump = flutterjump_max;
flutterjump_delay = 20;
flutterjumping = false;
flutterjump_alert = false;
flutterjumping_already = false;
flutterjump_draw = flutterjump;
flutter_restore_speed = 1;
flutterjump_turn_cooldown = 0;
flutterjump_time = 100;

//On death hat toss variables
deadtimer = 0;
deadhatpos = 0;
deadhatmove = 0;
hatdeathdrawheight = 0;
hatdeathdrawvsp = 0;
hatdeathdrawangle = 0;

//Abyss Rune L command inputs
abyss_commandinput_a = 0;
abyss_commandinput_b = 0;
abyss_commandinput_c = 0;
abyss_commandinput_d = 0;
abyss_commandinput_hold_timer_a = 0;
abyss_commandinput_hold_timer_b = 0;
abyss_commandinput_hold_timer_c = 0;
abyss_commandinput_hold_timer_d = 0;

//alt costumes (remember to set in init_shader if you make a change here)
alt_seasonal = 6;
alt_custom = 7;
alt_mario = 8;
alt_wario = 9;
alt_waluigi = 10;
alt_gooigi = 11;
alt_builder = 12;
alt_abyss = 13;
alt_gb = 14;
alt_gold = 18;
alt_infamous = 16;
alt_goose = 17;
alt_nes = 15;
alt_archen = 19;
alt_pride1 = 20;
alt_loudbird = 21;
alt_negative = 22;
alt_garcello = 23

//custom alt
playtesting_mode = false;
colorselectmenu = false;
customcoloridlepreviewrotate = 0;
customcoloridlepreviewrotatetype = 0;
customcoloridlepreviewrotatevisible = 0;
custom_color_slot_selected = 0;
colorselectmenu_right_buffer_check = 10;
colorselectmenu_left_buffer_check = 10;
colorselectmenu_up_buffer_check = 10;
colorselectmenu_down_buffer_check = 10;
colorselectmenu_current_hovering_option = 1;
colorselectmenu_code_entered = false;
colorselectmenu_code = -1;
colorselectmenu_code_used = 0;
custom_color_menu_preview_glow_opacity = 0;
custom_color_menu_transitiontimer = -2;
colormenutimer = 0;

char_height = 46;
idle_anim_speed = .15;
crouch_anim_speed = .1;
walk_anim_speed = .15;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.2;
walk_accel = 0.5;
walk_turn_time = 6;
initial_dash_time = 12;
initial_dash_speed = 7.5;
dash_speed = 7;
dash_turn_time = 10;
dash_turn_accel = 1.55;
dash_stop_time = 5.65;
dash_stop_percent = .7; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .25;
moonwalk_accel = 1.4;

jump_start_time = 4;
jump_speed = 11;
short_hop_speed = 7;
djump_speed = 7.5;
leave_ground_max = 9; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 8; //the maximum hsp you can have when jumping from the ground
air_max_speed = 7; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 4; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = 0.4;
prat_fall_accel = 2; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 8;
walljump_time = 32;
max_fall = 8; //maximum fall speed without fastfalling
fast_fall = 11; //fast fall speed
gravity_speed = .6;
hitstun_grav = .5;
knockback_adj = 1.2; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 6; //normal landing frames
prat_land_time = 12;
wave_land_time = 5;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 4;
crouch_active_frames = 1;
crouch_recovery_frames = 2;
crouch_jump_speed = 13;
normal_jump_speed = jump_speed;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 4;
dodge_recovery_frames = 5;

//tech animation frames
tech_active_frames = 4;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 3;
techroll_recovery_frames = 1;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 6;
air_dodge_recovery_frames = 4;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 2;
roll_forward_max = 9.75; //roll speed
roll_backward_max = 9.75;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_wra");
jump_sound = asset_get("sfx_gus_jump");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

user_event(14);
rainbow_color = c_white;
c_reallydarkgray = make_colour_rgb(32, 32, 32);