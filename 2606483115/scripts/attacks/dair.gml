set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 10);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, sfx_steam_cloth);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 21);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DAIR, 12);

set_hitbox_value(AT_DAIR, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, -2);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 55);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 55);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 0);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 2.5);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, vfx_steam_hit_small);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 1, HG_GROUNDEDNESS, 0);

set_hitbox_value(AT_DAIR, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 2);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -5);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 45);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 45);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 25);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, vfx_steam_hit_small);
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 2, HG_GROUNDEDNESS, 0);

set_hitbox_value(AT_DAIR, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, -2);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 55);
set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 55);
set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 0);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 2.5);
set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT, vfx_steam_hit_small);
set_hitbox_value(AT_DAIR, 3, HG_GROUNDEDNESS, 0);

set_hitbox_value(AT_DAIR, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X, 2);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, -5);
set_hitbox_value(AT_DAIR, 4, HG_WIDTH, 45);
set_hitbox_value(AT_DAIR, 4, HG_HEIGHT, 45);
set_hitbox_value(AT_DAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_DAIR, 4, HG_ANGLE, 25);
set_hitbox_value(AT_DAIR, 4, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DAIR, 4, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DAIR, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DAIR, 4, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 4, HG_VISUAL_EFFECT, vfx_steam_hit_small);
set_hitbox_value(AT_DAIR, 4, HG_GROUNDEDNESS, 0);

set_hitbox_value(AT_DAIR, 5, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_DAIR, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_X, -2);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DAIR, 5, HG_WIDTH, 55);
set_hitbox_value(AT_DAIR, 5, HG_HEIGHT, 55);
set_hitbox_value(AT_DAIR, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_DAIR, 5, HG_ANGLE, 0);
set_hitbox_value(AT_DAIR, 5, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DAIR, 5, HG_BASE_KNOCKBACK, 2.5);
set_hitbox_value(AT_DAIR, 5, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DAIR, 5, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 5, HG_VISUAL_EFFECT, vfx_steam_hit_small);
set_hitbox_value(AT_DAIR, 5, HG_GROUNDEDNESS, 0);

set_hitbox_value(AT_DAIR, 6, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 6, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_DAIR, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_X, 2);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_Y, -5);
set_hitbox_value(AT_DAIR, 6, HG_WIDTH, 45);
set_hitbox_value(AT_DAIR, 6, HG_HEIGHT, 45);
set_hitbox_value(AT_DAIR, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 6, HG_DAMAGE, 1);
set_hitbox_value(AT_DAIR, 6, HG_ANGLE, 25);
set_hitbox_value(AT_DAIR, 6, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DAIR, 6, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DAIR, 6, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DAIR, 6, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 6, HG_VISUAL_EFFECT, vfx_steam_hit_small);
set_hitbox_value(AT_DAIR, 6, HG_GROUNDEDNESS, 0);

set_hitbox_value(AT_DAIR, 7, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 7, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 7, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_DAIR, 7, HG_LIFETIME, 4);
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_X, -2);
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DAIR, 7, HG_WIDTH, 55);
set_hitbox_value(AT_DAIR, 7, HG_HEIGHT, 55);
set_hitbox_value(AT_DAIR, 7, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 7, HG_DAMAGE, 1);
set_hitbox_value(AT_DAIR, 7, HG_ANGLE, 0);
set_hitbox_value(AT_DAIR, 7, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DAIR, 7, HG_BASE_KNOCKBACK, 2.5);
set_hitbox_value(AT_DAIR, 7, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DAIR, 7, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_DAIR, 7, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 7, HG_VISUAL_EFFECT, vfx_steam_hit_small);
set_hitbox_value(AT_DAIR, 7, HG_GROUNDEDNESS, 0);

set_hitbox_value(AT_DAIR, 8, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 8, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 8, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_DAIR, 8, HG_LIFETIME, 4);
set_hitbox_value(AT_DAIR, 8, HG_HITBOX_X, 2);
set_hitbox_value(AT_DAIR, 8, HG_HITBOX_Y, -5);
set_hitbox_value(AT_DAIR, 8, HG_WIDTH, 45);
set_hitbox_value(AT_DAIR, 8, HG_HEIGHT, 45);
set_hitbox_value(AT_DAIR, 8, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 8, HG_DAMAGE, 1);
set_hitbox_value(AT_DAIR, 8, HG_ANGLE, 25);
set_hitbox_value(AT_DAIR, 8, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DAIR, 8, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DAIR, 8, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DAIR, 8, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DAIR, 8, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_DAIR, 8, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 8, HG_VISUAL_EFFECT, vfx_steam_hit_small);
set_hitbox_value(AT_DAIR, 8, HG_GROUNDEDNESS, 0);

set_hitbox_value(AT_DAIR, 9, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 9, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 9, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_DAIR, 9, HG_LIFETIME, 4);
set_hitbox_value(AT_DAIR, 9, HG_HITBOX_X, -2);
set_hitbox_value(AT_DAIR, 9, HG_HITBOX_Y, -27);
set_hitbox_value(AT_DAIR, 9, HG_WIDTH, 60);
set_hitbox_value(AT_DAIR, 9, HG_HEIGHT, 70);
set_hitbox_value(AT_DAIR, 9, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 9, HG_DAMAGE, 3);
set_hitbox_value(AT_DAIR, 9, HG_ANGLE, 90);
set_hitbox_value(AT_DAIR, 9, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DAIR, 9, HG_KNOCKBACK_SCALING, 0.25);
set_hitbox_value(AT_DAIR, 9, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DAIR, 9, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DAIR, 9, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DAIR, 9, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_DAIR, 9, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 9, HG_VISUAL_EFFECT, vfx_steam_hit_small);
set_hitbox_value(AT_DAIR, 9, HG_GROUNDEDNESS, 0);

set_hitbox_value(AT_DAIR, 10, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 10, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 10, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_DAIR, 10, HG_LIFETIME, 4);
set_hitbox_value(AT_DAIR, 10, HG_HITBOX_X, 4);
set_hitbox_value(AT_DAIR, 10, HG_HITBOX_Y, 8);
set_hitbox_value(AT_DAIR, 10, HG_WIDTH, 25);
set_hitbox_value(AT_DAIR, 10, HG_HEIGHT, 25);
set_hitbox_value(AT_DAIR, 10, HG_PRIORITY, 3);
set_hitbox_value(AT_DAIR, 10, HG_DAMAGE, 5);
set_hitbox_value(AT_DAIR, 10, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 10, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 10, HG_KNOCKBACK_SCALING, 0.55);
set_hitbox_value(AT_DAIR, 10, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DAIR, 10, HG_VISUAL_EFFECT, vfx_steam_hit_large);
set_hitbox_value(AT_DAIR, 10, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_DAIR, 10, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DAIR, 10, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_DAIR, 10, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 10, HG_GROUNDEDNESS, 0);