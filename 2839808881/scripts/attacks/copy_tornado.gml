set_attack_value(AT_COPY_TORNADO, AG_CATEGORY, 2);
set_attack_value(AT_COPY_TORNADO, AG_SPRITE, sprite_get("ability_tornado"));
set_attack_value(AT_COPY_TORNADO, AG_HURTBOX_SPRITE, sprite_get("ability_tornado_hurt"));
set_attack_value(AT_COPY_TORNADO, AG_NUM_WINDOWS, 5);
set_attack_value(AT_COPY_TORNADO, AG_OFF_LEDGE, 1);

//startup
set_window_value(AT_COPY_TORNADO, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_TORNADO, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_COPY_TORNADO, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_COPY_TORNADO, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_COPY_TORNADO, 1, AG_WINDOW_SFX, sound_get("sfx_krdl_tornado"));
set_window_value(AT_COPY_TORNADO, 1, AG_WINDOW_SFX_FRAME, 11);

//active/rising
set_window_value(AT_COPY_TORNADO, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_COPY_TORNADO, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_COPY_TORNADO, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_COPY_TORNADO, 2, AG_WINDOW_ANIM_FRAME_START, 5);

//inbetween normal and finishing
set_window_value(AT_COPY_TORNADO, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_TORNADO, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_COPY_TORNADO, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_COPY_TORNADO, 3, AG_WINDOW_ANIM_FRAME_START, 9);

//final hit
set_window_value(AT_COPY_TORNADO, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_TORNADO, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_COPY_TORNADO, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_COPY_TORNADO, 4, AG_WINDOW_ANIM_FRAME_START, 14);

//endlag
set_window_value(AT_COPY_TORNADO, 5, AG_WINDOW_TYPE, 7);
set_window_value(AT_COPY_TORNADO, 5, AG_WINDOW_LENGTH, 24);
set_window_value(AT_COPY_TORNADO, 5, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_COPY_TORNADO, 5, AG_WINDOW_ANIM_FRAME_START, 15);

set_num_hitboxes(AT_COPY_TORNADO, 10);

// ==========

//Window 2 Multihit Hitboxes
set_hitbox_value(AT_COPY_TORNADO, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_COPY_TORNADO, 1, HG_WINDOW, 2);
set_hitbox_value(AT_COPY_TORNADO, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_COPY_TORNADO, 1, HG_HITBOX_X, -3);
set_hitbox_value(AT_COPY_TORNADO, 1, HG_HITBOX_Y, -31);
set_hitbox_value(AT_COPY_TORNADO, 1, HG_WIDTH, 65);
set_hitbox_value(AT_COPY_TORNADO, 1, HG_HEIGHT, 68);
set_hitbox_value(AT_COPY_TORNADO, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_COPY_TORNADO, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_COPY_TORNADO, 1, HG_ANGLE, 90);
set_hitbox_value(AT_COPY_TORNADO, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_COPY_TORNADO, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_COPY_TORNADO, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_COPY_TORNADO, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_COPY_TORNADO, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_COPY_TORNADO, 1, HG_VISUAL_EFFECT, 194);

set_hitbox_value(AT_COPY_TORNADO, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_COPY_TORNADO, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_COPY_TORNADO, 2, HG_WINDOW, 2);
set_hitbox_value(AT_COPY_TORNADO, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_COPY_TORNADO, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_COPY_TORNADO, 2, HG_HITBOX_X, -3);
set_hitbox_value(AT_COPY_TORNADO, 2, HG_HITBOX_Y, -31);
set_hitbox_value(AT_COPY_TORNADO, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_COPY_TORNADO, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_COPY_TORNADO, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_COPY_TORNADO, 3, HG_WINDOW, 2);
set_hitbox_value(AT_COPY_TORNADO, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_COPY_TORNADO, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_COPY_TORNADO, 3, HG_HITBOX_X, -3);
set_hitbox_value(AT_COPY_TORNADO, 3, HG_HITBOX_Y, -31);
set_hitbox_value(AT_COPY_TORNADO, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_COPY_TORNADO, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_COPY_TORNADO, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_COPY_TORNADO, 4, HG_WINDOW, 2);
set_hitbox_value(AT_COPY_TORNADO, 4, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_COPY_TORNADO, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_COPY_TORNADO, 4, HG_HITBOX_X, -3);
set_hitbox_value(AT_COPY_TORNADO, 4, HG_HITBOX_Y, -31);
set_hitbox_value(AT_COPY_TORNADO, 4, HG_HITBOX_GROUP, -1);

