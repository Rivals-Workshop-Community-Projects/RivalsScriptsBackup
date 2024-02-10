debug = 0;

small_djump = true;

introTimer = -4;
//setting it to -4 should prevent the first few frames of the animation from being blocked by the screen opening. If it's slightly off, feel free to mess with it.
introTimer2 = 0;

TrailerAssets_IsBeingUsed = false;

sleep_kabrbr_index = 0;

does_exist_in_playtest_SleepKirby = 0;

is_in_playtest = (object_index == oTestPlayer)

hitplayerdamage = 0;

idle_sleep_time = 0;
idle_sleep_tick = 0;
idle_sleep_time_specific = 4;

crouch_timer = 0;

jab_is_jabbing = false;

dattack_sfx_timer = 0;

dtilt_started_on_ground = true;

nair_loop = 0;

fstrong_charge = -4;

ustrong_image_thingy = 0;

damage_dealt = 0;

ability_star_hit_fx = hit_fx_create(sprite_get("ability_star_hit_fx"), 27);

pillow_hit_fx_sml = hit_fx_create(sprite_get("pillow_hit_fx_sml"), 27);
pillow_hit_fx_med = hit_fx_create(sprite_get("pillow_hit_fx_med"), 27);
pillow_hit_fx_lrg = hit_fx_create(sprite_get("pillow_hit_fx_lrg"), 27);

burst_bubble_charge_count = 0
burst_bubble_is_charged = false
burst_bubble_can_move = false
burst_bubble_hit = false
burst_bubble_hud_thing_timer = 0
burst_bubble_hud_thing_timer_counter = 0
burst_bubble_hud_thing_timer_actual_tick = 0
burst_bubble_charged_vfx = hit_fx_create(sprite_get("nspecial_charged_vfx"), 18);


damageToWakeUp = 0;
isCurrSleeping = false;
sleepingTimer = 0;
damageIncrementTick = 0;
hitBySleepingAttack = false;
sleepID = noone;
sleepHatSpr = noone;
sleepHatImageTimer = 0;
sleepHatImageTimer2 = 0;
shouldWakeUp = false;
sleepHatShouldFlash = false;
shouldBounceUpFromBlastzone = false;
sleepFXspr = sprite_get("pillow_hit_fx_sml");
sleepVFX = pillow_hit_fx_sml;

NotSleepKirbyID = id

//SleepKirby_enemy_hat = oPlayer.SleepKirby_enemy_hat
//SleepKirby_enemy_hat_otherdir = oPlayer.SleepKirby_enemy_hat_otherdir

blastzone_b = get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE);

IsSleepKirby_PlayAbilityStarSFX = false

IsSleepKirby_enemy_hat = sprite_get("fspecial_enemy_hat");
IsSleepKirby_enemy_hat_otherdir = sprite_get("fspecial_enemy_hat_otherdir");
IsSleepKirby_SleepRune = false

SleepKirby_enemy_hat = sprite_get("fspecial_enemy_hat");
SleepKirby_enemy_hat_otherdir = sprite_get("fspecial_enemy_hat_otherdir");
Sleep_Meter = sprite_get("enemy_sleep_bar");

//i dont know how to code well, send help

SleepKirby_up_b_into_nspec_happened = false

essence_state_timer = 0
essence_vsp = 0
copy_essence_hit = false
essence_out = false
essences_in_use = 0
essences_max_limit = 1
essence_can_be_destroyed = true
essence_got_parried = false
copy_essence_owner = player
spawn_essence_from_rune_o = 0

currEssence = noone;

mario = 0;

hue_offset=0;
hue_speed=0.75; //change this to change the speed of the hueshift

//---------------------------------------------------------------------

// i dont remember what this variable does im gonna be honest but im not removing it because idk
shabungus = false;

