set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_AIR_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));
set_attack_value(AT_JAB, AG_HURTBOX_AIR_SPRITE, sprite_get("jab_hurt"));

set_attack_value(AT_JAB, AG_NUM_WINDOWS, 9);
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 3);

set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_JAB, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_HSPEED, 3);
set_window_value(AT_JAB, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_FRAME, 3);

set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 2);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 10);

set_window_value(AT_JAB, 8, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_JAB, 8, AG_WINDOW_HSPEED, 3);
set_window_value(AT_JAB, 8, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_JAB, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 8, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

set_window_value(AT_JAB, 9, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_JAB, 9, AG_WINDOW_HAS_WHIFFLAG, 1);



set_num_hitboxes(AT_JAB, 3);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 25);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 42);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 28);
set_hitbox_value(AT_JAB, 1, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 361);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_JAB, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));


set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 25);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 32);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 68);
set_hitbox_value(AT_JAB, 2, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 361);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 2, HG_TECHABLE, 1);

set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 25);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 40);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_JAB, 3, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 361);
set_hitbox_value(AT_JAB, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_JAB, 3, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_JAB, 3, HG_KNOCKBACK_SCALING, 0.30);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_JAB, 3, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, -1);

