set_attack_value(AT_SUPERTAUNT, AG_CATEGORY, 2);
set_attack_value(AT_SUPERTAUNT, AG_NUM_WINDOWS, 6);
set_attack_value(AT_SUPERTAUNT, AG_SPRITE, sprite_get("supertaunt1"));
set_attack_value(AT_SUPERTAUNT, AG_HURTBOX_SPRITE, sprite_get("dashbox"));
set_attack_value(AT_SUPERTAUNT, AG_HURTBOX_AIR_SPRITE, sprite_get("dashbox"));

set_window_value(AT_SUPERTAUNT, 1, AG_USES_CUSTOM_GRAVITY, 1);
set_window_value(AT_SUPERTAUNT, 1, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_SUPERTAUNT, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_SUPERTAUNT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_SUPERTAUNT, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_SUPERTAUNT, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_SUPERTAUNT, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_SUPERTAUNT, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_SUPERTAUNT, 1, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_SUPERTAUNT, 2, AG_USES_CUSTOM_GRAVITY, 1);
set_window_value(AT_SUPERTAUNT, 2, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_SUPERTAUNT, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_SUPERTAUNT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_SUPERTAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_SUPERTAUNT, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_SUPERTAUNT, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_SUPERTAUNT, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_SUPERTAUNT, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_SUPERTAUNT, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_SUPERTAUNT, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_SUPERTAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_SUPERTAUNT, 3, AG_WINDOW_HSPEED, 0);
set_window_value(AT_SUPERTAUNT, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_SUPERTAUNT, 3, AG_WINDOW_VSPEED, -10);
set_window_value(AT_SUPERTAUNT, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_SUPERTAUNT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_SUPERTAUNT, 3, AG_WINDOW_SFX, sound_get("pt_jump"));

set_window_value(AT_SUPERTAUNT, 4, AG_USES_CUSTOM_GRAVITY, 1);
set_window_value(AT_SUPERTAUNT, 4, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_SUPERTAUNT, 4, AG_WINDOW_LENGTH, 13);
set_window_value(AT_SUPERTAUNT, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_SUPERTAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_SUPERTAUNT, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_SUPERTAUNT, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_SUPERTAUNT, 4, AG_WINDOW_VSPEED, 0);
set_window_value(AT_SUPERTAUNT, 4, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_SUPERTAUNT, 5, AG_USES_CUSTOM_GRAVITY, 1);
set_window_value(AT_SUPERTAUNT, 5, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_SUPERTAUNT, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_SUPERTAUNT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_SUPERTAUNT, 5, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_SUPERTAUNT, 5, AG_WINDOW_HSPEED, 0);
set_window_value(AT_SUPERTAUNT, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_SUPERTAUNT, 5, AG_WINDOW_VSPEED, 0);
set_window_value(AT_SUPERTAUNT, 5, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_SUPERTAUNT, 6, AG_USES_CUSTOM_GRAVITY, 1);
set_window_value(AT_SUPERTAUNT, 6, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_SUPERTAUNT, 6, AG_WINDOW_LENGTH, 20);
set_window_value(AT_SUPERTAUNT, 6, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_SUPERTAUNT, 6, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_SUPERTAUNT, 6, AG_WINDOW_HSPEED, 0);
set_window_value(AT_SUPERTAUNT, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_SUPERTAUNT, 6, AG_WINDOW_VSPEED, 0);
set_window_value(AT_SUPERTAUNT, 6, AG_WINDOW_VSPEED_TYPE, 1);

set_num_hitboxes(AT_SUPERTAUNT, 9);

