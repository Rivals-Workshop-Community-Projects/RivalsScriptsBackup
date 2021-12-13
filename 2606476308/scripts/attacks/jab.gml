set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 8);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 3);

set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));

set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_JAB, 5, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_CANCEL_FRAME, 5);

set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_JAB, 6, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_JAB, 6, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 13);
 
set_window_value(AT_JAB, 8, AG_WINDOW_LENGTH, 20);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_JAB, 8, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_JAB, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 8, AG_WINDOW_SFX, asset_get("sfx_land"));
set_window_value(AT_JAB, 8, AG_WINDOW_SFX_FRAME, 0);

set_num_hitboxes(AT_JAB, 4);

set_hitbox_value(AT_JAB, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 25);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 70);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 90);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 3.5);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_JAB, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_JAB, 1, HG_SHAPE, 0)
set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 1)

set_hitbox_value(AT_JAB, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 4);
set_hitbox_value(AT_JAB, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -25);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 70);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 3); 
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 55);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_JAB, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_JAB, 2, HG_SHAPE, 0)

set_hitbox_value(AT_JAB, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 7);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 40);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -25);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 80);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 65);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 6); 
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 40);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_JAB, 3, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_JAB, 3, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_JAB, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_JAB, 3, HG_SHAPE, 0)
set_hitbox_value(AT_JAB, 3, HG_WINDOW_CREATION_FRAME, 0);

set_hitbox_value(AT_JAB, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 4, HG_WINDOW, 7);
set_hitbox_value(AT_JAB, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_X, 85);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_Y, -25);
set_hitbox_value(AT_JAB, 4, HG_WIDTH, 20);
set_hitbox_value(AT_JAB, 4, HG_HEIGHT, 25);
set_hitbox_value(AT_JAB, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 4, HG_DAMAGE, 4); 
set_hitbox_value(AT_JAB, 4, HG_ANGLE, 50);
set_hitbox_value(AT_JAB, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_JAB, 4, HG_KNOCKBACK_SCALING, 0.23);
set_hitbox_value(AT_JAB, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 4, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_JAB, 4, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_JAB, 4, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_JAB, 4, HG_SHAPE, 0)
set_hitbox_value(AT_JAB, 4, HG_WINDOW_CREATION_FRAME, 0);

