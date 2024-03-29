set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_window_value(AT_UAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_UAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_UAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UAIR, 7);

set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 12);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -62);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 50);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 42);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 0.45);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, 0.45);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 301);

set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 34);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 34);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 70);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, 0.45);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, 0.45);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, 301);

set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, 42);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -50);
set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 34);
set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 68);
set_hitbox_value(AT_UAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_UAIR, 3, HG_ANGLE, 70);
set_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 3, HG_KNOCKBACK_SCALING, 0.45);
set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UAIR, 3, HG_HITPAUSE_SCALING, 0.45);
set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, 301);

set_hitbox_value(AT_UAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UAIR, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_X, -1);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_Y, -78);
set_hitbox_value(AT_UAIR, 4, HG_WIDTH, 86);
set_hitbox_value(AT_UAIR, 4, HG_HEIGHT, 42);
set_hitbox_value(AT_UAIR, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_UAIR, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_UAIR, 4, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 4, HG_KNOCKBACK_SCALING, 0.45);
set_hitbox_value(AT_UAIR, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UAIR, 4, HG_HITPAUSE_SCALING, 0.45);
set_hitbox_value(AT_UAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_UAIR, 4, HG_VISUAL_EFFECT, 301);

set_hitbox_value(AT_UAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 5, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_UAIR, 5, HG_LIFETIME, 1);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_X, -6);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_Y, -82);
set_hitbox_value(AT_UAIR, 5, HG_WIDTH, 74);
set_hitbox_value(AT_UAIR, 5, HG_HEIGHT, 38);
set_hitbox_value(AT_UAIR, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_UAIR, 5, HG_DAMAGE, 5);
set_hitbox_value(AT_UAIR, 5, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 5, HG_KNOCKBACK_SCALING, 0.45);
set_hitbox_value(AT_UAIR, 5, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UAIR, 5, HG_HITPAUSE_SCALING, 0.45);
set_hitbox_value(AT_UAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_UAIR, 5, HG_VISUAL_EFFECT, 301);

set_hitbox_value(AT_UAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 6, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_UAIR, 6, HG_LIFETIME, 1);
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_X, -42);
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_Y, -52);
set_hitbox_value(AT_UAIR, 6, HG_WIDTH, 32);
set_hitbox_value(AT_UAIR, 6, HG_HEIGHT, 66);
set_hitbox_value(AT_UAIR, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 6, HG_DAMAGE, 5);
set_hitbox_value(AT_UAIR, 6, HG_ANGLE, 110);
set_hitbox_value(AT_UAIR, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 6, HG_KNOCKBACK_SCALING, 0.45);
set_hitbox_value(AT_UAIR, 6, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UAIR, 6, HG_HITPAUSE_SCALING, 0.45);
set_hitbox_value(AT_UAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_UAIR, 6, HG_VISUAL_EFFECT, 301);

set_hitbox_value(AT_UAIR, 7, HG_MUNO_HITBOX_NAME, "Spike Spot");
set_hitbox_value(AT_UAIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 7, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 7, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_UAIR, 7, HG_LIFETIME, 1);
set_hitbox_value(AT_UAIR, 7, HG_HITBOX_X, -41);
set_hitbox_value(AT_UAIR, 7, HG_HITBOX_Y, -32);
set_hitbox_value(AT_UAIR, 7, HG_WIDTH, 30);
set_hitbox_value(AT_UAIR, 7, HG_HEIGHT, 30);
set_hitbox_value(AT_UAIR, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 7, HG_DAMAGE, 5);
set_hitbox_value(AT_UAIR, 7, HG_ANGLE, 240);
set_hitbox_value(AT_UAIR, 7, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_UAIR, 7, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 7, HG_KNOCKBACK_SCALING, 0.45);
set_hitbox_value(AT_UAIR, 7, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 7, HG_HITPAUSE_SCALING, 0.45);
set_hitbox_value(AT_UAIR, 7, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_UAIR, 7, HG_VISUAL_EFFECT, 305);