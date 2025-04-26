set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_DTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_SFX, sound_get("crack"));

set_window_value(AT_DTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_DTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_DTILT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 5, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAME_START, 8);


set_num_hitboxes(AT_DTILT,4);

set_hitbox_value(AT_DTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 11);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 58);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 95);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 70);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_DTILT, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 50);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -107);

set_hitbox_value(AT_DTILT, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_X, 85);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_Y, -154);

set_hitbox_value(AT_DTILT, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 4, HG_WINDOW, 4);
set_hitbox_value(AT_DTILT, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_X, 68);
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_Y, -117);
set_hitbox_value(AT_DTILT, 4, HG_WIDTH, 58);
set_hitbox_value(AT_DTILT, 4, HG_HEIGHT, 65);
set_hitbox_value(AT_DTILT, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DTILT, 4, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 4, HG_DAMAGE, 6);
set_hitbox_value(AT_DTILT, 4, HG_ANGLE, 45);
set_hitbox_value(AT_DTILT, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DTILT, 4, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DTILT, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DTILT, 4, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_DTILT, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));