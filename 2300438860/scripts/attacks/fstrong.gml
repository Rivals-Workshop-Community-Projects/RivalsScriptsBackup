set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSTRONG, AG_CATEGORY, 2);
set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_FSTRONG, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .15);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, sound_get("fstrong1"));

set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 30);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 19);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 16);


set_num_hitboxes(AT_FSTRONG, 2);

set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG, 5, HG_WINDOW_CREATION_FRAME, 14);
set_hitbox_value(AT_FSTRONG, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_Y, -23);
set_hitbox_value(AT_FSTRONG, 5, HG_WIDTH, 42);
set_hitbox_value(AT_FSTRONG, 5, HG_HEIGHT, 42);
set_hitbox_value(AT_FSTRONG, 5, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_FSTRONG, 5, HG_ANGLE, 270);
set_hitbox_value(AT_FSTRONG, 5, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSTRONG, 5, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_FSTRONG, 5, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FSTRONG, 5, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_FSTRONG, 5, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 5, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_FSTRONG, 5, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FSTRONG, 5, HG_HITSTUN_MULTIPLIER, 1.0);
set_hitbox_value(AT_FSTRONG, 5, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSTRONG, 5, HG_HIT_SFX, sound_get("hmed"));

set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -52);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 80);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 11);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_HITSTUN_MULTIPLIER, 1.0);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sound_get("hextra"));


set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 999);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 46);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 44);
set_hitbox_value(AT_FSTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 40);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_HITSTUN_MULTIPLIER, 1.0);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, 1);