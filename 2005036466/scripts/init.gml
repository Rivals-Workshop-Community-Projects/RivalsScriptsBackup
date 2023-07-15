grabbedid = noone;

// moll.o
wearing_hat = (get_player_color(player) == 6 && get_match_setting(SET_SEASON) == 3);
fx_sprites[1] = hit_fx_create(sprite_get("halloweencostumetoss"), 30);

//
guiltySprite = sprite_get("guiltySprite");

// C4
mine = noone;
penny_dair_used = 0;

backwards_held = false;
forwards_held = false;
pen_prev_attack = AT_JAB;

penny_charge_r = get_color_profile_slot_r(get_player_color(player), 3);
penny_charge_g = get_color_profile_slot_g(get_player_color(player), 3);
penny_charge_b = get_color_profile_slot_b(get_player_color(player), 3);
penny_charge_col = make_color_rgb(penny_charge_r, penny_charge_g, penny_charge_b);

penny_particles = ds_list_create();

opponent_strapped = false;
mine_id = 0;
opponentx = 0;
opponenty = 0;

pen_can_det = 0;

penny_strapped = false;
strapped_id = noone;
penny_is_charged = false;
penny_charge_timer = 0;
penny_charge_time_max = 180;
penny_charged_id = noone;

penny_autodet = false;
penny_install = false;
penny_strapped = false;
mine_player = noone;
pen_mine_indi_sound = false;
pen_mine_unstable = false;

col_oth		= 255;
col_penc4	= make_color_rgb(255, col_oth, col_oth);

pen_didairdash = false;

//Variables for when strapped mine is primed and the timer is ticking before it blows.
goboom = false;
boomtimer = 0;
boommax = 100;
boomstuff = true;

mineblinkspeed = 0;

mine_active = 0;
cooldown_mine = 0;
cooldown_mine_max = 120;

penny_taunt_spr 		= asset_get("empty_sprite");
penny_taunt_spr_white	= asset_get("empty_sprite");

switch(get_player_color(player)){
	case 12:
		c4beepsound = sound_get("sfx_gameboybeeps");
		break;
	default:
		c4beepsound = sound_get("sfx_c4beeps");
		break;
}

taunt_ready = 0;

//Basic movement shtuff.
hurtbox_spr = sprite_get("penny_hurt");
crouchbox_spr = sprite_get("pennycrouch_hurt");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 60;
idle_anim_speed = .125;
crouch_anim_speed = .1;
walk_anim_speed = .175;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

crawl_speed = 2.5;
crawlback_speed = 1.5;

walk_speed = 3;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 12;
initial_dash_speed = 7;
dash_speed = 6.35;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .35;
moonwalk_accel = 1.2;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 5.5;
djump_speed = 11.5;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 6; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 4; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .65; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 34; //the number of frames to play the djump animation. Can't be less than 31.
wall_frames = 2;
walljump_hsp = 6;
walljump_vsp = 10;
walljump_time = 32;
max_fall = 10; //maximum fall speed without fastfalling
fast_fall = 15; //fast fall speed
gravity_speed = .6;
hitstun_grav = .5;
knockback_adj = .98; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 6; //normal landing frames
prat_land_time = 10;
wave_land_time = 8;
wave_land_adj = 1.325; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .1; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 5;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 4;

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
air_dodge_active_frames = 3;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 2;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 2;
roll_back_active_frames = 3;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land_heavy");
waveland_sound = sound_get("sfx_waveland");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

// VFX
vfx_dair =				hit_fx_create(sprite_get("vfx_dair"), 18);
vfx_fspecialvanish =	hit_fx_create(sprite_get("vfx_fspecialvanish"), 12);
vfx_dspecchargeexplo =	hit_fx_create(sprite_get("vfx_dspecialchargeexplosion"), 60);
vfx_dspecchargeexp =	hit_fx_create(sprite_get("vfx_dspecialchargeexplosion"), 30);

// Hit Effects
vfx_fspecialhit = hit_fx_create(sprite_get("vfx_fspecialhit"), 21);
vfx_penstronghit = hit_fx_create(sprite_get("vfx_plasmastrong"), 28);

//Colours
resetcolours = 1;
hue = 0;

charged_col_time = 0;
charged_updown = 0;

// Stage Stuff
stagedata_stuff = get_stage_data( SD_ID );
shadowloxo = false;

