hurtbox_spr = sprite_get("peashooter_hurtbox");
crouchbox_spr = sprite_get("crouchbox");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 52;
idle_anim_speed = .2;
crouch_anim_speed = .2;
walk_anim_speed = .1;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.5;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 8;
initial_dash_speed = 6.5;
dash_speed = 6.5;
dash_turn_time = 10;
dash_turn_accel = 1.5;
dash_stop_time = 8;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .5;
moonwalk_accel = 1.4;

jump_start_time = 5;
jump_speed = 11;
short_hop_speed = 7;
djump_speed = 13;
leave_ground_max = 6; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .75; //multiplier of air_accel while in pratfall
air_friction = .03;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 13;
walljump_time = 32;
max_fall = 9; //maximum fall speed without fastfalling
fast_fall = 13; //fast fall speed
gravity_speed = .65;
hitstun_grav = .5;
knockback_adj = 1.05; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 12;
wave_land_time = 8;
wave_land_adj = 1.35; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .12; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 6;
crouch_active_frames = 24;
crouch_recovery_frames = 11;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 2;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1;
techroll_active_frames = 3;
techroll_recovery_frames = 2;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 2;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = asset_get("sfx_land_light");
landing_lag_sound = asset_get("sfx_land");
waveland_sound = asset_get("sfx_waveland_zet");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 0;

set_victory_bg(sprite_get("winbg"));
if (get_player_color(player) == 17) || (get_player_color(player) == 18){
	set_victory_theme(sound_get("finalfanfare"));
} else {
	set_victory_theme( sound_get( "winmusic" ));
}

set_ui_element(UI_WIN_PORTRAIT, sprite_get("portrait"));
set_ui_element(UI_HUD_ICON, sprite_get("hud"));
set_ui_element(UI_HUDHURT_ICON, sprite_get("hudhurt"));
set_ui_element(UI_OFFSCREEN, sprite_get("offscreen"));
set_ui_element(UI_CHARSELECT, sprite_get("charselect"));
set_ui_element(UI_WIN_SIDEBAR, sprite_get("result_small"));
switch get_player_color(player){
	case 7:
        set_ui_element(UI_WIN_PORTRAIT, sprite_get("gb_portrait"));
        set_ui_element(UI_WIN_SIDEBAR, sprite_get("gb_result_small"));
	break;
	case 16:
        set_ui_element(UI_WIN_PORTRAIT, sprite_get("cosmic_portrait"));
        set_ui_element(UI_HUD_ICON, sprite_get("cosmic_hud"));
        set_ui_element(UI_HUDHURT_ICON, sprite_get("cosmic_hurt"));
        set_ui_element(UI_OFFSCREEN, sprite_get("cosmic_offscreen"));
        set_ui_element(UI_CHARSELECT, sprite_get("cosmic_charselect"));
        set_ui_element(UI_WIN_SIDEBAR, sprite_get("cosmic_result_small"));
	break;
}

firepea_sprite = sprite_get("pea_torched");
nspecial_charge = 0;
boom = false;
bean_x = 0;
bean_y = 0;

bean_bomb_recharge = 0;
torchwood_recharge = 0;
alert_text_timer = 0;

airraid_used = false;
hover_used = false;
hover_pratfall = false;
hover_store_jump = -1;
wait_time = 600;
wait_length = 90;
wait_sprite = sprite_get("wait");
wait_what = 0;

playtest = (object_index == oTestPlayer);
practice_mode = false;

kirbyability = 16
copy_ability_id = 64
fs_char_chosen_final_smash = "custom";
fs_char_portrait_y = 110;
mamizou_transform_spr = sprite_get("helpless");
pot_compat_variable = sprite_get("food");
pot_compat_text = "Roasted Sugar Snap Peas"
arena_title = "The Garden's First Defender";
swallowed = 0;
enemykirby = 0;
knight_compat_dream = 
    [
        "...peas...was never an option...",
        "...peased...to meet you...",
        "...many...forms..."
    ]

user_event(0);