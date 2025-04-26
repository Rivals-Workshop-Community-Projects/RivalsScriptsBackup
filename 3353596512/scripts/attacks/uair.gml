set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair_yield"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));
set_attack_value(AT_UAIR, AG_MUNO_ATTACK_NAME, "UAir (Yield Sign)");

//startup
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, sound_get("shovel_swing"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 14);

//active
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);

//endlag
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 5);

set_num_hitboxes(AT_UAIR, 2);

//swing
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 18);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 54);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_UAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 11);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, .85);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, sound_get("shovel_hit"));
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 304);

set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, -8);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -90);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 78);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 46);
set_hitbox_value(AT_UAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 11);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, .85);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, sound_get("shovel_hit"));
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, 304);