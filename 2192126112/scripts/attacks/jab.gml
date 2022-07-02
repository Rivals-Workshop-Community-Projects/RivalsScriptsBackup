set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 6);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, sound_get("stout"));


set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_JAB, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_JAB, 2, AG_WINDOW_SFX, sound_get("stout"));
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_JAB, 2, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_CANCEL_FRAME, 7);

set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 7);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_JAB, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_SFX, sound_get("stout2"));


set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_JAB, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX, sound_get("stout2"));
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_JAB, 4, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_CANCEL_FRAME, 7);

set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 7);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_JAB, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_SFX, sound_get("shako"));

set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 25);
set_window_value(AT_JAB, 6, AG_WINDOW_TYPE, 0);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_JAB, 6, AG_WINDOW_SFX, sound_get("shako"));
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 9);


set_num_hitboxes(AT_JAB, 3);

set_hitbox_value(AT_JAB, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 8);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 11);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -53);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 54);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 47);
set_hitbox_value(AT_JAB, 1, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 120);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_JAB, 1, HG_EFFECT, 0);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_JAB, 1, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, 0);
set_hitbox_value(AT_JAB, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_JAB, 1, HG_EXTRA_CAMERA_SHAKE, 0);
set_hitbox_value(AT_JAB, 1, HG_THROWS_ROCK, 1); //stout

set_hitbox_value(AT_JAB, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 4);
set_hitbox_value(AT_JAB, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 8);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 1);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -54);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 60);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 39);
set_hitbox_value(AT_JAB, 2, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 90);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_JAB, 2, HG_EFFECT, 0);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_JAB, 2, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, 0);
set_hitbox_value(AT_JAB, 2, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_JAB, 2, HG_EXTRA_CAMERA_SHAKE, 0);
set_hitbox_value(AT_JAB, 2, HG_THROWS_ROCK, 1); //stout

set_hitbox_value(AT_JAB, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 6);
set_hitbox_value(AT_JAB, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 8);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 5);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -78);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 60);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 78);
set_hitbox_value(AT_JAB, 3, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 90);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_JAB, 3, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_JAB, 3, HG_EFFECT, 0);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 3, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, 0);
set_hitbox_value(AT_JAB, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_JAB, 3, HG_EXTRA_CAMERA_SHAKE, 0);
set_hitbox_value(AT_JAB, 3, HG_THROWS_ROCK, 1); //stout