hurtbox_spr = sprite_get("sleep_hurtbox");
crouchbox_spr = sprite_get("sleep_crouchbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .14;
crouch_anim_speed = .1;
walk_anim_speed = .125;
dash_anim_speed = .26;
pratfall_anim_speed = .25;

walk_speed = 2.8;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 9;
initial_dash_speed = 6.5;
dash_speed = 5.5;
dash_turn_time = 10;
dash_turn_accel = 1.8;
dash_stop_time = 6;
dash_stop_percent = .2; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.15;

jump_start_time = 5;
jump_speed = 10;
short_hop_speed = 6;
djump_speed = 8;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6 + (has_rune("E") * 3); //the maximum hsp you can have when jumping from the ground
air_max_speed = 5 + (has_rune("E") * 1); //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 4; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3 + (has_rune("E") * 0.5);

prat_fall_accel = .8; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 3 + (has_rune("E") * 4);
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
wall_frames = 2;
walljump_hsp = 5;
walljump_vsp = 8;
walljump_time = 32;
max_fall = 11; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .5;
hitstun_grav = .5;
knockback_adj = 1.1; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier >

land_time = 4; //normal landing frames
prat_land_time = 10;
wave_land_time = 8;
wave_land_adj = 1.2; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .04; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 8;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 4;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 5;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 4;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 1;
roll_back_active_frames = 4;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

//SFX Init
sfx_1up = sound_get("sfx_1up");
sfx_ability_drop = sound_get("sfx_ability_drop");
sfx_ability_get = sound_get("sfx_ability_get");
sfx_ability_star_break = sound_get("sfx_ability_star_break");
sfx_ability_star_bounce = sound_get("sfx_ability_star_bounce");
sfx_airdodge = sound_get("sfx_airdodge");
sfx_bounce = sound_get("sfx_bounce");
sfx_blow1 = sound_get("sfx_blow1");
sfx_canvas_curse_balloon_pop = sound_get("sfx_canvas_curse_balloon_pop");
sfx_canvas_curse_balloon_ready = sound_get("sfx_canvas_curse_balloon_ready");
sfx_canvas_curse_balloon_wiggle = sound_get("sfx_canvas_curse_balloon_wiggle");
sfx_canvas_curse_death = sound_get("sfx_canvas_curse_death");
sfx_charge = sound_get("sfx_charge");
sfx_charge_max = sound_get("sfx_charge_max");
sfx_charge_mid = sound_get("sfx_charge_mid");
sfx_crouch = sound_get("sfx_crouch");
sfx_dair = sound_get("sfx_dair");
sfx_dashstart = sound_get("sfx_dashstart");
sfx_dashstop = sound_get("sfx_dashstop");
sfx_death = sound_get("sfx_death");
sfx_death_laststock = sound_get("sfx_death_laststock");
sfx_death_laststock_gb = sound_get("sfx_death_laststock_gb");
sfx_doublejump = sound_get("sfx_doublejump");
sfx_empty = sound_get("sfx_empty");
sfx_fighter_blow1 = sound_get("sfx_fighter_blow1");
sfx_fighter_swipe1 = sound_get("sfx_fighter_swipe1");
sfx_hammer_swipe_spin = sound_get("sfx_hammer_swipe_spin");
sfx_hammer_swipe1 = sound_get("sfx_hammer_swipe1");
sfx_hammer_swipe2 = sound_get("sfx_hammer_swipe2");
sfx_inhale = sound_get("sfx_inhale");
sfx_inhale_yes = sound_get("sfx_inhale_yes");
sfx_jump = sound_get("sfx_jump");
sfx_kirby_swipe1 = sound_get("sfx_kirby_swipe1");
sfx_kirby_swipe2 = sound_get("sfx_kirby_swipe2");
sfx_kirby_swipe3 = sound_get("sfx_kirby_swipe3");
sfx_kssu_hp_up = sound_get("sfx_kssu_hp_up");
sfx_land = sound_get("sfx_land");
sfx_landinglag = sound_get("sfx_landinglag");
sfx_parry = sound_get("sfx_parry");
sfx_slide = sound_get("sfx_slide");
sfx_smash_bros_crack = sound_get("sfx_smash_bros_crack");
sfx_smash64_blow_med = sound_get("sfx_smash64_blow_med");
sfx_smash64_swipe_med = sound_get("sfx_smash64_swipe_med");
sfx_step = sound_get("sfx_step");
sfx_swallow = sound_get("sfx_swallow");
sfx_swipe1 = sound_get("sfx_swipe1");
sfx_swipe2 = sound_get("sfx_swipe2");
sfx_swipe3 = sound_get("sfx_swipe3");
sfx_teleport = sound_get("sfx_teleport");
sfx_waveland = sound_get("sfx_waveland");
sfx_waveland2 = sound_get("sfx_waveland2");

//sound_play(asset_get("sfx_charge_blade_swing"), false, noone, 0.8, 1);

land_sound = sfx_land
landing_lag_sound = sfx_landinglag
waveland_sound = sfx_waveland
jump_sound = sfx_jump
djump_sound = sfx_doublejump
air_dodge_sound = sfx_airdodge

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

if (get_player_color( player ) != 6 && get_player_color( player ) != 7){
	set_victory_theme(sound_get("victory"));
}

if (get_player_color( player ) != 7 && get_player_color( player ) != 17){
	set_victory_portrait( sprite_get( "portrait" ));
	set_victory_sidebar( sprite_get( "result_small" ));
}

switch (get_player_color( player )){
	case 6:
		set_victory_theme(sound_get("victory_shadow"));
		break;
	case 7:
		set_victory_theme(sound_get("victory_ea"));
		set_victory_portrait( sprite_get( "portrait_ea" ));
		set_victory_sidebar( sprite_get( "result_small_ea" ));
		break;
	case 17:
		set_victory_portrait( sprite_get( "portrait_gold" ));
		set_victory_sidebar( sprite_get( "result_small_gold" ));
		break;
	case 23:
		set_victory_portrait( sprite_get( "portrait_tas" ));
		set_victory_sidebar( sprite_get( "result_small_tas" ));
		break;
}

diag_portrait = sprite_get("portrait"); // This will allow you to put any custom portrait onto the dialogue buddy!

//Compatability

// Otto bobblehead.
otto_bobblehead_sprite = sprite_get("otto");

// Steve death message.
steve_death_message = "Steve got sent to Dream Land";

// Link spear. (determines which spear your char will drop the first time)
link_spear_drop = 3;

Hikaru_Title = "Soundly Sleeping Star";

ncode1 = "The Pink Demon from Dream Land.";
ncode2 = "Carries the Sleep Ability.";
ncode3 = "Do not be fooled by it: stay on guard.";

arena_title = "Sleeping Star Warrior";
arena_short_name = "Sleep Kirby";

battle_text = "* You start to feel drowsy just by looking at that creature.";

has_fail = true;
fail_text = "Guess you shouldnt have slept on this character.";

gfzsignspr = sprite_get("gfz")

tcoart = sprite_get("tco_sketch");

sprite_change_offset("miiverse", 60, 30);
miiverse_post = sprite_get("miiverse");

// Po & Gumbo Food
pot_compat_variable = sprite_get("gumbo_food");
pot_compat_text = "Strawberry Shortcake";

user_event(7);