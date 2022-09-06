hurtbox_spr = sprite_get("hurtbox");
air_hurtbox_spr = sprite_get("hurtbox_air");
crouchbox_spr = sprite_get("crouchbox");
hitstun_hurtbox_spr = -1;

//other stuff
set_victory_theme(sound_get("torga_victory"));

char_height = 44;
idle_anim_speed = .18;
crouch_anim_speed = .1;
walk_anim_speed = .18;
dash_anim_speed = .25;
pratfall_anim_speed = 0.2;

saw_blade = 0

hue = 0;
outlineR = 0;
outlineG = 0;
outlineB = 0;
outlineDirection = 0;
sideBHold = 0;
//99, 155, 255

kirbyability = 16;
ai = 0;

//SS
if(get_synced_var(player) == 2 || get_synced_var(player) == 3){
	secret_skins = true
}else{
	secret_skins = false
}
//Suppress
if(get_synced_var(player) == 1 || get_synced_var(player) == 3){
	tap_jump_suppress = true
}else{
	tap_jump_suppress = false
}

//Cheatcode
if(has_rune("B") && has_rune("E") && has_rune("N") 
&& !has_rune("A") && !has_rune("C") && !has_rune("D") && !has_rune("F") && !has_rune("G") && !has_rune("H")
&& !has_rune("I") && !has_rune("J") && !has_rune("K") && !has_rune("L") && !has_rune("M") && !has_rune("O")){
	all_runes = true
}else{
	all_runes = false
}

if(has_rune("L") || all_runes){
	L_modifier = 2
}else{
	L_modifier = 1
}

walk_speed = 3.25 * L_modifier;
walk_accel = 0.2 * L_modifier;
walk_turn_time = 8 / L_modifier;
initial_dash_time = 15;
initial_dash_speed = 6.25 * L_modifier;
dash_speed = 5.75 * L_modifier;
dash_turn_time = 6 / L_modifier;
dash_turn_accel = 1 * L_modifier;
dash_stop_time = 4 / L_modifier;
dash_stop_percent = .5 * L_modifier; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .22 / L_modifier;
moonwalk_accel = 1.4 * L_modifier;

jump_start_time = 5;
jump_speed = 9.5 * L_modifier;
short_hop_speed = 5.8;
djump_speed = -1;
leave_ground_max = 6 * L_modifier; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6 * L_modifier; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5.5 * L_modifier; // (3) the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3 * L_modifier; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .32 * L_modifier;
prat_fall_accel = .75 * L_modifier; //multiplier of air_accel while in pratfall
air_friction = .06;
max_djumps = 1;
double_jump_time = 36; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6 * L_modifier;
walljump_vsp = 9 * L_modifier;
walljump_time = 16 * L_modifier;
max_fall = 11 * L_modifier; //maximum fall speed without fastfalling
fast_fall = 15 * L_modifier; // (11) fast fall speed
gravity_speed = .45; // (.45)
hitstun_grav = .5;
knockback_adj = 0.95; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4 / L_modifier; //normal landing frames
prat_land_time = 8;
wave_land_time = 12 / L_modifier;
wave_land_adj = 1.2; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .2 / L_modifier; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 4;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 4;

//tech animation frames
tech_active_frames = 1;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 2;
techroll_active_frames = 5;
techroll_recovery_frames = 4;
techroll_speed = 7 * L_modifier;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 2;
air_dodge_speed = 8 * L_modifier;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 5;
roll_forward_recovery_frames = 4;
roll_back_startup_frames = 2;
roll_back_active_frames = 5;
roll_back_recovery_frames = 4;	
roll_forward_max = 7 * L_modifier; //roll speed
roll_backward_max = 7 * L_modifier;

land_sound = asset_get("sfx_land_heavy");
landing_lag_sound = asset_get("sfx_land_heavy");
waveland_sound = asset_get("sfx_waveland_orc");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_birdflap");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

