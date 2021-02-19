///

if nolan == 0 && changed == 0 {


if !instance_exists(hit_player_obj){

hit_player_obj = self

}

if get_gameplay_time() <= 120 - 26 {
	set_attack(AT_TAUNT)
	window = 3
	window_timer = -1
}
if !hitpause {
	shsp = (shsp + hsp)/2
    svsp = (svsp + vsp)/2
}

if state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR {
	attacking = true
} else {
	attacking = false
}

if !free or state_cat == SC_HITSTUN or state == PS_WALL_JUMP {
	move_cooldown[AT_USPECIAL] = 0
	move_cooldown[AT_DSPECIAL] = 0
}

if state == PS_DASH or state == PS_DASH_START {
	if state_timer % 5 == 0 {
		sound_play(asset_get("sfx_ice_shieldup"),false,noone,0.4);
	}
}

if state == PS_CROUCH {
  if left_down && hsp > -4 {
  	hsp -= 1
  }	
  if right_down && hsp < 4 {
  	hsp += 1
  }
	
	if state_timer == 1 or ((hsp > 2 or hsp < -2) and state_timer % 7 == 0) {
		sound_play(asset_get("sfx_orca_shake"),false,noone,0.4);
	}
}

if (state == PS_ROLL_BACKWARD or state == PS_ROLL_FORWARD or state == PS_TECH_FORWARD or state == PS_TECH_BACKWARD){
    
    if state_timer == 8 {
    	spr_dir *= -1
    }
    
	 if state_timer == 1 {
	     sound_play(asset_get("sfx_absa_jab1"),false,noone,0.6);
	 }
    
	 if state_timer == 7 {
	     sound_play(asset_get("sfx_absa_dashdown"),false,noone,0.6);
	 }
	 
	 if state_timer < 9{
	     hsp = -1.5 * spr_dir
	 }
	 
	 
	 if state_timer > 15 {
	     hsp = 0
	 }
	 
}

}