// Otto Support
otto_bobblehead_sprite = sprite_get("penny_bobblehead");

//TCO Support
tcoart = sprite_get("tcoart");

// Arena Text
arena_title = "The Conduit of Rebellion";

// Battle Text
battle_text = "* A dog blocks the way!";
battle_text2 = " ";
battle_text3 = " ";

//Hikaru
Hikaru_Title = "Liquid Penny";

//Miiverse
miiverse_post = sprite_get("pennymiiverse");

// Trummel
trummelcodecneeded = false;
trummelcodec_id = noone;
page = 0;

// Codec

codecbg_timer = 0;
bwoop_timer = 0;
animate = 0; // DO NOT TOUCH
animate_lipflaps = 0;
animate_blink = 0;
codectimerbs = 0;

// These animate the sprites
blink = 0;
lipflaps = 0;
lipflaps2 = 0;

codec_visible = 0;
codec_active = 0; // set to 1 if it's on, 2 means it's active, set to 3 turn it off.
bwoop_visible = 0;
faces_visible = false;
begin_speaking = false;

// Actually important shit for codecs
penny_speaker = 0; // 0 means nobody, 1 means Penny, 2 means speaker 2

// Codec Information
panel = 0;
maxpanels = 0;
speaker1 = "penny";
speaker2 = "forza";              //Options are: Forza, Static, Aigis, and Hime
subject = 0;
subjects = [];
codec_panels = [];

//opponentsurl = 0;

knockout = false;

// Codec
num_players = 0;
with (asset_get("oPlayer")){
    other.num_players++;
}

set_victory_theme(sound_get("penny_victory"));
set_victory_bg(sprite_get("pennyvictorybg"))



/*
codectext = "Hello, hello? Uh, I wanted to record a message for you to help you get settled in on your first night. Um, I actually worked in that office before you. I'm finishing up my last week now, as a matter of fact. So, I know it can be a bit overwhelming, but I'm here to tell you there's nothing to worry about. Uh, you'll do fine. So, let's just focus on getting you through your first week. Okay? Uh, let's see, first there's an introductory greeting from the company that I'm supposed to read. Uh, it's kind of a legal thing, you know. Um, Welcome to Freddy Fazbear's Pizza. A magical place for kids and grown-ups alike, where fantasy and fun come to life. Fazbear Entertainment is not responsible for damage to property or person. Upon discovering that damage or death has occurred, a missing person report will be filed within 90 days, or as soon property and premises have been thoroughly cleaned and bleached, and the carpets have been replaced. Blah blah blah, now that might sound bad, I know, but there's really nothing to worry about. Uh, the animatronic characters here do get a bit quirky at night, but do I blame them? No. If I were forced to sing those same stupid songs for twenty years and I never got a bath? I'd probably be a bit irritable at night too. So, remember, these characters hold a special place in the hearts of children and we need to show them a little respect, right? Okay. So, just be aware, the characters do tend to wander a bit. Uh, they're left in some kind of free roaming mode at night. Uh...Something about their servos locking up if they get turned off for too long. Uh, they used to be allowed to walk around during the day too. But then there was The Bite of '87. Yeah. I-It's amazing that the human body can live without the frontal lobe, you know? Uh, now concerning your safety, the only real risk to you as a night watchman here, if any, is the fact that these characters, uh, if they happen to see you after hours probably won't recognize you as a person. They'll p-most likely see you as a metal endoskeleton without its costume on. Now since that's against the rules here at Freddy Fazbear's Pizza, they'll probably try to...forcefully stuff you inside a Freddy Fazbear suit. Um, now, that wouldn't be so bad if the suits themselves weren't filled with crossbeams, wires, and animatronic devices, especially around the facial area. So, you could imagine how having your head forcefully pressed inside one of those could cause a bit of discomfort...and death. Uh, the only parts of you that would likely see the light of day again would be your eyeballs and teeth when they pop out the front of the mask, heh. Y-Yeah, they don't tell you these things when you sign up. But hey, first day should be a breeze. I'll chat with you tomorrow. Uh, check those cameras, and remember to close the doors only if absolutely necessary. Gotta conserve power. Alright, good night."
*/

codectext = "If this is displaying, the text system has broken."

// For Codecs
instance_create(x, y, "obj_article1");