waterCutterExist = 0

bouncePad = hit_fx_create( sprite_get( "bouncePad" ), 12 );
airdodge1 = hit_fx_create( sprite_get( "airdodge1" ), 15 );
airdodge2 = hit_fx_create( sprite_get( "airdodge2" ), 15 );
airdodge3 = hit_fx_create( sprite_get( "airdodge3" ), 15 );

vfx_waterburst = hit_fx_create( sprite_get( "waterburst" ), 24 );

vfx_star = hit_fx_create( sprite_get( "vfx_star" ), 21);
vfx_dattack_jumpfx = hit_fx_create( sprite_get( "dattack_jumpfx" ), 32);

vfx_waterhit_medium_sweet = hit_fx_create( sprite_get( "vfx_delta_waterhit_sweet" ), 24);
vfx_waterhit_medium = hit_fx_create( sprite_get( "vfx_waterhit_medium" ), 24);
vfx_waterhit_small = hit_fx_create( sprite_get( "vfx_waterhit_small" ), 18 );
vfx_waterhit_huge = hit_fx_create( sprite_get( "vfx_waterhit_huge" ), 32 );

vfx_waterfx_small = hit_fx_create( sprite_get( "vfx_waterfx_small" ), 21);

vfx_shieldshatter = hit_fx_create( sprite_get( "shieldshatter" ), 24);

//sfx
if(get_player_color(player) == 11){
	sound_play(sound_get("sfx_guile_intro"), 0, 0, 2)
	
	sfx_punch_blow_weak1 = sound_get("sfx_punch_weak1")
	sfx_punch_blow_weak2 = sound_get("sfx_punch_weak2")
	sfx_punch_blow_medium1 = sound_get("sfx_punch_medium1")
	sfx_punch_blow_medium2 = sound_get("sfx_punch_medium2")
	sfx_punch_blow_medium3 = sound_get("sfx_punch_medium1")
	sfx_punch_blow_heavy1 = sound_get("sfx_punch_heavy1")
	sfx_punch_blow_heavy2 = sound_get("sfx_punch_heavy1")
	
	sfx_kick_blow_weak1 = sound_get("sfx_kick_weak1")
	sfx_kick_blow_weak2 = sound_get("sfx_kick_weak1")
	sfx_kick_blow_medium1 = sound_get("sfx_kick_medium1")
	sfx_kick_blow_medium2 = sound_get("sfx_kick_medium1")
	sfx_kick_blow_medium3 = sound_get("sfx_kick_medium1")
	sfx_kick_blow_heavy1 = sound_get("sfx_kick_heavy1")
	sfx_kick_blow_heavy2 = sound_get("sfx_kick_heavy1")
	
	sfx_waterhit_weak = sound_get("sfx_buzz_weak1")
	sfx_waterhit_weak2 = sound_get("sfx_buzz_weak1")
	sfx_waterhit_medium = sound_get("sfx_buzz_medium1")
	sfx_waterhit_heavy = sound_get("sfx_buzz_heavy1")
	sfx_waterhit_heavy2 = sound_get("sfx_buzz_heavy1")
}else{
	sfx_punch_blow_weak1 = asset_get("sfx_blow_weak1")
	sfx_punch_blow_weak2 = asset_get("sfx_blow_weak2")
	sfx_punch_blow_medium1 = asset_get("sfx_blow_medium1")
	sfx_punch_blow_medium2 = asset_get("sfx_blow_medium2")
	sfx_punch_blow_medium3 = asset_get("sfx_blow_medium3")
	sfx_punch_blow_heavy1 = asset_get("sfx_blow_heavy1")
	sfx_punch_blow_heavy2 = asset_get("sfx_blow_heavy2")
	
	sfx_kick_blow_weak1 = asset_get("sfx_blow_weak1")
	sfx_kick_blow_weak2 = asset_get("sfx_blow_weak2")
	sfx_kick_blow_medium1 = asset_get("sfx_blow_medium1")
	sfx_kick_blow_medium2 = asset_get("sfx_blow_medium2")
	sfx_kick_blow_medium3 = asset_get("sfx_blow_medium3")
	sfx_kick_blow_heavy1 = asset_get("sfx_blow_heavy1")
	sfx_kick_blow_heavy2 = asset_get("sfx_blow_heavy2")
	
	sfx_waterhit_weak = sound_get("sfx_waterhit_weak")
	sfx_waterhit_weak2 = sound_get("sfx_waterhit_weak2")
	sfx_waterhit_medium = sound_get("sfx_waterhit_medium")
	sfx_waterhit_heavy = sound_get("sfx_waterhit_heavy")
	sfx_waterhit_heavy2 = sound_get("sfx_waterhit_heavy2")
}

