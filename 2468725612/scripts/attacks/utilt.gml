set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, sound_get("swing_weak"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_SFX, sound_get("utilt"));

set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UTILT, 6);

set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 42);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -58);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 68);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 67);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, sound_get("punch_weak"));
set_hitbox_value(AT_UTILT, 1, HG_HIT_LOCKOUT, 3);

set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 42);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -58);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 68);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 67);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, sound_get("punch_weak"));
set_hitbox_value(AT_UTILT, 2, HG_HIT_LOCKOUT, 2);

set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, 42);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -64);
set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 70);
set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 73);
set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_UTILT, 3, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, sound_get("punch_medium"));
set_hitbox_value(AT_UTILT, 3, HG_HIT_LOCKOUT, 2);

set_hitbox_value(AT_UTILT, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 4, HG_LIFETIME, 5);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_X, 42);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_Y, -58);
set_hitbox_value(AT_UTILT, 4, HG_WIDTH, 68);
set_hitbox_value(AT_UTILT, 4, HG_HEIGHT, 67);
set_hitbox_value(AT_UTILT, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 4, HG_DAMAGE, 0);
set_hitbox_value(AT_UTILT, 4, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 4, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_UTILT, 4, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_UTILT, 4, HG_VISUAL_EFFECT, 124);
set_hitbox_value(AT_UTILT, 4, HG_HIT_SFX, asset_get("sfx_clairen_hit_weak"));
set_hitbox_value(AT_UTILT, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_UTILT, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_UTILT, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_UTILT, 4, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_UTILT, 4, HG_PROJECTILE_PLASMA_SAFE, 1);

set_hitbox_value(AT_UTILT, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UTILT, 5, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 5, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UTILT, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_X, 42);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_Y, -58);
set_hitbox_value(AT_UTILT, 5, HG_WIDTH, 68);
set_hitbox_value(AT_UTILT, 5, HG_HEIGHT, 67);
set_hitbox_value(AT_UTILT, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 5, HG_DAMAGE, 0);
set_hitbox_value(AT_UTILT, 5, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 5, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_UTILT, 5, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_UTILT, 5, HG_VISUAL_EFFECT, 124);
set_hitbox_value(AT_UTILT, 5, HG_HIT_SFX, asset_get("sfx_clairen_hit_weak"));
set_hitbox_value(AT_UTILT, 5, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_UTILT, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_UTILT, 5, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_UTILT, 5, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_UTILT, 5, HG_PROJECTILE_PLASMA_SAFE, 1);

set_hitbox_value(AT_UTILT, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UTILT, 6, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 6, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_UTILT, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_X, 42);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_Y, -64);
set_hitbox_value(AT_UTILT, 6, HG_WIDTH, 70);
set_hitbox_value(AT_UTILT, 6, HG_HEIGHT, 73);
set_hitbox_value(AT_UTILT, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 6, HG_DAMAGE, 0);
set_hitbox_value(AT_UTILT, 6, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTILT, 6, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_UTILT, 6, HG_BASE_HITPAUSE, 5);
//set_hitbox_value(AT_UTILT, 6, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_UTILT, 6, HG_VISUAL_EFFECT, 124);
set_hitbox_value(AT_UTILT, 6, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
set_hitbox_value(AT_UTILT, 6, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_UTILT, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_UTILT, 6, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_UTILT, 6, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_UTILT, 6, HG_PROJECTILE_PLASMA_SAFE, 1);

set_hitbox_value(AT_UTILT, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UTILT, 7, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 7, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_UTILT, 7, HG_LIFETIME, 120);
set_hitbox_value(AT_UTILT, 7, HG_PROJECTILE_SPRITE, sprite_get("shotgun_shell"));
set_hitbox_value(AT_UTILT, 7, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_UTILT, 7, HG_HITBOX_X, 26);
set_hitbox_value(AT_UTILT, 7, HG_HITBOX_Y, -79);
set_hitbox_value(AT_UTILT, 7, HG_WIDTH, 25);
set_hitbox_value(AT_UTILT, 7, HG_HEIGHT, 20);
set_hitbox_value(AT_UTILT, 7, HG_SHAPE, 2);
set_hitbox_value(AT_UTILT, 7, HG_PROJECTILE_ANIM_SPEED, .25);
set_hitbox_value(AT_UTILT, 7, HG_PROJECTILE_HSPEED, -5);
set_hitbox_value(AT_UTILT, 7, HG_PROJECTILE_VSPEED, -4);
set_hitbox_value(AT_UTILT, 7, HG_PROJECTILE_GRAVITY, .8);
set_hitbox_value(AT_UTILT, 7, HG_PRIORITY, 0);
set_hitbox_value(AT_UTILT, 7, HG_DAMAGE, 0);
set_hitbox_value(AT_UTILT, 7, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_UTILT, 7, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_UTILT, 7, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_UTILT, 7, HG_PROJECTILE_GROUND_FRICTION, 1);
set_hitbox_value(AT_UTILT, 7, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_UTILT, 7, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_UTILT, 7, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_UTILT, 7, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_UTILT, 7, HG_PROJECTILE_PLASMA_SAFE, 1);