set_attack_value(AT_EXTRA_1, AG_MUNO_ATTACK_NAME, "FTilt 2");
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("ftilt2"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 3);
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("ftilt2_hurt"));

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_EXTRA_1,1);

set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, 48);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 64);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 7); // 4
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 45);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));