shrug_character = "Torga"

//Torga DE
geyser_free_far = false
geyser_free_close = false
lockon_id = noone
no_action_timer = 0
waterBomb_direction = 0
dspecial_used = false
attack_buffer = false
dispos_x = 0
dispos_y = 0
waterBomb = noone
hurricane = noone
init_dir = 0
doublejumpVar = 0
grabbedid = noone;
alt_cur = get_player_color(player);
double_jump_timer = 0
torga_grav_jump = 0
uspec_non = 0
has_djump = true
regrab_damage = 0
pointing_direction = 0
current_point_angle = 0
bomb_sizevar = 0
has_used_fspecial = false
can_teleport = false
parriedID = 0
random_text = 0
torga_balling = false
switch_timer = 0
not_moved = true
spr_dir_start = 1
teleport = true
bypass_sounds = false
sounds_changed = false
bomb_hurricane = false

thump = 0
bomb_thump = 0
bead_thump = 0
waterBomb_charge_stun = 0
extended_cooldown = false

if(secret_skins == true){

// White
set_color_profile_slot( 1, 0, 92, 92, 92 ); //Cloth
set_color_profile_slot( 1, 1, 255, 210, 0 ); //Liquid
set_color_profile_slot( 1, 2, 184, 180, 163 ); //Skin
set_color_profile_slot( 1, 3, 48, 46, 39 ); //Shell
set_color_profile_slot( 1, 4, 105, 98, 61 ); //Beads
set_color_profile_slot( 1, 5, 255, 210, 0 ); //Book

// Brownish
set_color_profile_slot( 2, 0, 92, 92, 92 ); //Cloth
set_color_profile_slot( 2, 1, 157, 255, 0 ); //Liquid
set_color_profile_slot( 2, 2, 184, 189, 178 ); //Skin
set_color_profile_slot( 2, 3, 34, 36, 31 ); //Shell
set_color_profile_slot( 2, 4, 89, 107, 63 ); //Beads
set_color_profile_slot( 2, 5, 157, 255, 0 ); //Book

// Red
set_color_profile_slot( 3, 0, 92, 92, 92 ); //Cloth
set_color_profile_slot( 3, 1, 0, 255, 119 ); //Liquid
set_color_profile_slot( 3, 2, 161, 191, 175 ); //Skin
set_color_profile_slot( 3, 3, 35, 41, 38 ); //Shell
set_color_profile_slot( 3, 4, 58, 92, 75 ); //Beads
set_color_profile_slot( 3, 5, 0, 255, 119 ); //Book

// Blue
set_color_profile_slot( 4, 0, 92, 92, 92 ); //Cloth
set_color_profile_slot( 4, 1, 0, 234, 255 ); //Liquid
set_color_profile_slot( 4, 2, 151, 178, 181 ); //Skin
set_color_profile_slot( 4, 3, 45, 55, 56 ); //Shell
set_color_profile_slot( 4, 4, 65, 107, 107 ); //Beads
set_color_profile_slot( 4, 5, 0, 234, 255 ); //Book

// Purple/Yellow
set_color_profile_slot( 5, 0, 92, 92, 92 ); //Cloth
set_color_profile_slot( 5, 1, 0, 34, 255 ); //Liquid
set_color_profile_slot( 5, 2, 153, 158, 189 ); //Skin
set_color_profile_slot( 5, 3, 48, 49, 59 ); //Shell
set_color_profile_slot( 5, 4, 62, 67, 107 ); //Beads
set_color_profile_slot( 5, 5, 0, 34, 255 ); //Book

// Green
set_color_profile_slot( 6, 0, 92, 92, 92 ); //Cloth
set_color_profile_slot( 6, 1, 200, 0, 255 ); //Liquid
set_color_profile_slot( 6, 2, 180, 158, 186 ); //Skin
set_color_profile_slot( 6, 3, 59, 48, 55 ); //Shell
set_color_profile_slot( 6, 4, 100, 66, 110 ); //Beads
set_color_profile_slot( 6, 5, 200, 0, 255 ); //Book

// Black/Red
set_color_profile_slot( 7, 0, 92, 92, 92 ); //Cloth
set_color_profile_slot( 7, 1, 255, 0, 170 ); //Liquid
set_color_profile_slot( 7, 2, 181, 148, 170 ); //Skin
set_color_profile_slot( 7, 3, 59, 46, 54 ); //Shell
set_color_profile_slot( 7, 4, 97, 58, 86 ); //Beads
set_color_profile_slot( 7, 5, 255, 0, 170 ); //Book

// Purple/Green
set_color_profile_slot( 8, 0, 92, 92, 92 ); //Cloth
set_color_profile_slot( 8, 1, 255, 0, 0 ); //Liquid
set_color_profile_slot( 8, 2, 191, 167, 167 ); //Skin
set_color_profile_slot( 8, 3, 46, 38, 38 ); //Shell
set_color_profile_slot( 8, 4, 89, 62, 62 ); //Beads
set_color_profile_slot( 8, 5, 255, 0, 0 ); //Book

// Ranno
set_color_profile_slot( 9, 0, 92, 92, 92 ); //Cloth
set_color_profile_slot( 9, 1, 255, 136, 0 ); //Liquid
set_color_profile_slot( 9, 2, 135, 218, 229 ); //Skin
set_color_profile_slot( 9, 3, 28, 38, 69 ); //Shell
set_color_profile_slot( 9, 4, 122, 106, 89 ); //Beads
set_color_profile_slot( 9, 5, 255, 136, 0 ); //Book

// BLW
set_color_profile_slot( 10, 0, 92, 92, 92 ); //Cloth
set_color_profile_slot( 10, 1, 255, 145, 0 ); //Liquid
set_color_profile_slot( 10, 2, 105, 90, 88 ); //Skin
set_color_profile_slot( 10, 3, 166, 125, 0 ); //Shell
set_color_profile_slot( 10, 4, 212, 181, 171 ); //Beads
set_color_profile_slot( 10, 5, 0, 54, 0 ); //Book

// Guile
set_color_profile_slot( 11, 0, 92, 92, 92 ); //Cloth
set_color_profile_slot( 11, 1, 255, 210, 0 ); //Liquid
set_color_profile_slot( 11, 2, 219, 171, 147 ); //Skin
set_color_profile_slot( 11, 3, 31, 69, 31 ); //Shell
set_color_profile_slot( 11, 4, 74, 64, 48 ); //Beads
set_color_profile_slot( 11, 5, 230, 255, 0 ); //Book

// Genesis
set_color_profile_slot( 12, 0, 92, 92, 92 ); //Cloth
set_color_profile_slot( 12, 1, 224, 40, 52 ); //Liquid
set_color_profile_slot( 12, 2, 66, 59, 59 ); //Skin
set_color_profile_slot( 12, 3, 94, 89, 89 ); //Shell
set_color_profile_slot( 12, 4, 173, 173, 173 ); //Beads
set_color_profile_slot( 12, 5, 224, 40, 52 ); //Book

// Ocean
set_color_profile_slot( 13, 0, 92, 92, 92 ); //Cloth
set_color_profile_slot( 13, 1, 0, 225, 255 ); //Liquid
set_color_profile_slot( 13, 2, 159, 206, 209 ); //Skin
set_color_profile_slot( 13, 3, 92, 88, 72 ); //Shell
set_color_profile_slot( 13, 4, 255, 214, 214 ); //Beads
set_color_profile_slot( 13, 5, 143, 135, 96 ); //Book

}else{
	
	// White
set_color_profile_slot( 1, 0, 185, 191, 251 ); //Cloth
set_color_profile_slot( 1, 1, 221, 234, 255 ); //Liquid
set_color_profile_slot( 1, 2, 164, 150, 148 ); //Skin
set_color_profile_slot( 1, 3, 91, 85, 73 ); //Shell
set_color_profile_slot( 1, 4, 109, 117, 141 ); //Beads
set_color_profile_slot( 1, 5, 180, 32, 42 ); //Book

// Brownish
set_color_profile_slot( 2, 0, 184, 111, 55 ); //Cloth
set_color_profile_slot( 2, 1, 65, 183, 222 ); //Liquid
set_color_profile_slot( 2, 2, 168, 131, 124 ); //Skin
set_color_profile_slot( 2, 3, 46, 48, 61 ); //Shell
set_color_profile_slot( 2, 4, 204, 173, 155 ); //Beads
set_color_profile_slot( 2, 5, 105, 37, 19 ); //Book

// Red
set_color_profile_slot( 3, 0, 92, 55, 55 ); //Cloth
set_color_profile_slot( 3, 1, 255, 94, 94 ); //Liquid
set_color_profile_slot( 3, 2, 148, 113, 113 ); //Skin
set_color_profile_slot( 3, 3, 48, 43, 43 ); //Shell
set_color_profile_slot( 3, 4, 163, 163, 163 ); //Beads
set_color_profile_slot( 3, 5, 112, 20, 26 ); //Book

// Blue
set_color_profile_slot( 4, 0, 182, 203, 209 ); //Cloth
set_color_profile_slot( 4, 1, 77, 225, 242 ); //Liquid
set_color_profile_slot( 4, 2, 166, 141, 151 ); //Skin
set_color_profile_slot( 4, 3, 145, 97, 114 ); //Shell
set_color_profile_slot( 4, 4, 176, 158, 158 ); //Beads
set_color_profile_slot( 4, 5, 255, 0, 217 ); //Book

// Purple/Yellow
set_color_profile_slot( 5, 0, 144, 102, 242 ); //Cloth
set_color_profile_slot( 5, 1, 255, 190, 43 ); //Liquid
set_color_profile_slot( 5, 2, 166, 162, 156 ); //Skin
set_color_profile_slot( 5, 3, 54, 46, 46 ); //Shell
set_color_profile_slot( 5, 4, 157, 156, 171 ); //Beads
set_color_profile_slot( 5, 5, 217, 103, 103 ); //Book

// Green
set_color_profile_slot( 6, 0, 74, 153, 102 ); //Cloth
set_color_profile_slot( 6, 1, 231, 240, 235 ); //Liquid
set_color_profile_slot( 6, 2, 186, 173, 173 ); //Skin
set_color_profile_slot( 6, 3, 46, 35, 32 ); //Shell
set_color_profile_slot( 6, 4, 176, 122, 81 ); //Beads
set_color_profile_slot( 6, 5, 255, 123, 0 ); //Book

// Black/Red
set_color_profile_slot( 7, 0, 255, 0, 0 ); //Cloth
set_color_profile_slot( 7, 1, 135, 135, 135 ); //Liquid
set_color_profile_slot( 7, 2, 179, 172, 172 ); //Skin
set_color_profile_slot( 7, 3, 13, 13, 13 ); //Shell
set_color_profile_slot( 7, 4, 207, 188, 188 ); //Beads
set_color_profile_slot( 7, 5, 107, 107, 107 ); //Book

// Purple/Green
set_color_profile_slot( 8, 0, 196, 122, 194 ); //Cloth
set_color_profile_slot( 8, 1, 0, 255, 156 ); //Liquid
set_color_profile_slot( 8, 2, 162, 156, 171 ); //Skin
set_color_profile_slot( 8, 3, 46, 61, 58 ); //Shell
set_color_profile_slot( 8, 4, 0, 0, 0 ); //Beads
set_color_profile_slot( 8, 5, 128, 0, 255 ); //Book

// Ranno
set_color_profile_slot( 9, 0, 255, 124, 0 ); //Cloth
set_color_profile_slot( 9, 1, 192, 241, 69 ); //Liquid
set_color_profile_slot( 9, 2, 56, 210, 229 ); //Skin
set_color_profile_slot( 9, 3, 58, 73, 134 ); //Shell
set_color_profile_slot( 9, 4, 252, 255, 234 ); //Beads
set_color_profile_slot( 9, 5, 119, 81, 224 ); //Book

// BLW
set_color_profile_slot( 10, 0, 240, 240, 240 ); //Cloth
set_color_profile_slot( 10, 1, 255, 205, 0 ); //Liquid
set_color_profile_slot( 10, 2, 105, 90, 88 ); //Skin
set_color_profile_slot( 10, 3, 166, 125, 0 ); //Shell
set_color_profile_slot( 10, 4, 255, 218, 206 ); //Beads
set_color_profile_slot( 10, 5, 0, 54, 0 ); //Book

// Guile
set_color_profile_slot( 11, 0, 166, 126, 100 ); //Cloth
set_color_profile_slot( 11, 1, 204, 255, 0 ); //Liquid
set_color_profile_slot( 11, 2, 255, 203, 179 ); //Skin
set_color_profile_slot( 11, 3, 92, 168, 88 ); //Shell
set_color_profile_slot( 11, 4, 219, 149, 18 ); //Beads
set_color_profile_slot( 11, 5, 230, 255, 0 ); //Book

// Genesis
set_color_profile_slot( 12, 0, 199, 30, 30 ); //Cloth
set_color_profile_slot( 12, 1, 255, 255, 255 ); //Liquid
set_color_profile_slot( 12, 2, 66, 59, 59 ); //Skin
set_color_profile_slot( 12, 3, 94, 89, 89 ); //Shell
set_color_profile_slot( 12, 4, 173, 173, 173 ); //Beads
set_color_profile_slot( 12, 5, 224, 40, 52 ); //Book

// Ocean
set_color_profile_slot( 13, 0, 166, 81, 81 ); //Cloth
set_color_profile_slot( 13, 1, 232, 255, 254 ); //Liquid
set_color_profile_slot( 13, 2, 123, 222, 227 ); //Skin
set_color_profile_slot( 13, 3, 224, 198, 152 ); //Shell
set_color_profile_slot( 13, 4, 255, 214, 214 ); //Beads
set_color_profile_slot( 13, 5, 143, 135, 96 ); //Book
}

