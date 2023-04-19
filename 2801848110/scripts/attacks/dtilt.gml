set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DTILT, AG_CATEGORY, 2);
set_attack_value(AT_DTILT, AG_OFF_LEDGE, 1);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_DTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DTILT, 3);


set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 24);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -8);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 60);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_icehit_weak1"));
set_hitbox_value(AT_DTILT, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 303);

set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 30);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -38);
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 46);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_DTILT, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_icehit_medium2"));
set_hitbox_value(AT_DTILT, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_GROUP, 1);



set_hitbox_value(AT_DTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DTILT, 3, HG_LIFETIME, 61);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_X, 666);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_Y, 666);
set_hitbox_value(AT_DTILT, 3, HG_WIDTH, 1);
set_hitbox_value(AT_DTILT, 3, HG_HEIGHT, 1);
set_hitbox_value(AT_DTILT, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 3, HG_PRIORITY, 6);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_GROUP, 6);
set_hitbox_value(AT_DTILT, 3, HG_DAMAGE, 666);
set_hitbox_value(AT_DTILT, 3, HG_ANGLE, 666);
set_hitbox_value(AT_DTILT, 3, HG_BASE_KNOCKBACK, 666);
set_hitbox_value(AT_DTILT, 3, HG_KNOCKBACK_SCALING, 666);
set_hitbox_value(AT_DTILT, 3, HG_BASE_HITPAUSE, 666);
set_hitbox_value(AT_DTILT, 3, HG_HITPAUSE_SCALING, 666);
set_hitbox_value(AT_DTILT, 3, HG_VISUAL_EFFECT_X_OFFSET, 666);
set_hitbox_value(AT_DTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_DTILT, 3, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DTILT, 3, HG_HITSTUN_MULTIPLIER, 666);