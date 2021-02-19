set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 10);

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 24);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);

set_window_value(AT_NSPECIAL, 10, AG_WINDOW_TYPE, 0);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_LENGTH, 24);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 5);

var i = 0;

for (i = 2; i <= 9; i++)
{
	set_window_value(AT_NSPECIAL, i, AG_WINDOW_TYPE, 0);
	set_window_value(AT_NSPECIAL, i, AG_WINDOW_LENGTH, 5);
	set_window_value(AT_NSPECIAL, i, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_NSPECIAL, i, AG_WINDOW_ANIM_FRAME_START, 5);
	set_window_value(AT_NSPECIAL, i, AG_WINDOW_VSPEED, -1);
	set_window_value(AT_NSPECIAL, i, AG_WINDOW_HSPEED, -1.5);
	set_window_value(AT_NSPECIAL, i, AG_WINDOW_VSPEED_TYPE, 0);
	set_window_value(AT_NSPECIAL, i, AG_WINDOW_HSPEED_TYPE, 0);
	set_window_value(AT_NSPECIAL, i, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_NSPECIAL, i, AG_WINDOW_SFX, sound_get("dog_bullet"));
	set_window_value(AT_NSPECIAL, i, AG_WINDOW_SFX_FRAME, 2);
}

set_num_hitboxes(AT_NSPECIAL, 9);

for (i = 2; i <= 9; i++)
{
	set_hitbox_value(AT_NSPECIAL, i, HG_PARENT_HITBOX, 0);
	set_hitbox_value(AT_NSPECIAL, i, HG_HITBOX_TYPE, 2);
	set_hitbox_value(AT_NSPECIAL, i, HG_WINDOW_CREATION_FRAME, 1);
	set_hitbox_value(AT_NSPECIAL, i, HG_LIFETIME, 900);
	set_hitbox_value(AT_NSPECIAL, i, HG_HITBOX_X, 12);
	set_hitbox_value(AT_NSPECIAL, i, HG_HITBOX_Y, -24);
	set_hitbox_value(AT_NSPECIAL, i, HG_SHAPE, 2);
	set_hitbox_value(AT_NSPECIAL, i, HG_WIDTH, 12);
	set_hitbox_value(AT_NSPECIAL, i, HG_HEIGHT, 12);
	set_hitbox_value(AT_NSPECIAL, i, HG_PRIORITY, 1);
	set_hitbox_value(AT_NSPECIAL, i, HG_DAMAGE, 3);
	set_hitbox_value(AT_NSPECIAL, i, HG_ANGLE, 75);
	set_hitbox_value(AT_NSPECIAL, i, HG_BASE_KNOCKBACK, 0.0);
	set_hitbox_value(AT_NSPECIAL, i, HG_KNOCKBACK_SCALING, 0.0);
	set_hitbox_value(AT_NSPECIAL, i, HG_BASE_HITPAUSE, 0.0);
	set_hitbox_value(AT_NSPECIAL, i, HG_HITPAUSE_SCALING, 0.0);
	set_hitbox_value(AT_NSPECIAL, i, HG_ANGLE_FLIPPER, 0);
	set_hitbox_value(AT_NSPECIAL, i, HG_HIT_SFX, sound_get("dog_test"));
	set_hitbox_value(AT_NSPECIAL, i, HG_HITSTUN_MULTIPLIER, 0.75);
	set_hitbox_value(AT_NSPECIAL, i, HG_HITSTUN_MULTIPLIER, 0.75);
	set_hitbox_value(AT_NSPECIAL, i, HG_VISUAL_EFFECT, 19);

	
	set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_SPRITE, sprite_get("proj_missile"));
	set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_MASK, -1);
	set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_ANIM_SPEED, 1);
	set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_PARRY_STUN, 1);
	set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
	set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_WALL_BEHAVIOR, 1);
	set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
	set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_UNBASHABLE, 0);
	set_hitbox_value(AT_NSPECIAL, i, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
	set_hitbox_value(AT_NSPECIAL, i, HG_FORCE_FLINCH, 2);
}

//WINDOW 2
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 10);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_VSPEED, 1.5);

//WINDOW 3
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_HSPEED, 10);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_VSPEED, 1.0);

//WINDOW 4
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_HSPEED, 10);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_VSPEED, 0.5);

//WINDOW 5
set_hitbox_value(AT_NSPECIAL, 5, HG_WINDOW, 5);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_HSPEED, 10);
set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_VSPEED, 0.0);

//WINDOW 6
set_hitbox_value(AT_NSPECIAL, 6, HG_WINDOW, 6);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_HSPEED, 10);
set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_VSPEED, -0.5);

//WINDOW 7
set_hitbox_value(AT_NSPECIAL, 7, HG_WINDOW, 7);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_HSPEED, 10);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_VSPEED, -1.0);

//WINDOW 8
set_hitbox_value(AT_NSPECIAL, 8, HG_WINDOW, 8);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_HSPEED, 10);
set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_VSPEED, -1.5);

//WINDOW 9
set_hitbox_value(AT_NSPECIAL, 9, HG_WINDOW, 9);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_HSPEED, 10);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_VSPEED, -2.0);

//NSPECIAL HITBOX 1
//
//NOT USED FOR NSPECIAL!!
//USED FOR FSTRONG WEAK HIT
//
//THIS WAS THE ONLY WAY I COULD GET IT TO WORK
//FIX YOUR FUCKING GAME, DAN

set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);

set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW_CREATION_FRAME, -1);

set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, 0);

set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 64);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 64);
set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, 0);

set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 1);

set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 13);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 65);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.7);

set_hitbox_value(AT_NSPECIAL, 1, HG_EFFECT, 12);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(AT_NSPECIAL, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 1.75);

set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.1);

set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_FRICTION, 0.0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 305);