//Cloth
col_r = get_color_profile_slot_r( get_player_color(player), 0);
col_g = get_color_profile_slot_g( get_player_color(player), 0);
col_b = get_color_profile_slot_b( get_player_color(player), 0);

rgb_slot1 = make_color_rgb(col_r / 2, col_g / 2, col_b / 2);
rgb_slot1_saturated = make_color_rgb(col_r, col_g, col_b);

//Water
col_r_2 = get_color_profile_slot_r( get_player_color(player), 1);
col_g_2 = get_color_profile_slot_g( get_player_color(player), 1);
col_b_2 = get_color_profile_slot_b( get_player_color(player), 1);

col_r_outline = 0
col_g_outline = 0
col_b_outline = 0

rgb_slot2 = make_color_rgb(col_r_2 / 2, col_g_2 / 2, col_b_2 / 2);
rgb_slot2_saturated = make_color_rgb(col_r_2, col_g_2, col_b_2);

//g7
g7fx_timer = 0;

//Ocean
waves_rising = 0.5
waves_direction = 2

//Blw
flag_width = 0

//Halloween Stuff
halloween_end = hit_fx_create( sprite_get( "halloween_end" ), 21);

if(get_player_color(player) == 31){
	halloween = true
}else{
	halloween = false
}

//Pokemon Stadium
pkmn_stadium_back_img = sprite_get("torga_back_sprite")
pkmn_stadium_front_img = sprite_get("torga_front_sprite")

