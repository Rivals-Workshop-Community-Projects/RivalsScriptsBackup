set_attack_value(AT_FTHROW, AG_CATEGORY, 2);
set_attack_value(AT_FTHROW, AG_SPRITE, sprite_get("pogo_skittersmack"));
set_attack_value(AT_FTHROW, AG_NUM_WINDOWS, 8);
set_attack_value(AT_FTHROW, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FTHROW, AG_OFF_LEDGE, 1);
set_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE, sprite_get("pogo_skittersmack_hurt"));

set_window_value(AT_FTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_FTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_LENGTH, 21);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAMES, 12);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FTHROW, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_HSPEED, 8);
set_window_value(AT_FTHROW, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_SFX, sound_get("rattle"));

set_window_value(AT_FTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FTHROW, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FTHROW, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 8);

set_window_value(AT_FTHROW, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTHROW, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 1);

//hornet attack
set_window_value(AT_FTHROW, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 5, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FTHROW, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTHROW, 5, AG_WINDOW_ANIM_FRAME_START, 15);

set_window_value(AT_FTHROW, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 6, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FTHROW, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 6, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_FTHROW, 6, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FTHROW, 6, AG_WINDOW_VSPEED, -8);
set_window_value(AT_FTHROW, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FTHROW, 6, AG_WINDOW_CUSTOM_GROUND_FRICTION, 6);
set_window_value(AT_FTHROW, 6, AG_WINDOW_CUSTOM_AIR_FRICTION, 6);
set_window_value(AT_FTHROW, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 6, AG_WINDOW_SFX, sound_get("throw"));

set_window_value(AT_FTHROW, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 7, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTHROW, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTHROW, 7, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_FTHROW, 7, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FTHROW, 7, AG_WINDOW_VSPEED, -3);

set_window_value(AT_FTHROW, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 8, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTHROW, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTHROW, 8, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(AT_FTHROW, 8, AG_WINDOW_VSPEED, -2);

set_num_hitboxes(AT_FTHROW, 9);

set_hitbox_value(AT_FTHROW, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTHROW, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_X, 3);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FTHROW, 1, HG_WIDTH, 44);
set_hitbox_value(AT_FTHROW, 1, HG_HEIGHT, 66);
set_hitbox_value(AT_FTHROW, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FTHROW, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FTHROW, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FTHROW, 1, HG_SHAPE, 1);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_KNOCKBACK, 8.5);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FTHROW, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FTHROW, 1, HG_HIT_SFX, sound_get("hit_punch"));
set_hitbox_value(AT_FTHROW, 1, HG_TECHABLE, 2);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FTHROW, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FTHROW, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTHROW, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FTHROW, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FTHROW, 2, HG_HITBOX_X, 3);
set_hitbox_value(AT_FTHROW, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FTHROW, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FTHROW, 2, HG_HITBOX_GROUP, -2);

set_hitbox_value(AT_FTHROW, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FTHROW, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTHROW, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FTHROW, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_FTHROW, 3, HG_HITBOX_X, 3);
set_hitbox_value(AT_FTHROW, 3, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FTHROW, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FTHROW, 3, HG_HITBOX_GROUP, -3);

set_hitbox_value(AT_FTHROW, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FTHROW, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTHROW, 4, HG_WINDOW, 2);
set_hitbox_value(AT_FTHROW, 4, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_FTHROW, 4, HG_HITBOX_X, 3);
set_hitbox_value(AT_FTHROW, 4, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FTHROW, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FTHROW, 4, HG_HITBOX_GROUP, -4);

set_hitbox_value(AT_FTHROW, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTHROW, 5, HG_WINDOW, 2);
set_hitbox_value(AT_FTHROW, 5, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_FTHROW, 5, HG_HITBOX_X, 3);
set_hitbox_value(AT_FTHROW, 5, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FTHROW, 5, HG_WIDTH, 44);
set_hitbox_value(AT_FTHROW, 5, HG_HEIGHT, 66);
set_hitbox_value(AT_FTHROW, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_FTHROW, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_FTHROW, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_FTHROW, 5, HG_ANGLE, 45);
set_hitbox_value(AT_FTHROW, 5, HG_SHAPE, 1);
set_hitbox_value(AT_FTHROW, 5, HG_BASE_KNOCKBACK, 8.5);
set_hitbox_value(AT_FTHROW, 5, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FTHROW, 5, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FTHROW, 5, HG_HIT_SFX, sound_get("hit_punch"));
set_hitbox_value(AT_FTHROW, 5, HG_TECHABLE, 2);
set_hitbox_value(AT_FTHROW, 5, HG_HITBOX_GROUP, -5);

set_hitbox_value(AT_FTHROW, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTHROW, 6, HG_WINDOW, 7);
set_hitbox_value(AT_FTHROW, 6, HG_LIFETIME, 5);
set_hitbox_value(AT_FTHROW, 6, HG_HITBOX_X, 6);
set_hitbox_value(AT_FTHROW, 6, HG_HITBOX_Y, -66);
set_hitbox_value(AT_FTHROW, 6, HG_WIDTH, 55);
set_hitbox_value(AT_FTHROW, 6, HG_HEIGHT, 34);
set_hitbox_value(AT_FTHROW, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_FTHROW, 6, HG_DAMAGE, 2);
set_hitbox_value(AT_FTHROW, 6, HG_ANGLE, 70);
set_hitbox_value(AT_FTHROW, 6, HG_SHAPE, 1);
set_hitbox_value(AT_FTHROW, 6, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_FTHROW, 6, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_FTHROW, 6, HG_BASE_HITPAUSE, 25);
set_hitbox_value(AT_FTHROW, 6, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_FTHROW, 6, HG_VISUAL_EFFECT, 30);
set_hitbox_value(AT_FTHROW, 6, HG_HIT_SFX, sound_get("cut"));
set_hitbox_value(AT_FTHROW, 6, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_FTHROW, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTHROW, 7, HG_WINDOW, 7);
set_hitbox_value(AT_FTHROW, 7, HG_LIFETIME, 5);
set_hitbox_value(AT_FTHROW, 7, HG_HITBOX_X, 30);
set_hitbox_value(AT_FTHROW, 7, HG_HITBOX_Y, -41);
set_hitbox_value(AT_FTHROW, 7, HG_WIDTH, 34);
set_hitbox_value(AT_FTHROW, 7, HG_HEIGHT, 63);
set_hitbox_value(AT_FTHROW, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_FTHROW, 7, HG_DAMAGE, 2);
set_hitbox_value(AT_FTHROW, 7, HG_ANGLE, 70);
set_hitbox_value(AT_FTHROW, 7, HG_SHAPE, 1);
set_hitbox_value(AT_FTHROW, 7, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_FTHROW, 7, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_FTHROW, 7, HG_BASE_HITPAUSE, 25);
set_hitbox_value(AT_FTHROW, 7, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_FTHROW, 7, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FTHROW, 7, HG_HIT_SFX, sound_get("cut"));
set_hitbox_value(AT_FTHROW, 7, HG_HITBOX_GROUP, 3);