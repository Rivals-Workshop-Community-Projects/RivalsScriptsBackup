set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 6);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 5);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_NAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_NAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 5, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_NAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 6, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NAIR, 6, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_NAIR, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 6, AG_WINDOW_ANIM_FRAME_START, 10);

set_num_hitboxes(AT_NAIR, 6);

set_hitbox_value(AT_NAIR, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 100);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 60);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 6 * damage_adj);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, 0.4 * damage_adj);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, 0.35);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, round(5 * damage_adj));

set_hitbox_value(AT_NAIR, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 10);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 90);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 55);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 55);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 6.5 * damage_adj);
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, 0.15 * damage_adj);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, 0.45);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 3);

set_hitbox_value(AT_NAIR, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 5);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -120);
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 90);
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 130);
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE, 90);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 9 * damage_adj);
set_hitbox_value(AT_NAIR, 3, HG_KNOCKBACK_SCALING, 0.15 * damage_adj);
set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NAIR, 3, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, asset_get("sfx_ell_steam_hit"));
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT, vfx_steam_hit_small);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, round(5 * damage_adj));

set_hitbox_value(AT_NAIR, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 5);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 10);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NAIR, 4, HG_WIDTH, 105);
set_hitbox_value(AT_NAIR, 4, HG_HEIGHT, 65);
set_hitbox_value(AT_NAIR, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE, 260);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 4, HG_BASE_KNOCKBACK, 6 * damage_adj);
set_hitbox_value(AT_NAIR, 4, HG_KNOCKBACK_SCALING, 0.2 * damage_adj);
set_hitbox_value(AT_NAIR, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NAIR, 4, HG_HITPAUSE_SCALING, 0.25);
set_hitbox_value(AT_NAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 4, HG_TECHABLE, 3);
set_hitbox_value(AT_NAIR, 4, HG_DAMAGE, round(6 * damage_adj));

set_hitbox_value(AT_NAIR, 5, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW, 11);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NAIR, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_Y, -35);
set_hitbox_value(AT_NAIR, 5, HG_WIDTH, 140);
set_hitbox_value(AT_NAIR, 5, HG_HEIGHT, 25);
set_hitbox_value(AT_NAIR, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 5, HG_ANGLE, 35);
set_hitbox_value(AT_NAIR, 5, HG_SHAPE, 1);
set_hitbox_value(AT_NAIR, 5, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 5, HG_BASE_KNOCKBACK, 7 * damage_adj);
set_hitbox_value(AT_NAIR, 5, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_NAIR, 5, HG_KNOCKBACK_SCALING, 0.5 * damage_adj);
set_hitbox_value(AT_NAIR, 5, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NAIR, 5, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_NAIR, 5, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_NAIR, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NAIR, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NAIR, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NAIR, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NAIR, 5, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_NAIR, 5, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_NAIR, 5, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_NAIR, 5, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 5, HG_DAMAGE, 3);
