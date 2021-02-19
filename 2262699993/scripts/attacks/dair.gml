set_attack_value(AT_DAIR, AG_CATEGORY, 2);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 6);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, sound_get("slowspin"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_DAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_DAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_DAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAME_START, 9);

set_num_hitboxes(AT_DAIR,5);

set_hitbox_value(AT_DAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -13);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 50);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 75);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 361);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, sound_get("hit2"));
set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 9);

set_hitbox_value(AT_DAIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -13);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 50);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 75);
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 10);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 361);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, sound_get("hit2"));
set_hitbox_value(AT_DAIR, 2, HG_ANGLE_FLIPPER, 9);

set_hitbox_value(AT_DAIR, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 4);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, -13);
set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 50);
set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 75);
set_hitbox_value(AT_DAIR, 3, HG_SHAPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 10);
set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 361);
set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, sound_get("hit2"));
set_hitbox_value(AT_DAIR, 3, HG_ANGLE_FLIPPER, 9);

set_hitbox_value(AT_DAIR, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 5);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, -13);
set_hitbox_value(AT_DAIR, 4, HG_WIDTH, 50);
set_hitbox_value(AT_DAIR, 4, HG_HEIGHT, 75);
set_hitbox_value(AT_DAIR, 4, HG_SHAPE, 1);
set_hitbox_value(AT_DAIR, 4, HG_PRIORITY, 10);
set_hitbox_value(AT_DAIR, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 4, HG_ANGLE, 361);
set_hitbox_value(AT_DAIR, 4, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DAIR, 4, HG_HIT_SFX, sound_get("hit2"));
set_hitbox_value(AT_DAIR, 4, HG_ANGLE_FLIPPER, 9);

set_hitbox_value(AT_DAIR, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW, 6);
set_hitbox_value(AT_DAIR, 5, HG_LIFETIME, 6);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_Y, -13);
set_hitbox_value(AT_DAIR, 5, HG_WIDTH, 50);
set_hitbox_value(AT_DAIR, 5, HG_HEIGHT, 75);
set_hitbox_value(AT_DAIR, 5, HG_SHAPE, 1);
set_hitbox_value(AT_DAIR, 5, HG_PRIORITY, 10);
set_hitbox_value(AT_DAIR, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 5, HG_ANGLE, 361);
set_hitbox_value(AT_DAIR, 5, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 5, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_DAIR, 5, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DAIR, 5, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DAIR, 5, HG_HIT_SFX, sound_get("hit2"));
set_hitbox_value(AT_DAIR, 5, HG_ANGLE_FLIPPER, 8);