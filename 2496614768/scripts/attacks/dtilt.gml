set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_DTILT, 1, AG_WINDOW_HSPEED, 7);
set_window_value(AT_DTILT, 1, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED, 4);
set_window_value(AT_DTILT, 2, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 6);


set_window_value(AT_DTILT, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DTILT, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_DTILT, 3);

set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 26);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -42);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 70);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 76);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 280);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DTILT, 1, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DTILT, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DTILT, 1, HG_TECHABLE, 3);

set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 32);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -38);
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 46);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_DTILT, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 280);
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DTILT, 2, HG_HITSTUN_MULTIPLIER, 1);



set_hitbox_value(AT_DTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DTILT, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_X, 02);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_Y, -28);
set_hitbox_value(AT_DTILT, 3, HG_WIDTH, 46);
set_hitbox_value(AT_DTILT, 3, HG_HEIGHT, 46);
set_hitbox_value(AT_DTILT, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_DTILT, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_DTILT, 3, HG_ANGLE, 280);
set_hitbox_value(AT_DTILT, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DTILT, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DTILT, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DTILT, 3, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_DTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DTILT, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DTILT, 3, HG_HITSTUN_MULTIPLIER, 1);