if nolan == 0 && changed == 1 {

switch alt {
    case 0 :
    set_color_profile_slot(alt, 0, 222, 0, 255 );
    break ;

    case 1 :
    set_color_profile_slot(alt, 0, 255, 0, 0 );
    break ;    
    
    case 2 :
    set_color_profile_slot(alt, 0, 81, 255, 0  );
    break ;   
    
    case 3 :
    set_color_profile_slot(alt, 0, 255, 0, 195 );
    break ;   
    
    case 4 :
    set_color_profile_slot(alt, 0, 255, 129, 0  );
    break ;   
    
    case 5 :
    set_color_profile_slot(alt, 0, 249, 0, 255 );
    break ;   
    
    case 6 :
    set_color_profile_slot(alt, 0, 255, 0, 0  );
    break ;   
    
    case 7 :
    set_color_profile_slot(alt, 0, 218, 255, 77 );
    break ;   
    
    case 8 :
    set_color_profile_slot(alt, 0, 0, 68, 255 );
    break ;   
    
    case 9 :
    set_color_profile_slot(alt, 0, 0, 200, 255 );
    break ;   
    
    case 10 :
    set_color_profile_slot(alt, 0, 255, 201, 0  );
    break ;   
    
    case 11 :
    set_color_profile_slot(alt, 0, 133, 0, 210  );
    break ;   
   
    case 12 :
    set_color_profile_slot(alt, 0, 222, 0, 255 );
    break ; 
    
}
init_shader();

hurtbox_spr = sprite_get("stand_box");
crouchbox_spr = sprite_get("crouch_box");
air_hurtbox_spr = sprite_get("air_box");
hitstun_hurtbox_spr = sprite_get("air_box");

Hikaru_Title = "Abyssal Ascended"

nname = "Nolan Dolal [Abyss]"
ncode1 = "A.k.a [Nullan]"
ncode2 = "Nolan carrying the power of the Abyss."
ncode3 = "It seems like he retains complete control."

introhit = 0
intro = 0
introtimer = -1

nolan = 0
changed = 0
drop = 0
coindrop = 0

supply = 10

shsp = 0
svsp = 0

daired = 0
golden = 0
drop = 0
coindrop = 0
batt = 1
supply = 6
noinv = 3

attra = 0
milkpizz = 0
meleehit = 0

char_height = 60;
idle_anim_speed = .2;
crouch_anim_speed = .1;
walk_anim_speed = .16;
dash_anim_speed = .4;
pratfall_anim_speed = .25;

walk_speed = 2.5;
walk_accel = 0.4;
walk_turn_time = 4;
initial_dash_time = 10;
initial_dash_speed = 7.5;
dash_speed = 7.5
dash_turn_time = 6;
dash_turn_accel = .5;
dash_stop_time = 9;
dash_stop_percent = .35; //the value to multiply your hsp by when going into idle from dash or dashstop
ground_friction = .8;
moonwalk_accel = 1.8;

jump_start_time = 5;
jump_speed = 12;
short_hop_speed = 8;
djump_speed = 12;
leave_ground_max = 8; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 8; //the maximum hsp you can have when jumping from the ground
air_max_speed = 5; //the maximum hsp you can accelerate to when in a normal aerial state
jump_change = 3; //maximum hsp when double jumping. If already going faster, it will not slow you down
air_accel = .35;
prat_fall_accel = 1; //multiplier of air_accel while in pratfall
air_friction = .0555;
max_djumps = 1;
double_jump_time = 34; //the number of frames to play the djump animation. Can't be less than 31.
walljump_hsp = 3;
walljump_vsp = 11;
walljump_time = 12;
wall_frames = 2; //anim frames before you leave the wall
max_fall = 8.5; //maximum fall speed without fastfalling
fast_fall = 12; //fast fall speed
gravity_speed = .64;
hitstun_grav = .53;
knockback_adj = 1.1;//the multiplier to KB dealt to you. 1 = default, >1 = lighter, <1 = heavier

land_time = 4; //normal landing frames
prat_land_time = 5;
wave_land_time = 8;
wave_land_adj = 1.2; //the multiplier to your initial hsp when wavelanding. Usually greater than 1
wave_friction = .01; //grounded deceleration when wavelanding

//crouch animation frames
crouch_startup_frames = 3;
crouch_active_frames = 1;
crouch_recovery_frames = 1;

//parry animation frames
dodge_startup_frames = 1;
dodge_active_frames = 1;
dodge_recovery_frames = 3;

//tech animation frames
tech_active_frames = 2;
tech_recovery_frames = 1;

//tech roll animation frames
techroll_startup_frames = 1
techroll_active_frames = 6;
techroll_recovery_frames = 2;
techroll_speed = -22;

//airdodge animation frames
air_dodge_startup_frames = 0;
air_dodge_active_frames = 2;
air_dodge_recovery_frames = 3;
air_dodge_speed = 8;

//roll animation frames
roll_forward_startup_frames = 1;
roll_forward_active_frames = 6;
roll_forward_recovery_frames = 2;
roll_back_startup_frames = 1;
roll_back_active_frames = 6;
roll_back_recovery_frames = 2;
roll_forward_max = -22; //roll speed
roll_backward_max = -22;

land_sound = asset_get("sfx_land_light");
landing_lag_sound = asset_get("sfx_land_light");
waveland_sound = asset_get("sfx_waveland_cla");
jump_sound = asset_get("sfx_jumpground");
djump_sound = asset_get("sfx_jumpair");
air_dodge_sound = asset_get("sfx_quick_dodge");

//visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;


    
    
	prat_land_time = 12;
	
	
set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_USPECIAL, AG_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));


set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 8*4);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_boss_vortex_end"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0);
	
set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 0);

set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 10*4);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_USPECIAL, 4, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 1);


set_num_hitboxes(AT_USPECIAL, 2);

set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 300);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 02);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -12);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 60);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 40);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("seed1"));
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_HSPEED, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_VSPEED, 7);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_GRAVITY, .35);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_EXTENDED_PARRY_STUN, 1);

set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 12);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 12);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 85);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 45);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL, 2, HG_EXTRA_HITPAUSE, 15);
set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT_X_OFFSET, 0.666);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 0);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"))
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("stand_box"));

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_boss_fireball_land"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_boss_fireball_land"));
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_boss_fireball_land"));
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 4*8);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_boss_fireball"));
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX_FRAME, 12);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 10);



set_num_hitboxes(AT_FSPECIAL, 10);

set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 9);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 40);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -42);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("laser1"));
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 10);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 1.0);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 64);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 24);
set_hitbox_value(AT_FSPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 55);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING,0.6);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_boss_laser_hit"));
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1);

set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW, 9);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 40);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_Y, -42);
set_hitbox_value(AT_FSPECIAL, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("laser1"));
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_HSPEED, 10);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_ANIM_SPEED, 1.0);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(AT_FSPECIAL, 4, HG_WIDTH, 64);
set_hitbox_value(AT_FSPECIAL, 4, HG_HEIGHT, 24);
set_hitbox_value(AT_FSPECIAL, 4, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE, 55);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 4, HG_KNOCKBACK_SCALING,0.6);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_boss_laser_hit"));
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITSTUN_MULTIPLIER, 1);

