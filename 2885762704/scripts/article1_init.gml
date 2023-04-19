sprite_index = sprite_get("ball");
mask_index = sprite_get("ball");
depth = -100;

low_fps_mode = false;

smoke_blue = hit_fx_create( sprite_get("smoke_blue"), 24 );
smoke_red = hit_fx_create( sprite_get("smoke_red"), 24 );
smoke_grey =  hit_fx_create( sprite_get("smoke"), 24 );
smoke_particles = smoke_grey;

#region configurable settings for ball
ball_kb_multi = 2; //Ball KB Multiplier (2 for 1 and 3 for .5)
orig_grav = .2; //Gravity
start_vsp = -6; //Vsp of starting ball
base_size = 1; //Ball Size //1
bounce_friction = .5; //Shock Absorption of the Ball
ball_starting_damage = 30; //Starting Ball Damage
orig_max_hits = 5; //Max count of hitting a ball per volley
ball_serve_timer = 300; //60 or 600
score_full_delay = 60; //Timer between scoring and resetting
ball_start_side = 0;

//Aether Mode
judgement_num = 60; //Judgement Timer
#endregion configurable settings for ball

#region Effected variables 
//Starting VSP/HSP
old_vsp = start_vsp;
if (random_func(1, 2, true) == 0) {
	old_hsp = 2;
} else {
	old_hsp = -2;
}

ball_grav = orig_grav;

ball_damage = ball_starting_damage; 
#endregion Effected variables

#region static variables
free = true;

ball_timer = 0;
ball_hit = false;

ball_hitstop = 60;
hitpause = true;
hitlock = 60;

//Hitboxes
hitbox_groups = [[0], [0], [0], [0], [0]];

//Team and Players counts
total_count = 0;
blue_team = [];
red_team = [];

//Score
red_score = 0;
blue_score = 0;
first_to_x = get_match_setting( SET_STOCKS );
if (first_to_x == 3) {
	first_to_x = 11;
}



//Spawn Locations for players
spawn_locations = [[-4, -4, -4, -4, -4], [-4, -4, -4, -4, -4]];
spawn_alt = [0, 0, 0]; //Red and Blue spawn allts

//Player Count
for (i = 1; i <= 4; i++) {
	if is_player_on(i) {
		total_count += 1;
	}
}

//Random Teams
if (get_match_setting( SET_TIMER ) == 59) {

	var _red_count = 0;
	var _blue_count = 0;
	var team_max = 2;

	if (total_count <= 2) {
		team_max = 1;
	}
	for (i = 1; i <= 4; i++) {
		if (random_func(i, 2, true) == true && _blue_count < team_max) {
			set_player_team(i, 2);
			_blue_count += 1;
		} else {
			if (_red_count < team_max) {
				set_player_team(i, 1);
				_red_count += 1;
			} else {
				set_player_team(i, 2);
				_blue_count += 1;
			}
		}
		print(random_func(i, 2, true))
	}
	
}

//Normal Teams
for (i = 1; i <= 4; i++) {
	if is_player_on(i) {
		if (get_player_team(i) == 2) { //Blue
			array_insert(blue_team, array_length(blue_team), i);
			if (array_length(blue_team) == 1) {
				spawn_locations[0, i] = 11;
				spawn_locations[1, i] = 13;
			} else {
				spawn_locations[0, i] = 13;
				spawn_locations[1, i] = 11;
			}
		} else if (get_player_team(i) == 1) { //Red
			array_insert(red_team, array_length(red_team), i);
			if (array_length(red_team) == 1) {
				spawn_locations[0, i] = 12;
				spawn_locations[1, i] = 14;
			} else {
				spawn_locations[0, i] = 14;
				spawn_locations[1, i] = 12;
			}
		}
	}
}

//Volley Count
blue_hits = 0;
red_hits = 0; //How many times X team has hit the ball before it explodes
ball_last_hit = -4; //Last attack that hit the ball
ball_last_player = -4; //Player who last hit the ball

max_hits = orig_max_hits;

//Foul and Score timers
foul_timer = 0; //Displays foul text
score_timer = 0; //Displays score text
score_delay = 0;
scored_team = 0;

has_bounced = 0;

//Aether Mode resets
score_modifier = 1;
aether_ball_speed = 1; //1
aether_ball_weight = 1;
aether_ball_spike = judgement_num;
#endregion Static Variables

