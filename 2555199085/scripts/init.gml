/*
Sunflower - Gives you upto 3 sun that can be used to by pass the cooldown - 3 Sun Solar Beam
Peashooter - Good Combo extendered
Squash - Edge guarding Spike and tech scenario
Ice - Allows for combo finishers
Bonk - Edge Guarding at the small cost of your specials
Cherry Bomb - Devasating Punisher / Combo Ender
Bean - Launcher that allows for an aerial follow updateCommands
Reed - Used for Jump "Reed"  and combo extensions for aerials and plats
*/



plantMenuSpacing = 5
platnMenuSpacingTwo = .75 //Corners
plantMenuSpacingThree = 2 //Initial Spacing
plantMenuEndFrame = 11
plantMenuOpacity = .9 //Selected
plantMenuOpacityTwo = .5 //Normal

plantSelection = 1
plant[0] = -4
plantCooldown = 0
plantMaxCooldown = 0
plantSun = 0
plantRespawn = 0
nspecialTimer = 0
plantAttack  = 0

hud_color = get_player_hud_color(player);

//plantData[#] = 
plantData[0] = [5, 5, 5, 5, 5, 10, 5, 5] //Sun
//plantData[0] = [5, 5, 5, 10, 10, 10, 10, 10] //Solar Beam
plantData[1] = [3, 3, 3, 5, 3, 5, 5, 5] //Pea
plantData[2] = [15, 15, 8, 8, 3, 3, 120,6] //Squash
plantData[3] = [5, 5, 5, 3, 3, 3, 120, 6]  //Ice
plantData[4] = [3, 3, 6, 3, 3, 6, 6, 6] //Bonk
plantData[5] = [3, 3, 3, 3, 3, 3, 150, 5] //Cherry
plantData[6] = [3, 9, 3, 5, 5, 6, 90, 9] //Bean
plantData[7] = [2, 2, 7, 7, 7, 7, 10, 10] //Reed


plantCool[0] = [150, 45, 30, 60, 60, 180, 30, 60] //CoolDown
stickDir = 0




switch(get_player_color(player)) {
	case 6: //Cone
	case 8: //Imp
	case 10: //Yeti
		set_victory_theme( sound_get( "losemusic"));
	break;
	case 9: //Zomboss
		set_victory_theme( sound_get( "evillaugh"));
	break;
	case 7: //Disco
	case 8: //Disco
		set_victory_theme( sound_get( "dancer"));
	break;
	case 996: //Very Special Victory (Player Alts)
		set_victory_theme( sound_get( "finalfanfare"));
	break;
	case 12: //Super Brains
	case 14: //Rustbolt
	case 15: //The Smash
	case 16: //Immorticia
	case 17: //Professor Brainstorm
	case 18: //Green Shadow
	case 19: //Night Cap
		set_victory_theme( sound_get( "pvzHeroes"));
	break;
	case 13: //Electric Boogaloo Victory
		set_victory_theme( sound_get( "EBSpawn"));
	break;
	case 22: //May
	set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, sound_get("totsugeki"));
	break;
	default:
		set_victory_theme( sound_get( "winmusic"));
	break;
}



small_sprites = 1

hurtbox_spr = sprite_get("idle_hurt");
crouchbox_spr = sprite_get("crouch_hurt");
hurtbox_dash_spr = sprite_get("dash_hurt");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 72;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3; 
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 10;
initial_dash_speed = 6;
dash_speed = 7;
dash_turn_time = 10;
dash_turn_accel = 1.25;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 3;

jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 5;
djump_speed = 10;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .75; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 9; 
walljump_time = 32;
max_fall = 9; //maximum fall speed without fastfalling
fast_fall = 12; //fast fall speed
gravity_speed = .45;
hitstun_grav = .5;
knockback_adj = 1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, 1> = heavier

land_time = 4; //normal landing frames
prat_land_time = 14;
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
dodge_recovery_frames = 1;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 2;
techroll_recovery_frames = 1;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 1;
roll_back_startup_frames = 1;
roll_back_active_frames = 2;
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

//Muno's Rune conversion Code
 
runeA = has_rune("A");
runeB = has_rune("B");
runeC = has_rune("C");
runeD = has_rune("D");
runeE = has_rune("E");
runeF = has_rune("F");
runeG = has_rune("G");
runeH = has_rune("H");
runeI = has_rune("I");
runeJ = has_rune("J");
runeK = has_rune("K");
runeL = has_rune("L");
runeM = has_rune("M");
runeN = has_rune("N");
runeO = has_rune("O");
