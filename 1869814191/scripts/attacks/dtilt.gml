set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_DTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_DTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 2);

set_num_hitboxes(AT_DTILT, 15);

set_hitbox_value(AT_DTILT, 15, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DTILT, 15, HG_WINDOW, 1);
set_hitbox_value(AT_DTILT, 15, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DTILT, 15, HG_LIFETIME, 999);
set_hitbox_value(AT_DTILT, 15, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 15, HG_HITBOX_X, 0);
set_hitbox_value(AT_DTILT, 15, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DTILT, 15, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 15, HG_DAMAGE, 3);
set_hitbox_value(AT_DTILT, 15, HG_ANGLE, 135);
set_hitbox_value(AT_DTILT, 15, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DTILT, 15, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DTILT, 15, HG_PROJECTILE_DESTROY_EFFECT, 254);
set_hitbox_value(AT_DTILT, 15, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DTILT, 15, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_DTILT, 15, HG_PROJECTILE_SPRITE, sprite_get("banana"));
set_hitbox_value(AT_DTILT, 15, HG_PROJECTILE_MASK, sprite_get("banana"));
set_hitbox_value(AT_DTILT, 15, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DTILT, 15, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DTILT, 15, HG_PROJECTILE_HSPEED, 8);
set_hitbox_value(AT_DTILT, 15, HG_PROJECTILE_GROUND_FRICTION, 2);
set_hitbox_value(AT_DTILT, 15, HG_PROJECTILE_AIR_FRICTION, 0.3);
set_hitbox_value(AT_DTILT, 15, HG_PROJECTILE_VSPEED, 6);
set_hitbox_value(AT_DTILT, 15, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_DTILT, 15, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_DTILT, 15, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_DTILT, 15, HG_ANGLE_FLIPPER, 4);