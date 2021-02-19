hurtbox_spr = sprite_get("hurtbox");
crouchbox_spr = asset_get("ex_guy_crouch_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 42;
min_char_height = 40;
max_char_height = 70;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .4;
pratfall_anim_speed = .25;

walk_speed = 3.5;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 14;
initial_dash_speed = 5.5;
dash_speed = 6.0;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = 0.8;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11.00;
short_hop_speed = 6.5;
djump_speed = 10.00;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 31; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 10;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 16; //fast fall speed
gravity_speed = .60;
hitstun_grav = .50;
knockback_adj = 1.2; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier
can_wall_cling = true;

land_time = 4; //normal landing frames
prat_land_time = 10;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
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
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 0.0;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 2;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = noone;
set_victory_theme(sound_get("victory"));

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

//tracks what Badeline is doing, as she can't be two places at once
badeline = noone;
badeline_shots = 3;
badeline_shot_timer = 0;
badeline_shot_charge_time = 120;

//dash direction storage
dash_x = 0;
dash_y = 0;
dash_dir = 0;
dash_count = 1;
dash_timer = 0;
dash_delay = 0;
dash_jump = false;
dash_jump_delay = 0;
jump_held = false;
after_images = array_create(6, 0);
has_dashed = false;
has_died = false;
refresh_hair = 0;
grounded_dash = false;
dash_cancel = false;
prev_x = x;
prev_y = y;

//objects
winged_strawberry = noone;
winged_strawberry2 = noone;
winged_strawberry3 = noone;
dash_block = noone;

//golden feather
last_pos = array_create(5)
for (i = 0; i < 5; i += 1) {
    last_pos[i] = array_create(2);
}

//madeline hair
hair_joints = array_create(5);
hair_joints[0] = array_create(5);
hair_joints[0, 0] = -8;
hair_joints[0, 1] = -48;
hair_joints[0, 4] = 13;
hair_joints[1] = array_create(5);
hair_joints[1, 2] = -2;
hair_joints[1, 3] = 4;
hair_joints[1, 4] = 16;
hair_joints[2] = array_create(5);
hair_joints[2, 2] = -5;
hair_joints[2, 3] = 6;
hair_joints[2, 4] = 13;
hair_joints[3] = array_create(5);
hair_joints[3, 2] = -6;
hair_joints[3, 3] = 8;
hair_joints[3, 4] = 11;
hair_joints[4] = array_create(5);
hair_joints[4, 2] = -4;
hair_joints[4, 3] = 10;
hair_joints[4, 4] = 9;
var i;
for (i = 1; i < 5; i++) {
    hair_joints[i, 0] = (hair_joints[0, 0] + hair_joints[0, 4]) + hair_joints[i, 2];
    hair_joints[i, 1] = (hair_joints[0, 1] + hair_joints[0, 4]) + hair_joints[i, 3];
}
hair_offset = array_create(2);
hair_offset[0] = 0;
hair_offest[1] = 0;
hair_sprite = sprite_get("hair_circles");
hair_nodash_sprite = sprite_get("hair_circles_nodash");
hair_refresh_sprite = sprite_get("hair_circles_refresh");
hair_charged_sprite = sprite_get("hair_circles_charged");
hair_gone_sprite = sprite_get("hair_circles_gone");
hair_feather_sprite = sprite_get("feather_circles");

hair_dash_sprites = array_create(4);
hair_dash_sprites[0] = sprite_get("hair_circles_dash_1");
hair_dash_sprites[1] = sprite_get("hair_circles_dash_2");
hair_dash_sprites[2] = sprite_get("hair_circles_dash_3");
hair_dash_sprites[3] = sprite_get("hair_circles_dash_4");
hair_active = hair_sprite;
hair_timer = 0;

fspecial_badeline = sprite_get("fspecial_badeline");
dspecial_badeline = sprite_get("dspecial_badeline");

pcolor = get_player_color(player);
if (pcolor == 1 || pcolor == 5) {
    fspecial_badeline = sprite_get("fspecial_madeline");
    dspecial_badeline = sprite_get("dspecial_madeline");
} else if (pcolor == 2 || pcolor == 3) {
    fspecial_badeline = sprite_get("fspecial_theo");
    dspecial_badeline = sprite_get("dspecial_theo");
}

if (pcolor == 1 || pcolor == 3) {
    hair_sprite = sprite_get("hair_circles_badeline");
    hair_charged_sprite = sprite_get("hair_circles_charged_badeline");
} else if (pcolor == 4 || pcolor == 5) {
    hair_sprite = sprite_get("hair_circles_theo");
    hair_charged_sprite = sprite_get("hair_circles_charged_theo");
}

//dream mist
dream_mist_outline = sprite_get("dream_mist_layer1");
dream_mist_fill = sprite_get("dream_mist_layer2");
dream_mist_stars1 = sprite_get("dream_mist_bg");
dream_mist_stars2 = sprite_get("dream_mist_fg");
dream_mist = noone;
mist_timer = 0;
in_mist = false;
out_of_mist = false;
mist_dash = false;
draw_mist_here = true;
mist_hit_wall = false;
time_in_mist = 0;

//other
heart_color = 0;
dashbox = noone;
strong_charge = 0;
fspecial_shots = 0;
dash_effect = noone;
dash_count_at_dash = dash_count;
strawberry_effect = noone;
can_nspecial = true;
can_dspecial = true;
death_effect = noone;

temp = 0;

// TRUMMEL & ALTO CODEC
trummelcodecneeded = false;
trummelcodec_id = noone;

// RUNE BUDDY

//Rune Support

runesUpdated = get_match_setting(SET_RUNES);

var rune_letters = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O"];
 
for (var rune_num = 0; rune_num < array_length(rune_letters); rune_num++){
	variable_instance_set(self, "rune" + rune_letters[rune_num], has_rune(rune_letters[rune_num]));
}

//abyssMods[1 to 15] = [type, description];
//types are: -1 - disabled
// 0 - object mod: Modifies a static object left behind after an attack.
// 1 - ranged mod: Modifies a projectile attack.
// 2 - hit mod: Modifies a direct physical interaction with an opponent.
// 3 - ability boost: Powers up a character attribute or action.
abyssMods = array_create(16,[-1,"Not Implemented."]);

// Cost 1 A - F
abyssMods[@ runes.A] = [0, "Persistent Mist: Mist does not disappear after mist dash"];
abyssMods[@ runes.B] = [0, "Faithful Mist Dashes: Instant Death when hitting a wall in Dream Mist"];
//abyssMods[@ runes.C] = [0, ""];
//abyssMods[@ runes.D] = [0, ""];
//abyssMods[@ runes.E] = [0, ""];
//abyssMods[@ runes.F] = [0, ""];
// Cost 2 G - K
abyssMods[@ runes.G] = [0, "Triple Strawberry: You can have up to 3 winged strawberries at once"];
abyssMods[@ runes.H] = [3, "Faithful Super Dashes: Super Dashes and Hyper Dashes are FAST"];
abyssMods[@ runes.I] = [1, "Super FSPECIAL: Shoots more shots, and shoots them fast"];
abyssMods[@ runes.J] = [3, "Auto-Charged Dash: You gain a charged dash when grounded"];
abyssMods[@ runes.K] = [0, "Kevin DSPECIAL: Dash into its sides to activate it"];
// Cost 3 L - O
abyssMods[@ runes.L] = [2, "[NOT IMPLEMENTED] Unpolite Dashes: They stun even when the opponent isn't in hitstun"];
//abyssMods[@ runes.M] = [0, ""];
//abyssMods[@ runes.N] = [0, ""];
//abyssMods[@ runes.O] = [0, ""];