// ==========

// Window 3 Multihit Hitboxes

set_hitbox_value(AT_COPY_TORNADO, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_COPY_TORNADO, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_COPY_TORNADO, 5, HG_WINDOW, 3);
set_hitbox_value(AT_COPY_TORNADO, 5, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_COPY_TORNADO, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_COPY_TORNADO, 5, HG_HITBOX_X, -3);
set_hitbox_value(AT_COPY_TORNADO, 5, HG_HITBOX_Y, -31);
set_hitbox_value(AT_COPY_TORNADO, 5, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_COPY_TORNADO, 6, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_COPY_TORNADO, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_COPY_TORNADO, 6, HG_WINDOW, 3);
set_hitbox_value(AT_COPY_TORNADO, 6, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_COPY_TORNADO, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_COPY_TORNADO, 6, HG_HITBOX_X, -3);
set_hitbox_value(AT_COPY_TORNADO, 6, HG_HITBOX_Y, -31);
set_hitbox_value(AT_COPY_TORNADO, 6, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_COPY_TORNADO, 7, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_COPY_TORNADO, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_COPY_TORNADO, 7, HG_WINDOW, 3);
set_hitbox_value(AT_COPY_TORNADO, 7, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_COPY_TORNADO, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_COPY_TORNADO, 7, HG_HITBOX_X, -3);
set_hitbox_value(AT_COPY_TORNADO, 7, HG_HITBOX_Y, -31);
set_hitbox_value(AT_COPY_TORNADO, 7, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_COPY_TORNADO, 8, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_COPY_TORNADO, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_COPY_TORNADO, 8, HG_WINDOW, 3);
set_hitbox_value(AT_COPY_TORNADO, 8, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_COPY_TORNADO, 8, HG_LIFETIME, 3);
set_hitbox_value(AT_COPY_TORNADO, 8, HG_HITBOX_X, -3);
set_hitbox_value(AT_COPY_TORNADO, 8, HG_HITBOX_Y, -31);
set_hitbox_value(AT_COPY_TORNADO, 8, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_COPY_TORNADO, 9, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_COPY_TORNADO, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_COPY_TORNADO, 9, HG_WINDOW, 3);
set_hitbox_value(AT_COPY_TORNADO, 9, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_COPY_TORNADO, 9, HG_LIFETIME, 3);
set_hitbox_value(AT_COPY_TORNADO, 9, HG_HITBOX_X, -3);
set_hitbox_value(AT_COPY_TORNADO, 9, HG_HITBOX_Y, -31);
set_hitbox_value(AT_COPY_TORNADO, 9, HG_HITBOX_GROUP, -1);

//finisher
set_hitbox_value(AT_COPY_TORNADO, 10, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_COPY_TORNADO, 10, HG_WINDOW, 4);
set_hitbox_value(AT_COPY_TORNADO, 10, HG_LIFETIME, 5);
set_hitbox_value(AT_COPY_TORNADO, 10, HG_HITBOX_X, -1);
set_hitbox_value(AT_COPY_TORNADO, 10, HG_HITBOX_Y, -41);
set_hitbox_value(AT_COPY_TORNADO, 10, HG_WIDTH, 112);
set_hitbox_value(AT_COPY_TORNADO, 10, HG_HEIGHT, 80);
set_hitbox_value(AT_COPY_TORNADO, 10, HG_PRIORITY, 8);
set_hitbox_value(AT_COPY_TORNADO, 10, HG_DAMAGE, 7);
set_hitbox_value(AT_COPY_TORNADO, 10, HG_ANGLE, 90);
set_hitbox_value(AT_COPY_TORNADO, 10, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_COPY_TORNADO, 10, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_COPY_TORNADO, 10, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_COPY_TORNADO, 10, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_COPY_TORNADO, 10, HG_VISUAL_EFFECT, 196);
set_hitbox_value(AT_COPY_TORNADO, 10, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_COPY_TORNADO, 10, HG_HITBOX_GROUP, -1);