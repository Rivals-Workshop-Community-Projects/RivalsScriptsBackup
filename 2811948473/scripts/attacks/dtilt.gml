set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 6);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, sound_get("swipe"));

set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_SFX, sound_get("blipblip"));

set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DTILT, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_CANCEL_FRAME, 0);





set_window_value(AT_DTILT, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DTILT, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_SFX, sound_get("swipe"));

set_window_value(AT_DTILT, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DTILT, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 5, AG_WINDOW_SFX, sound_get("blipblip"));

set_window_value(AT_DTILT, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTILT, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DTILT, 6, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_DTILT, 6, AG_WINDOW_CANCEL_FRAME, 0);

set_num_hitboxes(AT_DTILT, 3);

set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 28);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -7);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 64);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 22);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 80);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, sound_get("hit_weak"));
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 40);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 81);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 23);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 80);
set_hitbox_value(AT_DTILT, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, sound_get("hit_weak"));
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW_CREATION_FRAME, 3);

set_hitbox_value(AT_DTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 3, HG_WINDOW, 5);
set_hitbox_value(AT_DTILT, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_X, 37);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_Y, -14);
set_hitbox_value(AT_DTILT, 3, HG_WIDTH, 81);
set_hitbox_value(AT_DTILT, 3, HG_HEIGHT, 23);
set_hitbox_value(AT_DTILT, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_DTILT, 3, HG_ANGLE, 50);
set_hitbox_value(AT_DTILT, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DTILT, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DTILT, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DTILT, 3, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DTILT, 3, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_DTILT, 3, HG_HIT_SFX, sound_get("hit_weak"));
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_GROUP, 2);
