set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));
set_attack_value(AT_JAB, AG_MUNO_ATTACK_USES_ROLES, 1);

set_attack_value(AT_JAB, AG_NUM_WINDOWS, 9);
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_JAB, 1, AG_MUNO_WINDOW_ROLE, 1);

set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_HSPEED, 3);
set_window_value(AT_JAB, 2, AG_MUNO_WINDOW_ROLE, 2);

set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 3);
set_window_value(AT_JAB, 3, AG_MUNO_WINDOW_ROLE, 3);

set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_JAB, 4, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_JAB, 4, AG_MUNO_WINDOW_ROLE, 1);

set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_JAB, 5, AG_WINDOW_HSPEED, 4);
set_window_value(AT_JAB, 5, AG_MUNO_WINDOW_ROLE, 2);

set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 16);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_FRAME, 4);
set_window_value(AT_JAB, 6, AG_MUNO_WINDOW_ROLE, 3);

set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 5);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_JAB, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_JAB, 7, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_JAB, 7, AG_MUNO_WINDOW_ROLE, 1);

set_window_value(AT_JAB, 8, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_JAB, 8, AG_WINDOW_HSPEED, 6.5);
set_window_value(AT_JAB, 8, AG_MUNO_WINDOW_ROLE, 2);

set_window_value(AT_JAB, 9, AG_WINDOW_LENGTH, 17);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_JAB, 9, AG_MUNO_WINDOW_ROLE, 3);

set_num_hitboxes(AT_JAB, 3);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 28);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -18);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 88);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 34);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2); //1
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 4); //3
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 361);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 4); //6
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_JAB, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_JAB, 1, HG_ANGLE_FLIPPER, 6);

set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 32);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -18);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 84);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 42);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 361);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_JAB, 2, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_JAB, 2, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_JAB, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_JAB, 2, HG_ANGLE_FLIPPER, 6);

set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 44);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -18);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 92);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 28);
set_hitbox_value(AT_JAB, 3, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 361);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_JAB, 3, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_JAB, 3, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_JAB, 3, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_JAB, 3, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_UNBASHABLE, 1);
