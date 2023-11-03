crouch_timer = 0; //used for timing the sfx on walk

jab_parried = false;

fstrong_land_timer = 0; //used for timing the land vfx and sfx on fstrong
ustrong_land_timer = 0; //used for timing the land vfx and sfx on ustrong

nspecial_charged = false; //used to check if nspec was held, and thus, gives increased speed

waterProjX = 0;
waterProjY = 0;
waterProjDead = false;

dspecial_holding_vac_no_angle_selected = 0;
throw_angle = 45;
vacuum = noone;
vacuum_grab = false;
vacuum_myself = false;
vacuum_direction = 0;

has_hit_someone_for_first_time_with_dspec = false;

with(oPlayer){
	grabbed_by_vac = false;
	timeToLive = 0;
}
grabbed_by_vac = false;
timeToLive = 0;

hue_offset=0;
hue_speed=1.25; //change this to change the speed of the hueshift

hurtbox_spr = sprite_get("broom_hatter_hurtbox");
crouchbox_spr = sprite_get("broom_hatter_crouchbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .1;
crouch_anim_speed = .1;
walk_anim_speed = .19;
dash_anim_speed = .3;
pratfall_anim_speed = .25;

walk_speed = 3.25;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 9;
initial_dash_speed = 7;
dash_speed = 5.5;
dash_turn_time = 16;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .6; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 6;
djump_speed = 10;
leave_ground_max = 5.5; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4.5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .2;
prat_fall_accel = .8; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
wall_frames = 2;
walljump_hsp = 5.5;
walljump_vsp = 8;
walljump_time = 32;
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .5;
hitstun_grav = .5;
knockback_adj = 1.05; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier >

land_time = 4; //normal landing frames
prat_land_time = 12;
wave_land_time = 8;
wave_land_adj = 1.25; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 3;
crouch_active_frames = 1;
crouch_recovery_frames = 3;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 6;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 2;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 4;
techroll_recovery_frames = 3;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 2;
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 3;
roll_forward_active_frames = 5;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 2;
roll_back_active_frames = 4;
roll_back_recovery_frames = 3;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

//VFX Init
water_proj_land_vfx = hit_fx_create(sprite_get("water_proj_land_vfx"), 27);
water_proj_travel_vfx = hit_fx_create(sprite_get("water_proj_travel_vfx"), 6);
water_trail_vfx = hit_fx_create(sprite_get("water_trail_vfx"), 18);

fspecial_nago_throw_vfx = hit_fx_create(sprite_get("fspecial_nago_throw"), 24);
fspecial_nago_throw_ea_vfx = hit_fx_create(sprite_get("fspecial_nago_throw_ea"), 24);
fspecial_nago_throw_gold_vfx = hit_fx_create(sprite_get("fspecial_nago_throw_gold"), 24);

uspecial_star_vfx = hit_fx_create(sprite_get("uspecial_trail_vfx_star"), 16);
uspecial_sparkle_vfx = hit_fx_create(sprite_get("uspecial_trail_vfx_sparkle"), 16);

//SFX Init
sfx_1up = sound_get("sfx_1up");
sfx_air_ride_quick_spin = sound_get("sfx_air_ride_quick_spin");
sfx_air_ride_quick_spin_short = sound_get("sfx_air_ride_quick_spin_short");
sfx_airdodge = sound_get("sfx_airdodge");
sfx_bounce = sound_get("sfx_bounce");
sfx_blip = sound_get("sfx_blip");
sfx_blow1 = sound_get("sfx_blow1");
sfx_charge = sound_get("sfx_charge");
sfx_charge_max = sound_get("sfx_charge_max");
sfx_charge_mid = sound_get("sfx_charge_mid");
sfx_crouch = sound_get("sfx_crouch");
sfx_dashstop = sound_get("sfx_dashstop");
sfx_death = sound_get("sfx_death");
sfx_doublejump = sound_get("sfx_doublejump");
sfx_empty = sound_get("sfx_empty");
sfx_fighter_blow1 = sound_get("sfx_fighter_blow1");
sfx_fighter_swipe1 = sound_get("sfx_fighter_swipe1");
sfx_friend_bounce = sound_get("sfx_friend_bounce");
sfx_jump = sound_get("sfx_jump");
sfx_kirby_swipe1 = sound_get("sfx_kirby_swipe1");
sfx_kirby_swipe2 = sound_get("sfx_kirby_swipe2");
sfx_kirby_swipe3 = sound_get("sfx_kirby_swipe3");
sfx_krdl_dashstart = sound_get("sfx_krdl_dashstart");
sfx_kssu_hp_up = sound_get("sfx_kssu_hp_up");
sfx_land = sound_get("sfx_land");
sfx_landinglag = sound_get("sfx_landinglag");
sfx_parry = sound_get("sfx_parry");
sfx_krdl_item_grab = sound_get("sfx_krdl_item_grab");
sfx_krdl_item_throw = sound_get("sfx_krdl_item_throw");
sfx_krdl_menu_move = sound_get("sfx_krdl_menu_move");
sfx_krdl_water_hit = sound_get("sfx_krdl_water_hit");
sfx_krdl_water_use = sound_get("sfx_krdl_water_use");
sfx_slide = sound_get("sfx_slide");
sfx_step = sound_get("sfx_step");
sfx_stomp = sound_get("sfx_stomp");
sfx_star_allies_clean_chuchu = sound_get("sfx_star_allies_clean_chuchu");
sfx_star_allies_clean_chuchu_end = sound_get("sfx_star_allies_clean_chuchu_end");
sfx_star_allies_clean_nago = sound_get("sfx_star_allies_clean_nago");
sfx_star_allies_clean_pitch_swipe = sound_get("sfx_star_allies_clean_pitch_swipe");
sfx_star_allies_clean_pitch_swipe_charged = sound_get("sfx_star_allies_clean_pitch_swipe_charged");
sfx_star_allies_clean_pitch_water = sound_get("sfx_star_allies_clean_pitch_water");
sfx_star_allies_clean_pitch_water_charged = sound_get("sfx_star_allies_clean_pitch_water_charged");
sfx_star_allies_clean_vac_suck = sound_get("sfx_star_allies_clean_vac_suck");
sfx_star_allies_clean_vac_throw = sound_get("sfx_star_allies_clean_vac_throw");
sfx_star_allies_cleaning_swipe_1 = sound_get("sfx_star_allies_cleaning_swipe_1");
sfx_star_allies_cleaning_swipe_2 = sound_get("sfx_star_allies_cleaning_swipe_2");
sfx_star_allies_cleaning_swipe_3 = sound_get("sfx_star_allies_cleaning_swipe_3");
sfx_star_allies_cleaning_swipe_flick = sound_get("sfx_star_allies_cleaning_swipe_flick");
sfx_star_allies_friend_join = sound_get("sfx_star_allies_friend_join");

sfx_waveland = sound_get("sfx_waveland");
sfx_waveland2 = sound_get("sfx_waveland2");

//Victory Theme
set_victory_theme(sound_get("victory"));

//Common Sounds Init
land_sound = sfx_land;
landing_lag_sound = sfx_landinglag;
waveland_sound = sfx_waveland;
jump_sound = sfx_jump;
djump_sound = sfx_doublejump;
air_dodge_sound = sfx_airdodge;

set_victory_portrait( sprite_get( "portrait" ));
set_victory_sidebar( sprite_get( "result_small" ));

gb_alt = (get_player_color(player) == 7);
gold_alt = (get_player_color(player) == 17);

switch (get_player_color( player )){
	case 0:
		
		break;
	case 1:
	
		break;
	case 2:
	
		break;
	case 3:
	
		break;
	case 4:
	
		break;
	case 5:
	
		break;
	case 6:
		break;
	case 7:
		set_victory_portrait( sprite_get( "portrait_ea" ));
		set_victory_sidebar( sprite_get( "result_small_ea" ));
		break;
	case 8:
	
		break;
	case 9:
	
		break;
	case 10:
	
		break;
	case 11:
	
		break;
	case 12:
	
		break;
	case 13:
	
		break;
	case 14:
	
		break;
	case 15:
	
		break;
	case 16:
	
		break;
	case 17:
		set_victory_portrait( sprite_get( "portrait_gold" ));
		set_victory_sidebar( sprite_get( "result_small_gold" ));
		break;
	case 18:
	
		break;
	case 19:
	
		break;
	case 26:
		set_victory_portrait( sprite_get( "portrait_dl3" ));
		set_victory_sidebar( sprite_get( "result_small_dl3" ));
		break;
}

//Visual offsets for when you're in Ranno's bubble.
bubble_x = 0;
bubble_y = 8;

//Compatability

TCG_Kirby_Copy = 9;

otto_bobblehead_sprite = sprite_get("otto");
steve_death_message = "Steve could not keep it clean";
link_spear_drop = 3;
Hikaru_Title = "Spring Cleaning";
//personaQuips[10] = "GOAL!";
//tcoart = sprite_get("tco_sketch");
ncode1 = "A resident of Dream Land.";
ncode2 = "Has tendencies to clean everything in sight.";
ncode3 = "Best idea would to distract her.";
arena_title = "Gratuitous Floorsweeper";
arena_short_name = "Broom Hatter";
battle_text = "* Broom Hatter cleans up into the fray!.";
//has_fail = true;
//fail_text = "Fall out!";
//gfzsignspr = sprite_get("gfz")

//Rune Stuff

dtiltRune = has_rune("A");
jabRune = has_rune("B");
dairRune = has_rune("C");
fspecDistanceRune = has_rune("D");
windRune = has_rune("E");
uspecialBoostRune = has_rune("F");
additionalNspecChargeRune = has_rune("G");
ustrongJumpRune = has_rune("H");
fspecialJumpRune = has_rune("I");
fspecJumpSavedHsp = 0;
fspecJumpRuneInputted = false;
nspecialProjDropletRune = has_rune("M");