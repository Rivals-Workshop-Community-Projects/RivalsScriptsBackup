set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_SFX, sound_get("Acrobatics"));

set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 4);

set_num_hitboxes(AT_NAIR,9);

set_hitbox_value(AT_NAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, -30);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 55);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_NAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 30);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -35);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_NAIR, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, 15);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -60);
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 40);
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE, 55);
set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 3, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_NAIR, 4, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, -15);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_NAIR, 5, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_NAIR, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_NAIR, 6, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 6, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_NAIR, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_X, -15);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_Y, -60);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_NAIR, 7, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 7, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 7, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_NAIR, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_X, 30);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_Y, -45);
set_hitbox_value(AT_NAIR, 7, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_NAIR, 8, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 8, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 8, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_NAIR, 8, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_X, -20);
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_Y, -5);
set_hitbox_value(AT_NAIR, 8, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_NAIR, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 9, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 9, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 9, HG_HITBOX_X, 20);
set_hitbox_value(AT_NAIR, 9, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NAIR, 9, HG_WIDTH, 60);
set_hitbox_value(AT_NAIR, 9, HG_HEIGHT, 80);
set_hitbox_value(AT_NAIR, 9, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 9, HG_DAMAGE, 3);
set_hitbox_value(AT_NAIR, 9, HG_ANGLE, 310);
set_hitbox_value(AT_NAIR, 9, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 9, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_NAIR, 9, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NAIR, 9, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_NAIR, 9, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_NAIR, 9, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_NAIR, 9, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_NAIR, 9, HG_HITBOX_GROUP, 2);