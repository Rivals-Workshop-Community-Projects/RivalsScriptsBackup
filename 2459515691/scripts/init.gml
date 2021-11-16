fuel = 2;

easetimer = 0;

fueltank_ins = noone;
tankcooldown = 0;
articlestate = 0; //0 - idle, 1 - used, 2 - self destruct
articleout = false;
infield = false;
fieldcooldown = 0;
failboost = true;
failboosttype = 0; //1 = uspecial (upward boost), 2 = fspecial (forward boost)

used_djump_check = false;
prev_frame_state = state;

sussy = false;

hurtbox_spr = sprite_get("hurtbox");
crouchbox_spr = sprite_get("crouchbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 56;
idle_anim_speed = 0.16;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 2.75;
walk_accel = 0.18;
walk_turn_time = 6;
initial_dash_time = 15;
initial_dash_speed = 6;
dash_speed = 7;
dash_turn_time = 10;
dash_turn_accel = 1.3;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 12;
short_hop_speed = 7;
djump_speed = 12;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 6; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .022;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 7;
walljump_vsp = 11;
walljump_time = 32;
max_fall = 13; //maximum fall speed without fastfalling
fast_fall = 16; //fast fall speed
gravity_speed = .60;
hitstun_grav = .5;
knockback_adj = 1.08; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 4;
wave_land_time = 7;
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
tech_active_frames = 8;
tech_recovery_frames = 3;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 3;
techroll_recovery_frames = 2;
techroll_speed = 7;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.6;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 2;
roll_forward_max = 8; //roll speed
roll_backward_max = 8;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_gus");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

AT_NSPECIALAIR = 40;
AT_NSPECIAL2 = 41;
AT_NSPECIAL2AIR = 42;
AT_SPECIALFAIL = 43;
AT_BAIRFAIL = 44;
AT_DSPECIAL2 = 45;
AT_TAUNT2 = 46;
AT_ALTTAUNT = 47;

blue_explosion = hit_fx_create(sprite_get("explosion"), 32);
tank_explosion = hit_fx_create(sprite_get("tank_explosion"), 30);
fail_smoke_fx = hit_fx_create(sprite_get("fail_smoke_fx"), 36);
fire_hit_fx = hit_fx_create(sprite_get("fire_hit_fx"), 24);
fire_hit_fx_large = hit_fx_create(sprite_get("fire_hit_fx_large"), 24);
tankbreak1 = hit_fx_create(sprite_get("tankbreak1"), 14);
tankbreak2 = hit_fx_create(sprite_get("tankbreak2"), 14);
fuel_trail_particle = hit_fx_create(sprite_get("fuel_trail_particle"), 12);
grab_fx = hit_fx_create(sprite_get("grab_fx"), 14);

//smash brothers funnies
grabbed_player_obj = noone;
grabbed_player_relative_x = 0;
grabbed_player_relative_y = 0;

// afterimage
afterImageTimer = 0;
afterImageMax = 16;
afterImage = array_create(afterImageMax, -1);
afterImageindex = noone;

// field gain fuel effect
fieldGainTimer = 22;
fieldGain = {x:0, y:0, timer:0};

// transcend
transphobia = true; //bruh!! :laughing crying emoji:
transcounter = 0;


//Workshop Compatability


plushForAmber = sprite_get("fumo");
wily_robotmaster_img = sprite_get("willywonka");
tcoart = sprite_get("tcoart");
guiltySprite = sprite_get("amongus2");
Hikaru_Title = "Halved Hellbringer";

//Callie (currently not implemented)
Chatting = true;
DG_portrait = sprite_get("DG_portrait"); 
var DG_page = 0; 
		
// Page 0
	DG_page = 0;										// Defines the next page
	DG_chat_type[DG_page] = 1; 							// 1, Option select.. 2, More dialogue... 3, Ends dialogue

	DG_adopts_color_left[DG_page] = true;   			// If true, the left portrait will adopt the color alt of the character on screen
	DG_adopts_color_right[DG_page] = true; 			// If true, the right portrait will adopt the color alt of the character on screen

	DG_left_strip[DG_page] = round(0.49+get_player_color(player)/50);  						// The strip number of the sprite portrait for the left side of the visual
	DG_right_strip[DG_page] = 0; 						// The strip number of the sprite portrait for the right side of the visual
	
	DG_custom_left_portrait[DG_page] = true;  			// If true, uses custom character portrait sprites on the left side
	DG_custom_right_portrait[DG_page] = false; 			// If true, uses custom character portrait sprites on the right side

	// Dialogue of the character on the Left Side
	DG_dialogue[DG_page] = "Select an option!
							
							Page 0";
	
	// Dialogue to select for the character on the Right Side
	DG_options[DG_page] =  "This option goes to Page 0
				This option repeats this question, Page 1
				This option goes to next Page, Page 2";	

	DG_answers[DG_page] = [0, 1, 2]; 					// The page their respective answers should point to

	DG_nextindex[DG_page] = 1;  						// The Next page the dialogue should point to