set_hitbox_value(AT_SUPERTAUNT, 9, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_SUPERTAUNT, 9, HG_WINDOW, 4);
set_hitbox_value(AT_SUPERTAUNT, 9, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_SUPERTAUNT, 9, HG_LIFETIME, 20);
set_hitbox_value(AT_SUPERTAUNT, 9, HG_HITBOX_X, 0);
set_hitbox_value(AT_SUPERTAUNT, 9, HG_HITBOX_Y, -50);
set_hitbox_value(AT_SUPERTAUNT, 9, HG_WIDTH, 150);
set_hitbox_value(AT_SUPERTAUNT, 9, HG_HEIGHT, 150);
set_hitbox_value(AT_SUPERTAUNT, 9, HG_SHAPE, 0);
set_hitbox_value(AT_SUPERTAUNT, 9, HG_PRIORITY, 2);
set_hitbox_value(AT_SUPERTAUNT, 9, HG_DAMAGE, 10);
set_hitbox_value(AT_SUPERTAUNT, 9, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_SUPERTAUNT, 9, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_SUPERTAUNT, 9, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_SUPERTAUNT, 9, HG_EFFECT, 11);
set_hitbox_value(AT_SUPERTAUNT, 9, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_SUPERTAUNT, 9, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_SUPERTAUNT, 9, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_SUPERTAUNT, 9, HG_IGNORES_PROJECTILES, 0);

//projectiles, stuff that's different
//right
set_hitbox_value(AT_SUPERTAUNT, 1, HG_HITBOX_X, 60);
set_hitbox_value(AT_SUPERTAUNT, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_SUPERTAUNT, 1, HG_ANGLE, 25);
set_hitbox_value(AT_SUPERTAUNT, 1, HG_PROJECTILE_HSPEED, 3);
set_hitbox_value(AT_SUPERTAUNT, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_SUPERTAUNT, 1, HG_BASE_KNOCKBACK, 6);
//left
set_hitbox_value(AT_SUPERTAUNT, 2, HG_HITBOX_X, -60);
set_hitbox_value(AT_SUPERTAUNT, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_SUPERTAUNT, 2, HG_ANGLE, 155);
set_hitbox_value(AT_SUPERTAUNT, 2, HG_PROJECTILE_HSPEED, -3);
set_hitbox_value(AT_SUPERTAUNT, 2, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_SUPERTAUNT, 2, HG_BASE_KNOCKBACK, 6);
//up
set_hitbox_value(AT_SUPERTAUNT, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_SUPERTAUNT, 3, HG_HITBOX_Y, -100);
set_hitbox_value(AT_SUPERTAUNT, 3, HG_ANGLE, 90);
set_hitbox_value(AT_SUPERTAUNT, 3, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_SUPERTAUNT, 3, HG_PROJECTILE_VSPEED, -3);
set_hitbox_value(AT_SUPERTAUNT, 3, HG_BASE_KNOCKBACK, 4);
//down
set_hitbox_value(AT_SUPERTAUNT, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_SUPERTAUNT, 4, HG_HITBOX_Y, 20);
set_hitbox_value(AT_SUPERTAUNT, 4, HG_ANGLE, 270);
set_hitbox_value(AT_SUPERTAUNT, 4, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_SUPERTAUNT, 4, HG_PROJECTILE_VSPEED, 3);
set_hitbox_value(AT_SUPERTAUNT, 4, HG_BASE_KNOCKBACK, 3);
//up-right
set_hitbox_value(AT_SUPERTAUNT, 5, HG_HITBOX_X, 60);
set_hitbox_value(AT_SUPERTAUNT, 5, HG_HITBOX_Y, -100);
set_hitbox_value(AT_SUPERTAUNT, 5, HG_ANGLE, 45);
set_hitbox_value(AT_SUPERTAUNT, 5, HG_PROJECTILE_HSPEED, 2.12);
set_hitbox_value(AT_SUPERTAUNT, 5, HG_PROJECTILE_VSPEED, -2.12);
set_hitbox_value(AT_SUPERTAUNT, 5, HG_BASE_KNOCKBACK, 5);
//up-left
set_hitbox_value(AT_SUPERTAUNT, 6, HG_HITBOX_X, -60);
set_hitbox_value(AT_SUPERTAUNT, 6, HG_HITBOX_Y, -100);
set_hitbox_value(AT_SUPERTAUNT, 6, HG_ANGLE, 135);
set_hitbox_value(AT_SUPERTAUNT, 6, HG_PROJECTILE_HSPEED, -2.12);
set_hitbox_value(AT_SUPERTAUNT, 6, HG_PROJECTILE_VSPEED, -2.12);
set_hitbox_value(AT_SUPERTAUNT, 6, HG_BASE_KNOCKBACK, 5);
//down-right
set_hitbox_value(AT_SUPERTAUNT, 7, HG_HITBOX_X, 60);
set_hitbox_value(AT_SUPERTAUNT, 7, HG_HITBOX_Y, 20);
set_hitbox_value(AT_SUPERTAUNT, 7, HG_ANGLE, 315);
set_hitbox_value(AT_SUPERTAUNT, 7, HG_PROJECTILE_HSPEED, 2.12);
set_hitbox_value(AT_SUPERTAUNT, 7, HG_PROJECTILE_VSPEED, 2.12);
set_hitbox_value(AT_SUPERTAUNT, 7, HG_BASE_KNOCKBACK, 5);
//down-left
set_hitbox_value(AT_SUPERTAUNT, 8, HG_HITBOX_X, -60);
set_hitbox_value(AT_SUPERTAUNT, 8, HG_HITBOX_Y, 20);
set_hitbox_value(AT_SUPERTAUNT, 8, HG_ANGLE, 225);
set_hitbox_value(AT_SUPERTAUNT, 8, HG_PROJECTILE_HSPEED, -2.12);
set_hitbox_value(AT_SUPERTAUNT, 8, HG_PROJECTILE_VSPEED, 2.12);
set_hitbox_value(AT_SUPERTAUNT, 8, HG_BASE_KNOCKBACK, 5);

