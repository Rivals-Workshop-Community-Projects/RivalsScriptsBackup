hurtbox_spr = sprite_get("gun_hurtbox");
crouchbox_spr = sprite_get("gun_crouch_hurtbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 66;
idle_anim_speed = .08;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 12;
initial_dash_speed = 7;
dash_speed = 6.0;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.2;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 6;
djump_speed = 10;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 8;
walljump_time = 25;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 14; //fast fall speed
gravity_speed = .5;
hitstun_grav = .5;
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 14;
wave_land_time = 8;
wave_land_adj = 1.25; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 3;
dodge_recovery_frames = 5;

//tech animation frames
tech_active_frames = 5;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 4;
techroll_recovery_frames = 3;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 2;
roll_back_active_frames = 4;
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

//Gun Stance Anim init
can_equip_gun_timer = 140;
gun = 0;
had_gun = 0;
gun_to_equip = 1;
should_switch_stance = "";

gun_all_cooldown = false;
depleted = false;
depletion_cooldown = 360;

exclamation_frame = 0;
exclamation_speed = 0.25;
exclamation_show = false;

//Ammo
ammo = 6;
max_ammo = 6;
ammo_timer = 0;
ammo_max_timer = 5;


follow_cooldown = 0;
follow_max_cooldown = 15;

//Steady aim
steady_anim = false;

quick_shot_hitbox = noone;

gun_stance_vfx = [hit_fx_create(sprite_get("vfx_nspecial_enter"),20), hit_fx_create(sprite_get("vfx_nspecial_exit"),20), hit_fx_create(sprite_get("vfx_shot"),24)]
fspecial_hfx = hit_fx_create(sprite_get("vfx_curse"), 36)
sweet_hfx = hit_fx_create(sprite_get("vfx_dtilt_sweet"), 34)
bubbles_hfx = hit_fx_create(sprite_get("vfx_bubbles"), 36)
big_hfx = hit_fx_create(sprite_get("vfx_bighit"), 26)
small_hfx = hit_fx_create(sprite_get("vfx_smallhit"), 28)
firework_hfx = hit_fx_create(sprite_get("vfx_fireworks"), 34)
steadyaimready_vfx = hit_fx_create(sprite_get("vfx_steadyaimready"), 36)
uspecialburst_vfx = hit_fx_create(sprite_get("vfx_uspecial_burst"), 36)
uspecialtrail_vfx = hit_fx_create(sprite_get("uspecial_proj_trail"), 15)
uspecialdust_vfx = hit_fx_create(sprite_get("vfx_uspecial_dust"), 18)
summon_vfx = hit_fx_create(sprite_get("scapegoat_summon"), 27)

ball_particles = hit_fx_create(sprite_get("vfx_ball_particles"), 21)

gunshot_vfx = hit_fx_create(sprite_get("vfx_gunshot"), 16)

uspecial_proj = noone;
scapegoat_obj = noone;

gunshot_position = [0,0];

reticule_timings = [12,16,19];
reticule_frames = [36,24,9];
reticule_frame = 0;
reticule_state = -1;
reticule_position = [0,0];
reticule_lockedplayer = noone;
reticule_radius = 350;
reticule_show_steady_aim = false;

current_sprite_set = 0;
num_sprite_sets = 2;

concentration = 100
shown_concentration = 100

has_airdodge_buffer = false;

// if "shot_vfx_positions" not in self
// {
//     with oPlayer
//     {
//         if (url == other.url)
//         {
//             shot_vfx_positions = ds_list_create();
//             populateList(shot_vfx_positions);
//         }
//     }
// }

switch get_player_color(player)
{
	case 30:
	case 31:
	    set_victory_theme(sound_get("Drift"));
	break;
	default:
		set_victory_theme(sound_get("goluckyvictory"));
	break;
}

//Intro Code
introTimer = -3 - player;
introTimer2 = 0;
introAnimFrameLength = 4;

particles = ds_list_create();

checked_sprite_names = [
    "idle", 
    "crouch", 
    "walk", 
    "walkturn", 
    "dash", 
    "dashstart", 
    "dashstop", 
    "dashturn", 
    
    "hurt",
    "hurtground",
    "bighurt",
    "uphurt",
    "downhurt",
    "bouncehurt",
    "spinhurt",
    
    "jumpstart", 
    "jump", 
    "doublejump", 
    "walljump", 
    "pratfall", 
    "land", 
    "landinglag", 
    
    "parry", 
    "roll_forward", 
    "roll_backward", 
    "airdodge", 
    "waveland", 
    "tech", 
    
    "jab", 
    "dattack", 
    "ftilt", 
    "dtilt", 
    "utilt", 
    "nair", 
    "fair", 
    "bair", 
    "uair", 
    "dair", 
    "fstrong", 
    "ustrong", 
    "dstrong", 
    "nspecial", 
    "nspecial_air", 
    "fspecial", 
    "fspecial_air",
    "uspecial", 
    "uspecial_air",
    "dspecial", 
    "dspecial_air",
    "taunt",
    "taunt2",
    "intro",
    "holster"
    ];
var color = get_player_color(player)
orange_color = make_color_rgb(get_color_profile_slot_r(color, 3),get_color_profile_slot_g(color, 3),get_color_profile_slot_b(color, 3))

var positions = [
    sprite_get('idle'), [ 6, [74, -54], 7, [74, -54], 8, [74, -52], 9, [74, -52], 10, [74, -52], 11, [74, -54]  ],
    sprite_get('crouch'), [ 5, [74, -54], 6, [74, -43], 7, [74, -40], 8, [74, -40], 9, [74, -50]  ],
    sprite_get('walk'), [ 8, [72, -56], 9, [72, -54], 10, [72, -56], 11, [72, -58], 12, [74, -56] , 13, [74, -54], 14, [74, -56] , 15, [74, -58]  ],
    sprite_get('walkturn'), [2, [22, -12], 3, [38, -86] ],
    sprite_get('dash'), [ 8, [70, -50], 9, [70, -48], 10, [68, -50], 11, [66, -52], 12, [64, -52] , 13, [64, -50], 14, [66, -50] , 15, [66, -52]  ],
    sprite_get('dashstart'), [2, [72, -52], 3, [66, -52] ],
    sprite_get('dashstop'), [2, [64, -52], 3, [68, -52] ],
    sprite_get('dashturn'), [2, [-6, -6], 3, [40, -80] ],
    sprite_get('jumpstart'), [1, [74, -46] ],
    sprite_get('jump'), [ 8, [74, -56], 9, [74, -56], 10, [74, -56], 11, [74, -54], 12, [74, -54] , 13, [74, -54], 14, [74, -52] , 15, [74, -52]  ],
    sprite_get('doublejump'), [ 7, [74, -56], 8, [74, -56], 9, [74, -56], 10, [74, -54], 11, [74, -54] , 12, [74, -54], 13, [74, -52] ],
    sprite_get('walljump'), [ 7, [74, -56], 8, [74, -56], 9, [74, -56], 10, [74, -54], 11, [74, -54] , 12, [74, -54], 13, [74, -52] ],
    sprite_get('land'), [2, [74, -38], 3, [74, -50] ],
    sprite_get('landinglag'), [2, [64, -52], 3, [68, -52] ],
    sprite_get('pratfall'), [1, [66, -74] ],
    sprite_get('jab'), [21, [62, -52], 22, [56, -52], 23, [54, -52], 24, [60, -54], 25, [68, -54], 26, [58, -54], 27, [54, -52], 28, [52, -54], 29, [54, -54], 30, [66, -58], 31, [50, -58], 32, [48, -58], 33, [58, -60], 34, [84, -46], 35, [90, -44], 36, [92, -42], 37, [92, -40], 38, [84, -38], 39, [80, -36], 40, [62, -52], 41, [68, -52],
    sprite_get('dattack'), [10, [60, -54], 11, [56, -52], 12, [58, -46], 13, [60, -46], 14, [58, -50], 15, [62, -40], 16, [62, -42], 17, [64, -44], 18, [66, -48], 19, [70, -52] ],
    sprite_get('ftilt'), [ 8, [56, -60], 9, [54, -62], 10, [44, -58], 11, [44, -58], 12, [42, -58] , 13, [42, -58], 14, [54, -52] , 15, [68, -54]  ],
    sprite_get('utilt'), [ 8, [62, -58], 9, [60, -62], 10, [72, -46], 11, [74, -44], 12, [74, -42] , 13, [76, -40], 14, [80, -40] , 15, [78, -50]  ],
    sprite_get('dtilt'), [ 9, [40, -54], 10, [38, -54], 11, [42, -52], 12, [62, -47], 13, [70, -38] , 14, [68, -40], 15, [66, -40] , 16, [70, -42] , 17, [76, -41]  ],
    sprite_get('nair'), [ 6, [54, -40], 7, [52, -38], 8, [54, -32], 9, [52, -32], 10, [58, -34], 11, [74, -50]  ],
    sprite_get('fair'), [10, [62, -58], 11, [56, -60], 12, [54, -42], 13, [60, -43], 14, [62, -48], 15, [64, -50], 16, [64, -52], 17, [66, -56], 18, [70, -58], 19, [72, -56] ],
    sprite_get('bair'), [ 7, [72, -42], 8, [70, -40], 9, [62, -48], 10, [60, -48], 11, [60, -46], 12, [60, -44], 13, [68, -48]  ],
    sprite_get('uair'), [ 8, [62, -58], 9, [60, -62], 10, [72, -46], 11, [74, -44], 12, [74, -42] , 13, [76, -40], 14, [80, -40] , 15, [78, -50]  ],
    sprite_get('dair'), [ 8, [62, -52], 9, [60, -54], 10, [50, -60], 11, [50, -60], 12, [56, -52] , 13, [56, -50], 14, [58, -50] , 15, [70, -50]  ], 
    sprite_get('fspecial'), [ 9, [62, -57], 10, [62, -52], 11, [54, -52], 12, [40, -60], 13, [38, -60] , 14, [38, -58], 15, [54, -58] , 16, [64, -52], 17, [68, -52] ],
    sprite_get('fspecial_air'), [ 9, [62, -57], 10, [62, -52], 11, [54, -52], 12, [40, -60], 13, [38, -60] , 14, [38, -58], 15, [52, -58] , 16, [68, -58] , 17, [74, -54]  ],
    sprite_get('dspecial'), [ 8, [62, -50], 9, [62, -46], 10, [58, -60], 11, [62, -58], 12, [64, -52] , 13, [60, -46], 14, [68, -44] , 15, [70, -48]  ],
    sprite_get('dspecial_air'), [ 8, [62, -50], 9, [62, -46], 10, [58, -60], 11, [62, -58], 12, [64, -52] , 13, [60, -46], 14, [68, -44] , 15, [74, -54]  ],
    sprite_get('uspecial'), [ 13, [72, -48], 14, [70, -46], 15, [70, -48], 16, [70, -50], 17, [76, -47] , 18, [74, -56], 19, [72, -58] , 20, [58, -52], 21, [56, -50], 22, [58, -50], 23, [70, -53], 24, [72, -62], 25, [66, -70] ] ]
    ];

//[sprite_index, [ image_index, [coordx,coordy], image_index2, [coordx,coordy]...  ] ]
positions_list = ds_list_create();

for (var i = 0; i <= array_length(positions)-2; i+=2)
{
    var data = {
      at_index : positions[i],
      data : positions[i+1]
    };
    
    ds_list_add(positions_list,data);
}