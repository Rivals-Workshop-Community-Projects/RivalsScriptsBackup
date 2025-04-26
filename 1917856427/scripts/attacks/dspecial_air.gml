set_attack_value(AT_DSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_AIR, AG_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 3);

set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 13);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_num_hitboxes(AT_DSPECIAL_AIR, 2);

set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW, 7);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_LIFETIME, 60);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_X, -5);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_Y, 7);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WIDTH, 62);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HEIGHT, 62);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 5);

set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_VSPEED, 7);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_GROUND_BEHAVIOR	, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_EXTENDED_PARRY_STUN, 1);

set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WINDOW, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_LIFETIME, 60);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_X, -5);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_Y, 7);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WIDTH, 42);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HEIGHT, 42);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_VISUAL_EFFECT, 3);

set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_SPRITE, sprite_get("fireProjectileDown"));
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_MASK, sprite_get("fireprojectiledownmask"));
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_VSPEED, 7);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_GROUND_BEHAVIOR	, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_DESTROY_EFFECT, 3);