//projectiles, copy paste
var n = 1;
while(n<9)
{
	set_hitbox_value(AT_SUPERTAUNT, n, HG_HITBOX_TYPE, 2);
	set_hitbox_value(AT_SUPERTAUNT, n, HG_WINDOW, 5);
	set_hitbox_value(AT_SUPERTAUNT, n, HG_WINDOW_CREATION_FRAME, 0);
	set_hitbox_value(AT_SUPERTAUNT, n, HG_LIFETIME, 300);
	set_hitbox_value(AT_SUPERTAUNT, n, HG_WIDTH, 16);
	set_hitbox_value(AT_SUPERTAUNT, n, HG_HEIGHT, 16);
	set_hitbox_value(AT_SUPERTAUNT, n, HG_SHAPE, 0);
	set_hitbox_value(AT_SUPERTAUNT, n, HG_PRIORITY, 1);
	set_hitbox_value(AT_SUPERTAUNT, n, HG_DAMAGE, 6);
	set_hitbox_value(AT_SUPERTAUNT, n, HG_DRIFT_MULTIPLIER, 0);
	set_hitbox_value(AT_SUPERTAUNT, n, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(AT_SUPERTAUNT, n, HG_KNOCKBACK_SCALING, 0.4);
	set_hitbox_value(AT_SUPERTAUNT, n, HG_EFFECT, 11);
	set_hitbox_value(AT_SUPERTAUNT, n, HG_BASE_HITPAUSE, 2);
	set_hitbox_value(AT_SUPERTAUNT, n, HG_HITPAUSE_SCALING, 0.5);
	set_hitbox_value(AT_SUPERTAUNT, n, HG_HIT_SFX, sound_get("sfx_death"));
	set_hitbox_value(AT_SUPERTAUNT, n, HG_EXTRA_CAMERA_SHAKE, 1);
	set_hitbox_value(AT_SUPERTAUNT, n, HG_IGNORES_PROJECTILES, 0);
	set_hitbox_value(AT_SUPERTAUNT, n, HG_PROJECTILE_ANIM_SPEED, 0.2);
	set_hitbox_value(AT_SUPERTAUNT, n, HG_PROJECTILE_SPRITE, sprite_get("projectile"));
	set_hitbox_value(AT_SUPERTAUNT, n, HG_PROJECTILE_MASK, -1);
	set_hitbox_value(AT_SUPERTAUNT, n, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("projectile"));
	set_hitbox_value(AT_SUPERTAUNT, n, HG_PROJECTILE_GRAVITY, 0);
	set_hitbox_value(AT_SUPERTAUNT, n, HG_PROJECTILE_GROUND_FRICTION, 0);
	set_hitbox_value(AT_SUPERTAUNT, n, HG_PROJECTILE_AIR_FRICTION, 0);
	set_hitbox_value(AT_SUPERTAUNT, n, HG_PROJECTILE_WALL_BEHAVIOR, 2);
	set_hitbox_value(AT_SUPERTAUNT, n, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
	set_hitbox_value(AT_SUPERTAUNT, n, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
	set_hitbox_value(AT_SUPERTAUNT, n, HG_PROJECTILE_PARRY_STUN, false);
	set_hitbox_value(AT_SUPERTAUNT, n, HG_PROJECTILE_DOES_NOT_REFLECT, true);
	set_hitbox_value(AT_SUPERTAUNT, n, HG_PROJECTILE_IS_TRANSCENDENT, true);
	n++;
}

//munophone
set_attack_value(AT_SUPERTAUNT, AG_MUNO_ATTACK_MISC, "there's 8 almost identical projectiles spawned, going in 8 directions");
set_attack_value(AT_SUPERTAUNT, AG_MUNO_ATTACK_NAME, "Supertaunt");

set_hitbox_value(AT_SUPERTAUNT, 1, HG_MUNO_HITBOX_NAME, "projectile");
set_hitbox_value(AT_SUPERTAUNT, 1, HG_MUNO_HITBOX_MISC_ADD, "copied with angles: 25, 45, 90, 135, 155, 270, 225 and 315");
set_hitbox_value(AT_SUPERTAUNT, 2, HG_MUNO_HITBOX_NAME, "melee");

set_hitbox_value(AT_SUPERTAUNT, 3, HG_MUNO_HITBOX_EXCLUDE, 1);
set_hitbox_value(AT_SUPERTAUNT, 4, HG_MUNO_HITBOX_EXCLUDE, 1);
set_hitbox_value(AT_SUPERTAUNT, 5, HG_MUNO_HITBOX_EXCLUDE, 1);
set_hitbox_value(AT_SUPERTAUNT, 6, HG_MUNO_HITBOX_EXCLUDE, 1);
set_hitbox_value(AT_SUPERTAUNT, 7, HG_MUNO_HITBOX_EXCLUDE, 1);
set_hitbox_value(AT_SUPERTAUNT, 8, HG_MUNO_HITBOX_EXCLUDE, 1);

//overwrite hitbox 2's variables to that of hitbox 9 for the munophone

set_hitbox_value(AT_SUPERTAUNT, 2, HG_MUNO_HITBOX_ACTIVE, "37-57");
set_hitbox_value(AT_SUPERTAUNT, 2, HG_MUNO_HITBOX_DAMAGE, "10");
set_hitbox_value(AT_SUPERTAUNT, 2, HG_MUNO_HITBOX_BKB, "7");
set_hitbox_value(AT_SUPERTAUNT, 2, HG_MUNO_HITBOX_KBG, "1");
set_hitbox_value(AT_SUPERTAUNT, 2, HG_MUNO_HITBOX_ANGLE, "-");
set_hitbox_value(AT_SUPERTAUNT, 2, HG_MUNO_HITBOX_PRIORITY, "2");
set_hitbox_value(AT_SUPERTAUNT, 2, HG_MUNO_HITBOX_GROUP, "2");
set_hitbox_value(AT_SUPERTAUNT, 2, HG_MUNO_HITBOX_BHP, "0.5");
set_hitbox_value(AT_SUPERTAUNT, 2, HG_MUNO_HITBOX_MISC, "Group 2   |   Flipper 8 (sends away from the hitbox center)
Effect 11 (plasma stun)");
