set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 8);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 4);

set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));

set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 2);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 17);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_FRAME, 4);

set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_JAB, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_JAB, 7, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_JAB, 8, AG_WINDOW_LENGTH, 9);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_JAB, 8, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_JAB, 6);

set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 22);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -16);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 30);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 361);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_Y_OFFSET, 18);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_JAB, 1, HG_HITSTUN_MULTIPLIER, 1.7)

set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 24);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -16);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 30);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 361);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_X_OFFSET, 18);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_Y_OFFSET, 16);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_JAB, 2, HG_HITSTUN_MULTIPLIER, 1.5)

// Only Visual
set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 7);
set_hitbox_value(AT_JAB, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, -46);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -36);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 0);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 0);
set_hitbox_value(AT_JAB, 3, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 0);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 40);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_JAB, 3, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 3, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT, 67);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_SPRITE, sprite_get("jab_badeline"));
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_HSPEED, 12);
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);

// Actual Hitbox
set_hitbox_value(AT_JAB, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_JAB, 6, HG_WINDOW, 7);
set_hitbox_value(AT_JAB, 6, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_JAB, 6, HG_LIFETIME, 5);
set_hitbox_value(AT_JAB, 6, HG_HITBOX_X, 2);
set_hitbox_value(AT_JAB, 6, HG_HITBOX_Y, -36);
set_hitbox_value(AT_JAB, 6, HG_WIDTH, 40);
set_hitbox_value(AT_JAB, 6, HG_HEIGHT, 50);
set_hitbox_value(AT_JAB, 6, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_JAB, 6, HG_DAMAGE, 6);
set_hitbox_value(AT_JAB, 6, HG_ANGLE, 40);
set_hitbox_value(AT_JAB, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_JAB, 6, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_JAB, 6, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_JAB, 6, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_JAB, 6, HG_VISUAL_EFFECT, 67);
set_hitbox_value(AT_JAB, 6, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_JAB, 6, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_JAB, 6, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_JAB, 6, HG_PROJECTILE_SPRITE, sprite_get("jab_badeline"));
set_hitbox_value(AT_JAB, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_JAB, 6, HG_PROJECTILE_HSPEED, 12);
set_hitbox_value(AT_JAB, 6, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_JAB, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 1);

// Afterimage
set_hitbox_value(AT_JAB, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_JAB, 4, HG_WINDOW, 7);
set_hitbox_value(AT_JAB, 4, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_JAB, 4, HG_LIFETIME, 9);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_X, -46);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_Y, -36);
set_hitbox_value(AT_JAB, 4, HG_WIDTH, 0);
set_hitbox_value(AT_JAB, 4, HG_HEIGHT, 0);
set_hitbox_value(AT_JAB, 4, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 4, HG_PRIORITY, 0);
set_hitbox_value(AT_JAB, 4, HG_DAMAGE, 6);
set_hitbox_value(AT_JAB, 4, HG_ANGLE, 40);
set_hitbox_value(AT_JAB, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_JAB, 4, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_JAB, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_JAB, 4, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_JAB, 4, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(AT_JAB, 4, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_JAB, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_JAB, 4, HG_PROJECTILE_SPRITE, sprite_get("jab_badeline_afterimage1"));
set_hitbox_value(AT_JAB, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_JAB, 4, HG_PROJECTILE_HSPEED, 12);
set_hitbox_value(AT_JAB, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_JAB, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);

// Afterimage
set_hitbox_value(AT_JAB, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_JAB, 5, HG_WINDOW, 7);
set_hitbox_value(AT_JAB, 5, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_JAB, 5, HG_LIFETIME, 9);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_X, -46);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_Y, -36);
set_hitbox_value(AT_JAB, 5, HG_WIDTH, 0);
set_hitbox_value(AT_JAB, 5, HG_HEIGHT, 0);
set_hitbox_value(AT_JAB, 5, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 5, HG_PRIORITY, 0);
set_hitbox_value(AT_JAB, 5, HG_DAMAGE, 6);
set_hitbox_value(AT_JAB, 5, HG_ANGLE, 40);
set_hitbox_value(AT_JAB, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_JAB, 5, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_JAB, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_JAB, 5, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_JAB, 5, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(AT_JAB, 5, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_JAB, 5, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_JAB, 5, HG_PROJECTILE_SPRITE, sprite_get("jab_badeline_afterimage2"));
set_hitbox_value(AT_JAB, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_JAB, 5, HG_PROJECTILE_HSPEED, 12);
set_hitbox_value(AT_JAB, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_JAB, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);