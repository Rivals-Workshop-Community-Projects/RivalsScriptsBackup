set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, sound_get("sweep"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_DTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 6);

set_num_hitboxes(AT_DTILT, 3);

set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 31);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -5);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 52);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 11);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 80);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, sound_get("hit_awful"));
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW_CREATION_FRAME, 3);

set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 30);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -5);
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 48);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 26);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 80);
set_hitbox_value(AT_DTILT, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, 0.30);
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, 0.20);
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, sound_get("hit_punch"));
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_X, 69);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_Y, -5);
set_hitbox_value(AT_DTILT, 3, HG_WIDTH, 48);
set_hitbox_value(AT_DTILT, 3, HG_HEIGHT, 26);
set_hitbox_value(AT_DTILT, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_DTILT, 3, HG_ANGLE, 80);
set_hitbox_value(AT_DTILT, 3, HG_SHAPE, 1);
set_hitbox_value(AT_DTILT, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DTILT, 3, HG_KNOCKBACK_SCALING, 0.10);
set_hitbox_value(AT_DTILT, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DTILT, 3, HG_HITPAUSE_SCALING, 0.20);
set_hitbox_value(AT_DTILT, 3, HG_HIT_SFX, sound_get("hit_punch"));
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DTILT, 3, HG_WINDOW_CREATION_FRAME, 3);