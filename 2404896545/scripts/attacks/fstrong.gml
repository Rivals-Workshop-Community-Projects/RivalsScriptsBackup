set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 6);
set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

//Startup
set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX, sound_get("one2"));

//Hit1
set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, sound_get("one3"));

//Hit2
set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_SFX, sound_get("one3"));

//Hit3
set_window_value(AT_FSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_SFX, sound_get("two3"));

//Hit4
set_window_value(AT_FSTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 4);

//Endlag
set_window_value(AT_FSTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_HAS_WHIFFLAG, 10);

set_num_hitboxes(AT_FSTRONG, 4);

set_hitbox_value(AT_FSTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 60);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

set_hitbox_value(AT_FSTRONG, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 70);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 45);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

set_hitbox_value(AT_FSTRONG, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 5);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 105);
set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 65);
set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 50);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 1.3);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_LOCKOUT, 10);

set_hitbox_value(AT_FSTRONG, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_X, 100);
set_hitbox_value(AT_FSTRONG, 4, HG_WIDTH, 55);
set_hitbox_value(AT_FSTRONG, 4, HG_HEIGHT, 50);
set_hitbox_value(AT_FSTRONG, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_ANGLE, 90);
set_hitbox_value(AT_FSTRONG, 4, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSTRONG, 4, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_GROUP, 6);