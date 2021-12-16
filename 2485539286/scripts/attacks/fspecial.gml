set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 6);


set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);


set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, 20);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 2)

set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 26);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSPECIAL, 2);

set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 02);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 90);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_FSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, sound_get("slicel"));
set_hitbox_value(AT_FSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_SDI_MULTIPLIER, 0.01);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 15);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 02);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -36);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 96);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 96);
set_hitbox_value(AT_FSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_FSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_LOCKOUT, 5);