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

if (alt == 2 || alt == 3 || alt == 4 ||
    alt == 7 || alt == 13 || alt == 14 || alt == 15) {
	use_ex_sprites = true;
	var is_ex = "_ex";
	set_ui_element(UI_HUD_ICON, sprite_get("hud_ex"));
	set_ui_element(UI_HUDHURT_ICON, sprite_get("hudrt_ex"));
	set_ui_element(UI_WIN_SIDEBAR, sprite_get("result_small_ex"));
	set_ui_element(UI_WIN_PORTRAIT, sprite_get("portrait_ex"));
} else {
	use_ex_sprites = false;
	var is_ex = "";
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

// --- Character Compat ---
//Toonlink Support
if(get_player_color(player) == 0) {
	toonlink_photo = sprite_get("tl_photo_def");
} else {
	toonlink_photo = sprite_get("tl_photo" + is_ex);
}
toonlink_photo2 = 0;

// --- Stage Compat --- 
//Dracula support
dracula_portrait = sprite_get("cutscene_portrait" + is_ex);
dracula_portrait2 = asset_get("empty_sprite")
var page = 0;

//Page 0
dracula_speaker[page] = 0;
dracula_text[page] = "So, it seems we have another mortal enter the Devil's Castle throne room?";
page++;

//Page 1
dracula_speaker[page] = 1;
dracula_text[page] = "Dracula! You-!";
page++;

//Page 2
dracula_speaker[page] = 1;
dracula_text[page] = "What's the big idea sproutin' your castle up in the worst spot at the worst time?!";
page++;

//Page 3
dracula_speaker[page] = 1;
dracula_text[page] = "We were tearing down this old hotel, and you had to show up and take away all our work before we could get started!";
page++;

//Page 4
dracula_speaker[page] = 0;
dracula_text[page] = "You're upset with me just because my arrival demolished something you were already going to destroy?";
page++;

//Page 5
dracula_speaker[page] = 0;
dracula_text[page] = "You should be thanking me for making your work easier, really.
			And I would gladly accept complete surrender and servitude in return.";
page++;

//Page 6
dracula_speaker[page] = 1;
dracula_text[page] = "Surre-?! This demolition would've givin' us a fortune! This is a HUGE building we were gonna take down!";
page++;

//Page 7
dracula_speaker[page] = 1;
dracula_text[page] = "But noOOoo! You had to show up and take away our fortune!";
page++;

//Page 8
dracula_speaker[page] = 1;
dracula_text[page] = "So I think it's fair I bring this rotten dungeon to dust instead, you bat-breathed joker!";
page++;

//Page 9
dracula_speaker[page] = 0;
dracula_text[page] = "[shake]Excuse me?!![glass] Not only do you enter uninvited, but you dare offend me and my domain with such a disrespectful comment?!";
page++;

//Page 10
dracula_speaker[page] = 0;
dracula_text[page] = "You have just sealed your fate, rebellious worker!";
page++;

//Page 11
dracula_speaker[page] = 1;
dracula_text[page] = "Oh, yeah? Well, this worker is built for blowing up more then just buildings! Get wrecked!!";
page++;

// Outskirts Invasion 
draw_hud_event = 5;
hit_player_event = 6;

// --- Buddy Compat --- 
/*if (alt == 0) {
	buddy_starko_sprite = sprite_get("starko_def");
	buddy_screenko_sprite = sprite_get("screenko_def");
} else {*/
	buddy_starko_sprite = sprite_get("starko" + is_ex);
	buddy_screenko_sprite = sprite_get("screenko" + is_ex);
//}