//Dedede
arena_title = "The Pacific End";

//miiverse
miiverse_post = sprite_get("torga_miiverse");

sprite_change_offset("torga_miiverse", 60, 30);

//Wall-E
walle_taunt_sound = sound_get("stage_theme");
walle_taunt_type = 1;

//Other kirby
TCG_Kirby_Copy = 6; //Water Copy

//Hypercam
uhc_victory_quote = "o ye, get fekin rekt dum turtl";
 
//kirby
swallowed = 0;
kirbyability = 16;

//Runes

// Level 1 runes

//Ustrong distance
if(has_rune("A") || all_runes){
	A_modifier = 2	
}else{
	A_modifier = 1
}
//Faster Nspecial
if(has_rune("B") || all_runes){
	B_modifier = 2
}else{
	B_modifier = 1
}
//WaterBomb Farther
if(has_rune("C") || all_runes){
	C_modifier = 1.5
}else{
	C_modifier = 1
}
//Hurricane Multihits
if(has_rune("D") || all_runes){
	D_modifier = 1.75
}else{
	D_modifier = 1
}
//Dspecial dash farther
if(has_rune("E") || all_runes){
	E_modifier = 1.5
}else{
	E_modifier = 1
}
//Fspecial Stronger
if(has_rune("F") || all_runes){
	set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 16);
	set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
	set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 1);
	set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 10);
	set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0.95);
}else{
	set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 12);
	set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 5);
	set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 1);
	set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 7);
	set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0.65);
}

