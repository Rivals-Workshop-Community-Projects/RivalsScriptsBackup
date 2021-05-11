set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 7);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_window_value(AT_UAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 2);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 1.0);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);

set_window_value(AT_UAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_SFX, sound_get("shock"));
set_window_value(AT_UAIR, 2, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_UAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_SFX, sound_get("shock"));
set_window_value(AT_UAIR, 3, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_UAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_SFX, sound_get("shock"));
set_window_value(AT_UAIR, 4, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_UAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UAIR, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 5, AG_WINDOW_SFX, sound_get("shock"));
set_window_value(AT_UAIR, 5, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_UAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 6, AG_WINDOW_LENGTH, 5);
set_window_value(AT_UAIR, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_UAIR, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 6, AG_WINDOW_SFX, sound_get("shock"));
set_window_value(AT_UAIR, 6, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_UAIR, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 7, AG_WINDOW_LENGTH, 13);
set_window_value(AT_UAIR, 7, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_UAIR, 7, AG_WINDOW_ANIM_FRAME_START, 11);

set_num_hitboxes(AT_UAIR, 5);

set_hitbox_value(AT_UAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -62);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, -32);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 37);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 25);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 5);
set_hitbox_value(AT_UAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, sound_get("spark"));

set_hitbox_value(AT_UAIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -70);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, -14);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 37);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 25);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 5);
set_hitbox_value(AT_UAIR, 2, HG_SHAPE, 2);;
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, sound_get("spark"));

set_hitbox_value(AT_UAIR, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 3 );
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -74);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, 2);
set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 37);
set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 25);
set_hitbox_value(AT_UAIR, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 3, HG_ANGLE, 5);
set_hitbox_value(AT_UAIR, 3, HG_SHAPE, 2)
set_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UAIR, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, sound_get("spark"));

set_hitbox_value(AT_UAIR, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW, 5);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_UAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_Y, -66);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_X, 22);
set_hitbox_value(AT_UAIR, 4, HG_WIDTH, 37);
set_hitbox_value(AT_UAIR, 4, HG_HEIGHT, 25);
set_hitbox_value(AT_UAIR, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_UAIR, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 4, HG_ANGLE, 5);
set_hitbox_value(AT_UAIR, 4, HG_SHAPE, 2);
set_hitbox_value(AT_UAIR, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UAIR, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_UAIR, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UAIR, 4, HG_HIT_SFX, sound_get("spark"));

set_hitbox_value(AT_UAIR, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_UAIR, 5, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 5, HG_WINDOW, 6);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_UAIR, 5, HG_LIFETIME, 9);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_Y, -50);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_X, 38);
set_hitbox_value(AT_UAIR, 5, HG_WIDTH, 57);
set_hitbox_value(AT_UAIR, 5, HG_HEIGHT, 45);
set_hitbox_value(AT_UAIR, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_UAIR, 5, HG_DAMAGE, 5);
set_hitbox_value(AT_UAIR, 5, HG_ANGLE, 85);
set_hitbox_value(AT_UAIR, 5, HG_SHAPE, 2);
set_hitbox_value(AT_UAIR, 5, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_UAIR, 5, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_UAIR, 5, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_UAIR, 5, HG_HIT_SFX, sound_get("bigspark"));