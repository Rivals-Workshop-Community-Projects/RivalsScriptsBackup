set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USTRONG, AG_CATEGORY, 0);
set_attack_value(AT_USTRONG, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_OFF_LEDGE, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 28);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sfx_steam1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_USTRONG, 2, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.4);
set_window_value(AT_USTRONG, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.4);

set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX, sfx_steam_cloth);
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_USTRONG, 3, AG_WINDOW_CUSTOM_GRAVITY, 1.5);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.4);
set_window_value(AT_USTRONG, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.4);

set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_USTRONG, 4, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_CUSTOM_GRAVITY, 1.5);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.4);
set_window_value(AT_USTRONG, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.4);

set_num_hitboxes(AT_USTRONG, 9);

set_hitbox_value(AT_USTRONG, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -110);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 40);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 150);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 75);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, vfx_steam_hit_small);
set_hitbox_value(AT_USTRONG, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_ell_steam_hit"));
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USTRONG, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -110);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 40);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 150);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 80);
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USTRONG, 2, HG_TECHABLE, 3);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, vfx_steam_hit_small);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_ell_steam_hit"));
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USTRONG, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -110);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 40);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 150);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 75);
set_hitbox_value(AT_USTRONG, 3, HG_SHAPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USTRONG, 3, HG_TECHABLE, 3);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, vfx_steam_hit_small);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_ell_steam_hit"));
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USTRONG, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -120);
set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 40);
set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 140);
set_hitbox_value(AT_USTRONG, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE, 80);
set_hitbox_value(AT_USTRONG, 4, HG_SHAPE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT, vfx_steam_hit_small);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USTRONG, 4, HG_TECHABLE, 3);
set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, asset_get("sfx_ell_steam_hit"));
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USTRONG, 5, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW_CREATION_FRAME, 20);
set_hitbox_value(AT_USTRONG, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_Y, -130);
set_hitbox_value(AT_USTRONG, 5, HG_WIDTH, 40);
set_hitbox_value(AT_USTRONG, 5, HG_HEIGHT, 130);
set_hitbox_value(AT_USTRONG, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 5, HG_ANGLE, 75);
set_hitbox_value(AT_USTRONG, 5, HG_SHAPE, 1);
set_hitbox_value(AT_USTRONG, 5, HG_VISUAL_EFFECT, vfx_steam_hit_small);
set_hitbox_value(AT_USTRONG, 5, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USTRONG, 5, HG_TECHABLE, 3);
set_hitbox_value(AT_USTRONG, 5, HG_HIT_SFX, asset_get("sfx_ell_steam_hit"));
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USTRONG, 6, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 6, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 6, HG_WINDOW_CREATION_FRAME, 24);
set_hitbox_value(AT_USTRONG, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_Y, -130);
set_hitbox_value(AT_USTRONG, 6, HG_WIDTH, 40);
set_hitbox_value(AT_USTRONG, 6, HG_HEIGHT, 130);
set_hitbox_value(AT_USTRONG, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 6, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 6, HG_ANGLE, 80);
set_hitbox_value(AT_USTRONG, 6, HG_SHAPE, 1);
set_hitbox_value(AT_USTRONG, 6, HG_VISUAL_EFFECT, vfx_steam_hit_small);
set_hitbox_value(AT_USTRONG, 6, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_USTRONG, 6, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USTRONG, 6, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USTRONG, 6, HG_TECHABLE, 3);
set_hitbox_value(AT_USTRONG, 6, HG_HIT_SFX, asset_get("sfx_ell_steam_hit"));
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USTRONG, 7, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 7, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 7, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_Y, -130);
set_hitbox_value(AT_USTRONG, 7, HG_WIDTH, 40);
set_hitbox_value(AT_USTRONG, 7, HG_HEIGHT, 200);
set_hitbox_value(AT_USTRONG, 7, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 7, HG_DAMAGE, 6);
set_hitbox_value(AT_USTRONG, 7, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 7, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_USTRONG, 7, HG_SHAPE, 1);
set_hitbox_value(AT_USTRONG, 7, HG_VISUAL_EFFECT, vfx_steam_hit_large);
set_hitbox_value(AT_USTRONG, 7, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 7, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_USTRONG, 7, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG, 7, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 7, HG_HIT_SFX, asset_get("sfx_icehit_heavy1"));

set_hitbox_value(AT_USTRONG, 8, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_USTRONG, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 8, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 8, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG, 8, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 8, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 8, HG_HITBOX_Y, -140);
set_hitbox_value(AT_USTRONG, 8, HG_WIDTH, 80);
set_hitbox_value(AT_USTRONG, 8, HG_HEIGHT, 120);
set_hitbox_value(AT_USTRONG, 8, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 8, HG_DAMAGE, 4);
set_hitbox_value(AT_USTRONG, 8, HG_ANGLE, 75);
set_hitbox_value(AT_USTRONG, 8, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USTRONG, 8, HG_SHAPE, 1);
set_hitbox_value(AT_USTRONG, 8, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 8, HG_VISUAL_EFFECT, vfx_steam_hit_small);
set_hitbox_value(AT_USTRONG, 8, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_USTRONG, 8, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USTRONG, 8, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_USTRONG, 8, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 8, HG_HIT_SFX, asset_get("sfx_ell_steam_hit"));

set_hitbox_value(AT_USTRONG, 9, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_USTRONG, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 9, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 9, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG, 9, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 9, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 9, HG_HITBOX_Y, -45);
set_hitbox_value(AT_USTRONG, 9, HG_WIDTH, 100);
set_hitbox_value(AT_USTRONG, 9, HG_HEIGHT, 35);
set_hitbox_value(AT_USTRONG, 9, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 9, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 9, HG_ANGLE, 35);
set_hitbox_value(AT_USTRONG, 9, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 9, HG_VISUAL_EFFECT, vfx_steam_hit_small);
set_hitbox_value(AT_USTRONG, 9, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_USTRONG, 9, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 9, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USTRONG, 9, HG_TECHABLE, 3);
set_hitbox_value(AT_USTRONG, 9, HG_HIT_SFX, asset_get("sfx_ell_steam_hit"));
set_hitbox_value(AT_USTRONG, 9, HG_HITBOX_GROUP, -1);
