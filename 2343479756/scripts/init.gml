//natsumi init
/*

	!!! TABLE OF CONTENTS !!!
	
	special thanks to Shock for portrait shading and pose!!!
	special thanks to my catfriend for always being there for me
	special thanks to Dreem, Danielone, Tdude/Circleguy, Fire, and ricE for letting me use their characters for the trailer!
	special thanks to takehara minoru for creating natsumi step!
	
	you're free to use any of my *codes* here! but don't use the sprites/animations, please!
	
	- fspecial clairen-esque slash:
	-- movement in attack_update.gml
	-- location swap in hit_player.gml
	-- the "slash" visual effects in pre_draw.gml
	
	- nspecial:
	-- hit-to-bounce behavior in hitbox_update.gml
	-- pseudo-hitpause in hitbox_init.gml and hitbox_update.gml
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	-hyuponia-

*/

hurtbox_spr = asset_get("ex_guy_hurt_box");
crouchbox_spr = asset_get("ex_guy_hurt_box");
air_hurtbox_spr = -1;
hitstun_hurtbox_spr = -1;

char_height = 58;
idle_anim_speed = .12;
crouch_anim_speed = .1;
walk_anim_speed = .09;
dash_anim_speed = .2;
pratfall_anim_speed = .25;

walk_speed = 3.5;
walk_accel = 0.2;
walk_turn_time = 6;
initial_dash_time = 9;
initial_dash_speed = 7.2;
dash_speed = 6;//6.5
dash_turn_time = 6;
dash_turn_accel = 1.6;
dash_stop_time = 5;
dash_stop_percent = .5; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .4;
moonwalk_accel = 1.3;

jump_start_time = 5;
jump_speed = 11.5;
short_hop_speed = 7.5;//8
djump_speed = 10;
leave_ground_max = 7;//7 //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 5.5;//4 //the maximum hsp you can have when jumping from the ground
air_max_speed = 5;//6//5.5//5.2 //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .3;
prat_fall_accel = .85; //multiplier of air_accel while in pratfall
air_friction = .04;
max_djumps = 1;
double_jump_time = 32; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 6;
walljump_vsp = 11;//12
walljump_time = 32;
max_fall = 9.5; //maximum fall speed without fastfalling
fast_fall = 12; //fast fall speed
gravity_speed = .5;
hitstun_grav = .5;
knockback_adj = 1.08; //the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 3;
wave_land_time = 8;
wave_land_adj = 1.25; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .05; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 3;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 3;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 3;
techroll_recovery_frames = 1;
techroll_speed = 10;

//airdodge animation frames
air_dodge_startup_frames = 1;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 2;
air_dodge_speed = 7.5;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 3;
roll_forward_recovery_frames = 1;
roll_back_startup_frames = 1;
roll_back_active_frames = 3;
roll_back_recovery_frames = 1;
roll_forward_max = 9; //roll speed
roll_backward_max = 9;

land_sound = sound_get("land");
landing_lag_sound = sound_get("land");
waveland_sound = sound_get("waveland");
jump_sound = sound_get("jump");
djump_sound = sound_get("jump_double");
air_dodge_sound = sound_get("dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;


natdev = false;

usp_did = false;
fsp_did = false;
dsp_target = -4;
pre_fsp_x = 0;

usp_cd_state = 0;
usp_cd_timer = 0;
usp_cd_end = 0;
usp_cd_dur = 180;//180

Hikaru_Title = "Vector Art";
arena_title = "Flash Emissary"
battle_text = "* Smells like 2003.";

ncode1 = "Don't think."
ncode2 = "feel and you'll be tanasinn."
ncode3 = ""

steve_death_message = "Steve was slain by AndohNatsu";

I_would_not_like_Sephiroth_to_impale_my_character = true; //she aint my character bro


set_victory_theme( sound_get( "victory" ));
set_victory_bg( sprite_get( "natsumi_victorybg" ));

extra_col = 0;




















