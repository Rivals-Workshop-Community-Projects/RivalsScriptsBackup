set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 1);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

//Attack 1
set_window_value(AT_JAB, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_CANCEL_FRAME, 15);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, sound_get("swing2"));

//Attack 2
set_window_value(AT_JAB, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_JAB, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_CANCEL_FRAME, 15);
set_window_value(AT_JAB, 2, AG_WINDOW_SFX, sound_get("swing2"));

//Attack 3
set_window_value(AT_JAB, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 25);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_JAB, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 20);
set_window_value(AT_JAB, 3, AG_WINDOW_SFX, sound_get("swing3"));

set_num_hitboxes(AT_JAB, 3);

set_hitbox_value(AT_JAB, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 1);
set_hitbox_value(AT_JAB, 1, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_JAB, 1, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -48);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 83);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 102);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 30);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 1.5);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, sound_get("hit1"));
set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_JAB, 1, HG_HITSTUN_MULTIPLIER, 3);

set_hitbox_value(AT_JAB, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 2, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_JAB, 2, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 30);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 94);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 58);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 15);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 3.0);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, sound_get("hit2"));
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_JAB, 2, HG_HITSTUN_MULTIPLIER, 1.75);

set_hitbox_value(AT_JAB, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 3);
set_hitbox_value(AT_JAB, 3, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 10);
set_hitbox_value(AT_JAB, 3, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 6);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -32);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 139);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 62);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 30);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_JAB, 3, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, sound_get("ftilt"));
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, 3);