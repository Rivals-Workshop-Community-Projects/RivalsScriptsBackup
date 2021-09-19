set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("dattack2"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 3);
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("dattack2"));

//flip
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX, sound_get("swing_weak3"));

//atj2
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 3);

//end
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_EXTRA_1, 1);

set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, -30);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 80);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 120);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
