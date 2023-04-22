set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_DTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_DTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_num_hitboxes(AT_DTILT, 2);

set_hitbox_value(AT_DTILT, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 22);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -26);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 60);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 40);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DTILT, 1, HG_FORCE_FLINCH, 1);

set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 20);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 28);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 32);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 32);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DTILT, 2, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 60);
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_icehit_medium1"));
set_hitbox_value(AT_DTILT, 2, HG_PROJECTILE_SPRITE, sprite_get("dtiltProj"));
set_hitbox_value(AT_DTILT, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DTILT, 2, HG_PROJECTILE_HSPEED, 12);
set_hitbox_value(AT_DTILT, 2, HG_PROJECTILE_VSPEED, 3);
set_hitbox_value(AT_DTILT, 2, HG_PROJECTILE_DESTROY_EFFECT, 29);
set_hitbox_value(AT_DTILT, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DTILT, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DTILT, 2, HG_HIT_LOCKOUT, 10);

set_hitbox_value(AT_DTILT, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 3, HG_LIFETIME, 20);
set_hitbox_value(AT_DTILT, 3, HG_WIDTH, 54);
set_hitbox_value(AT_DTILT, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_DTILT, 3, HG_SHAPE, 1);
set_hitbox_value(AT_DTILT, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_DTILT, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DTILT, 3, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_DTILT, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DTILT, 3, HG_ANGLE, 60);
set_hitbox_value(AT_DTILT, 3, HG_HIT_SFX, asset_get("sfx_icehit_medium2"));
set_hitbox_value(AT_DTILT, 3, HG_PROJECTILE_SPRITE, sprite_get("dtiltProj2"));
set_hitbox_value(AT_DTILT, 3, HG_PROJECTILE_ANIM_SPEED, 0.25);
set_hitbox_value(AT_DTILT, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DTILT, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DTILT, 3, HG_PROJECTILE_DESTROY_EFFECT, 29);
set_hitbox_value(AT_DTILT, 3, HG_VISUAL_EFFECT, spinfx);
set_hitbox_value(AT_DTILT, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DTILT, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 1);