set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 9);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 44);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -42);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("laser1"));
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_HSPEED, 9.1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 1.0);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 64);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 24);
set_hitbox_value(AT_FSPECIAL, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 55);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING,0.6);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_boss_laser_hit"));
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 1);

set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 9);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 20);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 50);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -42);
set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("laser1"));
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_HSPEED, 8);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, 1.0);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 64);
set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, 24);
set_hitbox_value(AT_FSPECIAL, 3, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE, 55);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING,0.6);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_boss_laser_hit"));
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITSTUN_MULTIPLIER, 1);

set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 5, HG_WINDOW, 9);
set_hitbox_value(AT_FSPECIAL, 5, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, 14);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_X, 260);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_Y, -44);
set_hitbox_value(AT_FSPECIAL, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_ANIM_SPEED, 1.0);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(AT_FSPECIAL, 5, HG_WIDTH, 460);
set_hitbox_value(AT_FSPECIAL, 5, HG_HEIGHT, 35);
set_hitbox_value(AT_FSPECIAL, 5, HG_SHAPE, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 5, HG_DAMAGE, 15);
set_hitbox_value(AT_FSPECIAL, 5, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 5, HG_KNOCKBACK_SCALING,0.8);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_FSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_boss_laser_hit"));
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_FSPECIAL, 5, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_VISUAL_EFFECT_X_OFFSET, -0.666);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITSTUN_MULTIPLIER, 1);

set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 6, HG_WINDOW, 9);
set_hitbox_value(AT_FSPECIAL, 6, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_FSPECIAL, 6, HG_LIFETIME, 14);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_X, 260);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_Y, -44);
set_hitbox_value(AT_FSPECIAL, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_ANIM_SPEED, 1.0);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_DESTROY_EFFECT, 301);
set_hitbox_value(AT_FSPECIAL, 6, HG_WIDTH, 35);
set_hitbox_value(AT_FSPECIAL, 6, HG_HEIGHT, 460);
set_hitbox_value(AT_FSPECIAL, 6, HG_SHAPE, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 6, HG_DAMAGE, 15);
set_hitbox_value(AT_FSPECIAL, 6, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 6, HG_KNOCKBACK_SCALING,0.8);
set_hitbox_value(AT_FSPECIAL, 6, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_FSPECIAL, 6, HG_HIT_SFX, asset_get("sfx_boss_laser_hit"));
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_VISUAL_EFFECT_X_OFFSET, -0.666);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITSTUN_MULTIPLIER, 1);

set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 0);
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));


set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED, -10);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_forsburn_disappear"));
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);


set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_WHIFFLAG, 1);





set_num_hitboxes(AT_DSPECIAL, 2);

set_hitbox_value(AT_DSPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 24);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -22);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 42);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_DSPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 70);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, 0.666);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DSPECIAL, 1, HG_TECHABLE, 2);

set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 24);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -22);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 62);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 68);
set_hitbox_value(AT_DSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 40);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT_X_OFFSET, 0.666);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL, 2, HG_TECHABLE, 1);

///JAB
set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 3);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_HSPEED, 2);
set_window_value(AT_JAB, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_ice_back_air"));
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_HSPEED, 4);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_SFX, asset_get("sfx_ori_bash_projectile"));
set_window_value(AT_JAB, 2, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_HAS_SFX, 0);

set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 0);

set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 16);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_JAB, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_JAB, 5, AG_WINDOW_SFX_FRAME, 0);

set_num_hitboxes(AT_JAB, 3);

set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -42);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 80);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 90);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_X_OFFSET, 6);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_icehit_medium1"));
set_hitbox_value(AT_JAB, 1, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 0);

set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 4);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 33);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -38);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 60);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 60);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_X_OFFSET, 6);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_JAB, 2, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 33);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -38);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 60);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 50);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_JAB, 3, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT_X_OFFSET, 6);
set_hitbox_value(AT_JAB, 3, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_swipe_medium1"));


///Ftilt 
set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, asset_get("sfx_ice_shieldup"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 6);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .7);

set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED, 3);
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX, asset_get("sfx_ice_on_player"));
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX_FRAME, 11);

set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FTILT,2);

set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 33);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -24);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 86);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 36);
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 40);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_FTILT, 1, HG_HITSTUN_MULTIPLIER, .9);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 1);

set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 33);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -24);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 86);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 36);
set_hitbox_value(AT_FTILT, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 120);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_icehit_medium1"));
set_hitbox_value(AT_FTILT, 2, HG_HITSTUN_MULTIPLIER, .9);
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, 302);

