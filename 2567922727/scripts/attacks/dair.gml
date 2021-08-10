set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 7);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, sound_get("effort2"))


set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DAIR, 2);

set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 22);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, 2);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 45);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 47);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.02);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 0);

set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 40);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, 17);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 29);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 28);
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 14);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 300);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0.07);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 13);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, sound_get("dairsweetspot"))
set_hitbox_value(AT_DAIR, 2, HG_ANGLE_FLIPPER, 0);