#region Aether Mode stuff
//Default / Configurable modifiers
aether_mode_1 = "No Modifer";
aether_mode_2 = "No Modifer";
aether_mode_1_choice = 0;
aether_mode_2_choice = 0;
aether_choice = 0;
//List of modifiers
aether_modes = [
"No Modifer",
"Large Ball", //Sizes
"Big Ball",
"Small Ball",
"Tiny Ball",
"Heavy Ball", //Weights
"Light Ball",
"One Hit", //Hits
"Three Hits",
"Ten Hits",
"High Gravity", //Gravity
"Low Gravity",
"No Gravity", 
"Player Fly", //Special
"Pogo",
"Judgement",
"Foosball",
"NAIR",
"Don't Whiff",
"Free Roaming",
"Double Points",
"Triple Points",
"Infinite Jumps",
"Platforms",
"Sudden Death"
]
#endregion Aether Mode stuff

#region Training Mode
solo_mode = 0;
if (array_length(red_team) == 0 || array_length(blue_team) == 0) {
	with oPlayer {
		other.solo_mode = get_player_team(player);
	}
}
//print(solo_mode)

training_types = [
"Serve",
"Receive",
"Free Play"
]
training_mode = training_types[0];

points_success = 0;
points_fail = 0;
#endregion

//Music
/*
music_list = [
["Loon Boon", "music_loop"],
["Red Streamer Battle", "music_loop2"],
["Snow Flake Lake", "music_loop3"],
["Idk Music", "music_loop4"],
];
*/
music_list = [
	["Enter the Derby", "music_dd"],
	["Ambrosian Vibrancy", "music_av"],
	["Reel Em In!", "music_z"],
	["Scares and Scars", "music_hw"]
]

curr_music = random_func_2(4, array_length(music_list), true) 
music_play_file( music_list[curr_music, 1] );


//Stage
stage_list = [
["Training Room", sprite_get("bg_training"), sprite_get("ground_training"), 0],
["Sunset", sprite_get("bg_sunset"), sprite_get("ground_sunset"), 0],
["Air Armada", sprite_get("bg_air"), sprite_get("ground_air"), 0],
["Rock Wall", sprite_get("bg_rock"), sprite_get("ground_rock"), 0],
["Frozen Fortress", sprite_get("bg_ice"), sprite_get("ground_ice"), 0],
["Tower of Heaven", sprite_get("bg_tower"), sprite_get("ground_tower"), 0],
["Dark Mode Training Room", sprite_get("bg_dark_training"), sprite_get("ground_dark_training"), 0],
["WS Volleyball Court", sprite_get("bg_court"), sprite_get("ground_court"), 1/20]
];

//Practice Mode Variables
curr_damage = 0;
max_damage = 0;
last_combo = [];
max_combo = [];

is_practice_mode = (get_training_cpu_action() != CPU_FIGHT);
//Practice Mode or not
if (get_training_cpu_action() != CPU_FIGHT) {
	curr_stage = 0; //Training Stage
} else {
	if (first_to_x == 11 && !is_aether_stage()) { //Default points and not aether stage
		curr_stage = 7;
	} else {
		curr_stage = random_func_2(6, array_length(stage_list), true); //Random	
	}
}
music_play_file( music_list[curr_music, 1] );

should_make_teams_random = false

vb_menu = false;
live_ball = true; //Menu
menu_options = 
[
["Ball Starting Side", ball_start_side],
["Stage Select", stage_list[curr_stage, 0]],
["Music Track", music_list[curr_music, 0]],
["First to", first_to_x],
["Gamemode 1", aether_modes[aether_mode_1_choice]],
["Gamemode 2", aether_modes[aether_mode_2_choice]],
["Solo Mode", solo_mode],
["Should Randomise Teams", should_make_teams_random]
//["Announcer: ", 0]
];



menu_selection = 0;
menu_player = -4;

//grab code?
state = PS_HITSTUN;
char_height = 32;
hurtboxID = -4;

platform_left = instance_create(get_marker_x(25), 1000,"obj_stage_article_platform", 3); //Left Platform
platform_left.image_blend = c_blue;
platform_right = instance_create(get_marker_x(26), 1000,"obj_stage_article_platform", 3); //Right Platform
platform_right.image_blend = c_red;

//Test


