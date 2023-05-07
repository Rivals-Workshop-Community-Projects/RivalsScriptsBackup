set_attack_value(AT_JAB, AG_CATEGORY, 0);
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 11);
set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(AT_JAB, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_JAB, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_HSPEED, 4);
set_window_value(AT_JAB, 2, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_JAB, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 0);

set_window_value(AT_JAB, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_JAB, 4, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_JAB, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_JAB, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_FRAME, 0);

set_window_value(AT_JAB, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_JAB, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_JAB, 7, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_JAB, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 8, AG_WINDOW_LENGTH, 8);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_JAB, 8, AG_WINDOW_HSPEED, 4);
set_window_value(AT_JAB, 8, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_JAB, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 9, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_JAB, 9, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 9, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_JAB, 9, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_JAB, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 10, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 10, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 10, AG_WINDOW_ANIM_FRAME_START, 21);

set_window_value(AT_JAB, 11, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 11, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 11, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 11, AG_WINDOW_ANIM_FRAME_START, 23);
set_window_value(AT_JAB, 11, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_JAB, 7);

set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 28);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 48);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_JAB, 1, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 40);
set_hitbox_value(AT_JAB, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_JAB, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 40);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 48);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 48);
set_hitbox_value(AT_JAB, 2, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 65);
set_hitbox_value(AT_JAB, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_JAB, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 40);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 42);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 42);
set_hitbox_value(AT_JAB, 3, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 40);
set_hitbox_value(AT_JAB, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_JAB, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_JAB, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_JAB, 4, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 4, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_JAB, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_X, 40);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_Y, -30);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_GROUP, 4);

set_hitbox_value(AT_JAB, 5, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 5, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 5, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_JAB, 5, HG_LIFETIME, 1);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_X, 40);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_Y, -30);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_GROUP, 5);

set_hitbox_value(AT_JAB, 6, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_JAB, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 6, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 6, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_JAB, 6, HG_LIFETIME, 1);
set_hitbox_value(AT_JAB, 6, HG_HITBOX_X, 38);
set_hitbox_value(AT_JAB, 6, HG_HITBOX_Y, -30);
set_hitbox_value(AT_JAB, 6, HG_HITBOX_GROUP, 6);

set_hitbox_value(AT_JAB, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 7, HG_WINDOW, 10);
set_hitbox_value(AT_JAB, 7, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_JAB, 7, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 7, HG_HITBOX_X, 40);
set_hitbox_value(AT_JAB, 7, HG_HITBOX_Y, -36);
set_hitbox_value(AT_JAB, 7, HG_WIDTH, 50);
set_hitbox_value(AT_JAB, 7, HG_HEIGHT, 80);
set_hitbox_value(AT_JAB, 7, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 7, HG_PRIORITY, 4);
set_hitbox_value(AT_JAB, 7, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 7, HG_ANGLE, 45);
set_hitbox_value(AT_JAB, 7, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_JAB, 7, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_JAB, 7, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_JAB, 7, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 7, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_JAB, 7, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_JAB, 7, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_JAB, 7, HG_HITBOX_GROUP, 7);