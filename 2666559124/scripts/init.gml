hurtbox_spr = sprite_get("hurtbox");
crouchbox_spr = asset_get("ex_guy_hurt_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

alt = get_player_color(player);
char_height = 60;
idle_anim_speed = .150;
crouch_anim_speed = .2;
walk_anim_speed = .2;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 2.50;
walk_accel = 0.2;
walk_turn_time = 8;
initial_dash_time = 14;
initial_dash_speed = 6;
dash_speed = 6;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 4;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 6;
jump_speed = 12;
short_hop_speed = 6;
djump_speed = 11;
leave_ground_max = 7; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .02;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 5;
walljump_vsp = 8;
walljump_time = 32;
max_fall = 14; //maximum fall speed without fastfalling
fast_fall = 18; //fast fall speed
gravity_speed = .7;
hitstun_grav = .6;
knockback_adj = 0.7; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 7;
wave_land_time = 8;
wave_land_adj = 1.15; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .02; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 2;
crouch_active_frames = 1;
crouch_recovery_frames = 2;

//parry animation frames
dodge_startup_frames = 2;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 3;

//tech roll animation frames
techroll_startup_frames = 2
techroll_active_frames = 2;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 2;
roll_forward_recovery_frames = 3;
roll_back_startup_frames = 1;
roll_back_active_frames = 2;
roll_back_recovery_frames = 3;
roll_forward_max = 8; //roll speed
roll_backward_max = 8;

land_sound = asset_get("sfx_land_med");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;

set_victory_bg(sprite_get("victory_bg"));
set_victory_theme( sound_get("victory_theme"));

my_barrel = noone;
if (alt == 0) {
	barrel_dust = hit_fx_create(sprite_get("dfx_barrel_dust"), 24);
} else {
	barrel_dust = hit_fx_create(sprite_get("dfx_barrel_dust_alt"), 24);
}
barreled = false;

canBomb = true;

ai_test = 0;
ai_test_2 = 0;
ai_test_3 = false;

if (alt == 2 || alt == 3 || alt == 4 ||
    alt == 7 || alt == 13 || alt == 14 || alt == 15) {
	use_ex_sprites = true;
	set_ui_element(UI_HUD_ICON, sprite_get("hud_ex"));
	set_ui_element(UI_HUDHURT_ICON, sprite_get("hudrt_ex"));
	set_ui_element(UI_WIN_SIDEBAR, sprite_get("result_small_ex"));
	set_ui_element(UI_WIN_PORTRAIT, sprite_get("portrait_ex"));
} else {
	use_ex_sprites = false;
	set_ui_element(UI_HUD_ICON, sprite_get("hud_def"));
	set_ui_element(UI_HUDHURT_ICON, sprite_get("hudrt_def"));
	set_ui_element(UI_WIN_SIDEBAR, sprite_get("result_small_def"));
	set_ui_element(UI_WIN_PORTRAIT, sprite_get("portrait_def"));
}

if (alt == 0) {
	set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("barrel_pieces"));
} else if (alt == 15) {
	set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("barrel_gb_pieces"));
}

//Toonlink Support
if(get_player_color(player) == 0) {
	toonlink_photo = sprite_get("tl_photo_def");
} else {
	if (!use_ex_sprites) {
		toonlink_photo = sprite_get("tl_photo");
	} else {
		toonlink_photo = sprite_get("tl_photo_ex");
	}
}
toonlink_photo2 = 0;

//Dracula support
if (!use_ex_sprites) {
	dracula_portrait = sprite_get("cutscene_portrait");
} else {
	dracula_portrait = sprite_get("cutscene_portrait_ex");
}
dracula_portrait2 = asset_get("empty_sprite")
var page = 0;

//Page 0
dracula_speaker[page] = 0;
dracula_text[page] = "Who are you supposed to be?";
page++;

//Page 1
dracula_speaker[page] = 1;
dracula_text[page] = "Oh, I'm just a contruction worker who has a job to do.";
page++;

//Page 2
dracula_speaker[page] = 1;
dracula_text[page] = "So, we're supposed to build a very fancy hotel here and your castle came out of nowhere.";
page++;

//Page 3
dracula_speaker[page] = 1;
dracula_text[page] = "I happened to be picked to see if anyone lives here. And I was surprised to see that you have zombies and skeletons and other random things.";
page++;

//Page 4
dracula_speaker[page] = 1;
dracula_text[page] = "You are the owner of this place right?";
page++;

//Page 5
dracula_speaker[page] = 0;
dracula_text[page] = "You really think you can just ask me and my slaves to leave my own domain?";
page++;

//Page 6
dracula_speaker[page] = 0;
dracula_text[page] = "You don't even know who I am, do you? I am Dracula, the Prince of Darkness. And I'm not allowing anyone to destroy my castle.";
page++;

//Page 7
dracula_speaker[page] = 1;
dracula_text[page] = "Welp, if your gonna be like that, I'm gonna have take things by force.";
page++;

//Page 8
dracula_speaker[page] = 1;
dracula_text[page] = "I'll just leave and tell my te-";
page++;

//Page 9
dracula_speaker[page] = 0;
dracula_text[page] = "You're not going anywhere.[glass] I'm not letting a single one of you destruction experts touch my castle with your greasy mallets.";
page++;

//Page 10
dracula_speaker[page] = 0;
dracula_text[page] = "So allow me to slay the rest of your team after I kill you first.";
page++;


//Daroach support
daroach_portrait = sprite_get("cutscene_portrait");
daroach_portrait2 = asset_get("empty_sprite")
var page = 0;

//Page 0
daroach_speaker[page] = 0;
daroach_text[page] = "Huh? Where did you come from?";
page++;

//Page 1
daroach_speaker[page] = 1;
daroach_text[page] = "Your ship took off too late.";
page++;

//Page 2
daroach_speaker[page] = 1;
daroach_text[page] = "And you stole some important parts we need to make a fancy hotel.";
page++;

//Page 3
daroach_speaker[page] = 0;
daroach_text[page] = "I'm afraid this hotel your building is not my problem. These girders are solid gold.";
page++;

//Page 4
daroach_speaker[page] = 1;
daroach_text[page] = "Which is exactly what we need to make our hotel fancy.";
page++;

//Page 5
daroach_speaker[page] = 1;
daroach_text[page] = "So, I'm gonna have to ask you to give them back before I end up starting any rough events.";
page++;

//Page 6
daroach_speaker[page] = 0;
daroach_text[page] = "Ohohoho![laugh] Threatening me like many others would, aren't you?";
page++;

//Page 7
daroach_speaker[page] = 0;
daroach_text[page] = "Well, I'm sure the Squeak Squad will throw you overboard no matter what event you start!";
page++;

//Page 8
daroach_speaker[page] = 1;
daroach_text[page] = "What the heck is the Squeak Squad?";
page++;

//Page 9
daroach_speaker[page] = 0;
daroach_text[page] = "You just so happen to be talking to their leader.";
page++;

// *** Outskirts Invasion *** 
draw_hud_event = 5;
hit_player_event = 6;