// Level 2 Runes

//Waterbomb is bigger and stronger
if(has_rune("G") || all_runes){
	G_modifier = 1.5
	
	set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 50);
	set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 50);

	set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 10);
	set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.75);
	set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 30);
	set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, 1.1);
	set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 150);
	set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 150);
	
	set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 7);
	set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 9);
	set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.9);
	set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 50);
	set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, 0);
	set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 180);
	set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 180);
	
	set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 180);
	set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 180);
}else{
	G_modifier = 1
	
	set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 35);
	set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 35);

	set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 6);
	set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 5);
	set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.45);
	set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 10);
	set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, 1.1);
	set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 100);
	set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 100);
	
	set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 2);
	set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.7);
	set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 50);
	set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, 0);
	set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 120);
	set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 120);
	
	set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 120);
	set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 120);
}

//H (Waterbomb has no cooldown)

//I (dattack cancel)

//Uair sends down
if(has_rune("J") || all_runes){
	set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 270);
}else{
	set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 90);
}

//K (Bair can be held forever)
if(has_rune("K") || all_runes){
	set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 5);
	set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 5);
	set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 5);
	set_hitbox_value(AT_BAIR, 4, HG_BASE_KNOCKBACK, 5);
}else{
	set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 3);
	set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 3);
	set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 3);
	set_hitbox_value(AT_BAIR, 4, HG_BASE_KNOCKBACK, 3);
}

//L (Torga faster)

//M (Waterbomb always strong)

//Hurricane cannot be destroyed
if(has_rune("N") || all_runes){
	N_modifier = true
}else{
	N_modifier = false
}

//O (Turbo mode)