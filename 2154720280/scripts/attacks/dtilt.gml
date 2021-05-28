set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_blow_heavy2"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_DTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED, 3);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DTILT, 2, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_DTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_DTILT,2);

set_hitbox_value(AT_DTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 24);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -22);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 62);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 40);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_DTILT, 1, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 303);


set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 20);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 300);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 42);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 78);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 0);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, sound_get("cheese"));
set_hitbox_value(AT_DTILT, 2, HG_PROJECTILE_SPRITE, sprite_get("cheese"));
set_hitbox_value(AT_DTILT, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DTILT, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DTILT, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DTILT, 2, HG_HITSTUN_MULTIPLIER, 1.2);
set_hitbox_value(AT_DTILT, 2, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_DTILT, 2, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_DTILT, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_DTILT, 2, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_DTILT, 2, HG_IGNORES_PROJECTILES, true);