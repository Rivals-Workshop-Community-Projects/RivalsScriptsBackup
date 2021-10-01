set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));
set_attack_value(AT_FTILT, AG_CATEGORY, 2);

set_window_value(AT_FTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, sound_get("whoosh"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_FTILT, 1, AG_WINDOW_INVINCIBILITY, 1);

set_window_value(AT_FTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED, 12);
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_FTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FTILT,2);

set_hitbox_value(AT_FTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -38);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 62);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 55);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, sound_get("slam1"));

set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 32);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 58);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 76);
set_hitbox_value(AT_FTILT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 65);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, sound_get("tinyslam"));