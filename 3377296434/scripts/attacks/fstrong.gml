set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .3);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_FSTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 8);

set_num_hitboxes(AT_FSTRONG,2);

set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 61);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 100);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 74);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 65);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sound_get("sfx_punch"));

set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 70);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -12);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 123);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 29);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 12);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 40);
set_hitbox_value(AT_FSTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));