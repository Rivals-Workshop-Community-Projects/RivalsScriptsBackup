set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_NAIR, 3, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_NAIR, 5, AG_WINDOW_LENGTH, 11);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_NAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NAIR,4);

set_hitbox_value(AT_NAIR, 1, HG_MUNO_HITBOX_NAME, "Sour Linker");
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 5);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 70);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 20);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 70);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_NAIR, 1, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, sound_get("knife_medium1"));

set_hitbox_value(AT_NAIR, 2, HG_MUNO_HITBOX_NAME, "Sour Launcher");
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -25);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, -5);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 80);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 50);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, sound_get("knife_medium2"));
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_NAIR, 3, HG_MUNO_HITBOX_NAME, "Tipper Linker");
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -15);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, 20);
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 94);
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NAIR, 3, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_NAIR, 3, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, sound_get("knife_tipper2"));

set_hitbox_value(AT_NAIR, 4, HG_MUNO_HITBOX_NAME, "Tipper Launcher");
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -25);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, 10);
set_hitbox_value(AT_NAIR, 4, HG_WIDTH, 100);
set_hitbox_value(AT_NAIR, 4, HG_HEIGHT, 40);
set_hitbox_value(AT_NAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE, 50);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NAIR, 4, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_NAIR, 4, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_NAIR, 4, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_NAIR, 4, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_NAIR, 4, HG_HIT_SFX, sound_get("knife_tipper"));
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP, 2);