//Dtilt 
set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_light2"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_DTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED, 3);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);


set_window_value(AT_DTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_DTILT,2);

set_hitbox_value(AT_DTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 24);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -22);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 62);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 60);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_DTILT, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, sound_get("slicel"));

set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 64);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 52);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 68);
set_hitbox_value(AT_DTILT, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 60);
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_DTILT, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, sound_get("slice"));


///Utilt 
set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 1, AG_WINDOW_HSPEED, 2);
set_window_value(AT_UTILT, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_HSPEED, 3);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UTILT,2);

set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 46);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 76);
set_hitbox_value(AT_UTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 19);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_UTILT, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, 305);


set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 25);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -66);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 40);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 76);
set_hitbox_value(AT_UTILT, 2, HG_SHAPE, 2);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT_X_OFFSET, 19);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_UTILT, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, 305);

///Fstrong

set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_spin"))
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.15);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED, 7);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_SFX, 0);



set_window_value(AT_FSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_SFX, 0);

set_num_hitboxes(AT_FSTRONG, 3);


set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 53);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -38);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 78);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 76);
set_hitbox_value(AT_FSTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 11);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 40);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_FSTRONG, 2, HG_HITSTUN_MULTIPLIER, 1.0);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 304);


set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 12);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -62);
set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 70);
set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 54);
set_hitbox_value(AT_FSTRONG, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 11);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_FSTRONG, 3, HG_HITSTUN_MULTIPLIER, 1.0);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, 304);




///Ustrong

set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USTRONG, AG_CATEGORY, 2);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.1);

set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HSPEED, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 0);


set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_light2"));
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);

set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_USTRONG, 5, AG_WINDOW_TYPE, 0);
set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_USTRONG,2);

set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 48);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -44);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 40);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT_X_OFFSET, 19);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_USTRONG, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 304);



set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -74);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 60);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 80);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, 19);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_USTRONG, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 304);

///Dstrong
set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSTRONG, AG_CATEGORY, 2);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

set_window_value(AT_DSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.15);

set_window_value(AT_DSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));

set_window_value(AT_DSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSTRONG, 3,  AG_WINDOW_HAS_WHIFFLAG, 1);



set_num_hitboxes(AT_DSTRONG, 4);

set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 42);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 80);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 40);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_DSTRONG, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_TECHABLE, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_SDI_MULTIPLIER, 0.6);

set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, -32);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 90);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 32);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 40);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, sound_get("slicel"));
set_hitbox_value(AT_DSTRONG, 2, HG_HITSTUN_MULTIPLIER, 1.);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSTRONG, 2, HG_TECHABLE, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_SDI_MULTIPLIER, 0.6);

///Dattack 
set_attack_value(AT_DATTACK, AG_CATEGORY, 0);
set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

set_window_value(AT_DATTACK, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .001);

set_window_value(AT_DATTACK, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 3);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_DATTACK, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED_TYPE, 0);

set_window_value(AT_DATTACK, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_SFX, asset_get("sfx_land_light"));
set_window_value(AT_DATTACK, 4, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DATTACK,2);


set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 26);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -38);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 60);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 45);
set_hitbox_value(AT_DATTACK, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DATTACK, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, 0);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT_X_OFFSET, 22);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DATTACK, 2, HG_HITSTUN_MULTIPLIER, 1);

///Nair
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));
set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 8);

set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NAIR, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));

set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);


set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 4, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_NAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);





set_num_hitboxes(AT_NAIR, 2);

set_hitbox_value(AT_NAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 21);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, -4);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 50);
set_hitbox_value(AT_NAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 22);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_NAIR, 1, HG_HITSTUN_MULTIPLIER, 2);

set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, -4);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -36);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 60);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 70);
set_hitbox_value(AT_NAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 22);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_swipe_weak1"));
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_NAIR, 2, HG_HITSTUN_MULTIPLIER, 1);

//Fair
set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_FAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 0);

set_window_value(AT_FAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FAIR,2);

set_hitbox_value(AT_FAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 25);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 75);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 75);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, sound_get("slice"));

set_hitbox_value(AT_FAIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 25);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 70);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 280);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, sound_get("slice"));

///Dair
set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 12);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);










set_num_hitboxes(AT_DAIR, 2);

set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DAIR, 1, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, sound_get("slice"));

set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 30);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -54);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 60);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 11);
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DAIR, 2, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, sound_get("slice"));



set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, sound_get("slice"));



	changed = 0
}