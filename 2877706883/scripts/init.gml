allow_sounds = false;
////////////////////////////////////////////////////////
flight_fuel_max = 120;
flight_fuel = flight_fuel_max;
can_fly = true;
in_flight = false;
has_flown = false;
boom_fric = .25;
boom_hsp = 12;
boom_vsp = 12;
needle_speed = 12;
vbreak_error_sfx = false;
tap_jump_crouch_timer = 0;

needle_range = 60 / 2;
needle_angle = 45
needle_loop = 0;
needle_max_loop = 6;
needle_arc = 3;
needle_dir = needle_arc;

vi_uspecial_set_player_id = 0;
vi_poison_id = -4;
vi_poison_timer = -4;
vi_poison_stack = 240;
vi_poison_stack_per = 60;

dust_up = -4;
dust_down = -4;

has_item = false;
items_max = 10;
item_regrab_timer = 0;

z_hsp = 0;
z_vsp = 0;

djump_protection = false;

should_show_plat = false;

//item_force = -4;
item_force = -4;

item_names = [
	"No Force",
	"Hard Seed",
	"Drowsy Cake",
	"Poison Bomb",
	"Magic Ice",
	"Hustle Berry",
	"Abomination",
	"Spicy Seed",
	"Numb Bomb",
	"Mistake (Unused)",
	"Mighty Pebble"
]

item_pools = [
	[75, [
		[75, 1, "Hard Seed"], //Hard Seed
		[20, 7, "Spicy Seed"], //Spicy Seed
		[5, 10, "Mighty Pebble"] //Mighty Rock
	], "Basic Pool"],
	[20, [
		[50, 3, "Poison Bomb"], //Poison Bomb
		[25, 4, "Magic Ice"], //Magic Ice
		[25, 8, "Numb Bomb"] //Numb Bomb
	], "Special"],
	[5, [
		[40, 2, "Drowsy Cake"], //Drowsy Cake
		[40, 5, "Hustle Berry"], //Hustle Berry
		[20, 6, "Abomination"] //Abomination
	], "Rare"]
]

//print("Item Check Test: " + string(item_pools[0, 1][0, 0]))

/*
print(array_length(item_pools))
for (var i = 0; i < array_length(item_pools); i++) {
	print(item_pools[i, 0])
}
*/

item_mistake_rate = 0;

//Display Item Rates
item_disp = -4;
if get_training_cpu_action() != CPU_FIGHT {
	item_disp = 0;
}

item_hold_sprite = 0;
item_pos = 
[
	[ //Idle 0
		[16, 16],
		[18, 16],
		[18, 16],
		[18, 14],
		[18, 14],
		[18, 14],
		[18, 14],
		[18, 14]
	],
	[ //Walk 1
		[6, 16],
		[4, 16],
		[2, 16],
		[4, 14]
	],
	[ //Walkturn 2
		[22, 18]
	],
	[ //Crouch 3
		[14, 14],
		[2, 16],
		[4, 10]
	],
	[ //Dash 4
		[6, 18],
		[14, 18],
		[6, 18],
		[-8, 28]
	],
	[ //Big Hurt 5
		[20, 34]
	],
	[ //Parry 6
		[20, 16],
		[4, 28],
		[8, 16],
		[20, 16]
	],
	[ //Roll 7
		[16, 12],
		[10, 16],
		[8, 16],
		[12, 14],
		[18, 14]
	],
	[ //Jump 8
		[20, 34],
		[16, 18],
		[16, 16],
		[16, 18],
		[18, 14],
		[20, 18],
		[22, 32],
		[18, 38]
	],
	[ //Double Jump 9
		[16, 42],
		[4, 42],
		[-12, 20],
		[-14, 20],
		[-4000, -4000],
		[22, 20],
		[20, 20],
		[16, 20],
		[16, 20]		
	],
	[ //Land 10
		[2, 16]
	],	
	[ //Float 11
		[14, 16],
		[14, 14],
		[16, 18],
		[14, 18]
	],
	[ //Hurt 12
		[32, 44]
	],
	[ //Ground Hurt 13
		[32, 44]
	],	
	[ //Up Hurt 14
		[10, 20]
	],	
	[ //Down Hurt 15
		[-6, 26]
	],	
	[ //Bounce Hurt 16
		[-6, 0]
	],	
	[ //Spin Hurt 16
		[32, 44],
		[28, 16],
		[-4, 24],
		[4, 52]
	]	
]


