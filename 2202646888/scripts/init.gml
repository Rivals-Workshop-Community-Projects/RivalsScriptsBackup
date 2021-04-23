//awesome
bababooey = false;
bababooey_two = 0;

//taunt thing
used_hitbox = false;

//fspecial stuff
angle_min = 25;
angle_max = 65;
angle_cur = angle_min;
angle_type = 1; //0 is down, 1 is up
did_bounce = false;
speed_mult = 10;
angle_change = 1;

//rainbow alt
hue = 0;
timermod = 35;

//misc
scisx = 0;
scisy = 0;

//runes
owner_player = 0;
eggdog_count = 1;
max_eggs = 8;

//supports

Hikaru_Title = "Interrupting Tortoise";
arena_title = "El Huevo";
tcoart = sprite_get("tcodog");
otto_bobblehead_sprite = sprite_get("bobblehead");

sprite_change_offset("eggdog_gfz", 18, 41);
gfzsignspr = sprite_get("eggdog_gfz");

feri_costume = sprite_get("eggdogferi");
resort_portrait = sprite_get("eggdoglastresourt")
guiltySprite = sprite_get("eggtrialground");

trummelcodecneeded = false;
trummelcodec_id = noone;

//Miiverse

miiverse_post = sprite_get("miiverse");
sprite_change_offset("miiverse", 60, 30);

fire_taunt = sprite_get("eggdogferi");
fire_taunt_duration = 100;
fire_taunt_frames = 1;
fire_taunt_sound = sound_get("ping");
fire_taunt_sound_frame = 1;

walle_taunt_sound = sound_get("squeaky")
walle_taunt_type = 2

//undertale 2
battle_text = "* EGGDOG ATK 10 DEF 5";
battle_text2 = "* El Huevo"; 
battle_text3 = "* So True!"; 

//pokemon stadium stuff (by tdude not snolid. Lol!)
pkmn_stadium_front_img = sprite_get("pkmn_front");
pkmn_stadium_back_img = sprite_get("pkmn_back");

///agent ronals codec
ncode1 = "so true"
ncode2 = "Watch out for scissors and explosives."
ncode3 = "Handle with care."

//sbeve
steve_death_message = "Steve was so false";

kirbyability = 16;
swallowed = 0
enemykirby = noone;

fs_char_chosen_final_smash = "custom";
fs_char_portrait_y = 115;

var_eggfsX = 0;
var_eggfsY = 0;

hurtbox_spr = sprite_get("egghurt");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 46;
idle_anim_speed = .15;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .28;
pratfall_anim_speed = .25;

walk_speed = 3;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 7;
dash_speed = 6.5;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 6;
djump_speed = 10;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .75; //multiplier of air_accel while in pratfall
air_friction = .03;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 8;
walljump_time = 32;
max_fall = 9; //maximum fall speed without fastfalling
fast_fall = 12; //fast fall speed
gravity_speed = .45;
hitstun_grav = .5;
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 8;
wave_land_time = 8;
wave_land_adj = 1.4; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 1;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

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
air_dodge_active_frames = 5;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 7;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 7;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;