set_victory_bg( sprite_get( "bg" ));
if (allow_sounds) {
	set_victory_theme( sound_get( "victory" ));
} else {
	set_victory_theme(CH_KRAGG);
}


//

hurtbox_spr = sprite_get("idle_hurt");
crouchbox_spr = sprite_get("crouch_hurt");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 56; //56
idle_anim_speed = .2;
crouch_anim_speed = .1;
walk_anim_speed = .2;
dash_anim_speed = .25;
pratfall_anim_speed = .25;

walk_speed = 3; 
walk_accel = .5;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 5.5;
dash_speed = 6;
dash_turn_time = 6;
dash_turn_accel = 2;
dash_stop_time = 6;
dash_stop_percent = .30; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .7;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10; //10.5
short_hop_speed = 5.5;
djump_speed = 9.5; //10.5
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 4; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .4; //.25
prat_fall_accel = .5; //multiplier of air_accel while in pratfall // .3
air_friction = .02;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 9; 
walljump_time = 32;
max_fall = 9; //maximum fall speed without fastfalling
fast_fall = 11; //fast fall speed
gravity_speed = .45; //5
hitstun_grav = .45; //5
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, 1> = heavier

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
dodge_recovery_frames = 2;

//tech animation frames
tech_startup_frames = 1;
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 3;
techroll_recovery_frames = 1;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 6;
air_dodge_recovery_frames = 2;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 1;
//
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 1;
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


//Item Attack

item_attack_pos = 
[
	[
		[]
	]
]

item_attack_push(AT_FTHROW, 0, 24, 50);
item_attack_push(AT_UTHROW, 0, 28, 2);
item_attack_push(AT_DTHROW, 0, 10, 52);
//Extra
item_attack_push(AT_FTHROW, 1, -4000, -4000);
item_attack_push(AT_UTHROW, 1, -4000, -4000);
item_attack_push(AT_DTHROW, 1, -4000, -4000);
//Dspecial Pull
item_attack_push(AT_DSPECIAL, 0, -4000, -4000);
item_attack_push(AT_DSPECIAL, 1, -4000, -4000);
item_attack_push(AT_DSPECIAL, 2, -4000, -4000);
item_attack_push(AT_DSPECIAL, 3, -4000, -4000);
item_attack_push(AT_DSPECIAL, 4, -32, 62);
item_attack_push(AT_DSPECIAL, 5, -30, 54);
item_attack_push(AT_DSPECIAL, 6, -34, 42);
item_attack_push(AT_DSPECIAL, 7, -22, 18);
//Nspecial
item_attack_push(AT_NSPECIAL, 0, 26, 20);
item_attack_push(AT_NSPECIAL, 1, 26, 48);
item_attack_push(AT_NSPECIAL, 2, 28, 46);
item_attack_push(AT_NSPECIAL, 3, 28, 50);
item_attack_push(AT_NSPECIAL, 4, 26, 52);
item_attack_push(AT_NSPECIAL, 5, 34, 48);
item_attack_push(AT_NSPECIAL, 7, -4000, -4000);
item_attack_push(AT_NSPECIAL, 8, -4000, -4000);
item_attack_push(AT_NSPECIAL, 9, -4000, -4000);
item_attack_push(AT_NSPECIAL, 10, -4000, -4000);
//
item_attack_push(AT_TAUNT, 1, -4000, -4000);
item_attack_push(AT_TAUNT, 2, -4000, -4000);
item_attack_push(AT_TAUNT, 3, -4000, -4000);
item_attack_push(AT_TAUNT, 4, -4000, -4000);
item_attack_push(AT_TAUNT, 5, -4000, -4000);
item_attack_push(AT_TAUNT, 6, -4000, -4000);

//print(item_attack_pos[AT_FTHROW])

#define item_attack_push(_attack, _index, _x, _y) {
	if (array_length(item_attack_pos) <= _attack) {
		for (i = array_length(item_attack_pos); i <= _attack; i++) {
			array_push(item_attack_pos, [])
		}
	}
	array_insert(item_attack_pos[_attack], _index, [_x, _y]);
	//print(_attack)
	//print(item_attack_pos[_attack])
}





