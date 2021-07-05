set_attack_value(AT_EXTRA_1, AG_CATEGORY, 1);
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("f_bair"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 5);
set_attack_value(AT_EXTRA_1, AG_LANDING_LAG, 6);
set_attack_value(AT_EXTRA_1, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("f_bair_hurt"));

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 8);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_EXTRA_1, 2, AG_WINDOW_TYPE, 8);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_EXTRA_1, 3, AG_WINDOW_TYPE, 8);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_EXTRA_1, 4, AG_WINDOW_TYPE, 8);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_EXTRA_1, 5, AG_WINDOW_TYPE, 8);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_EXTRA_1, 3);
//hit 1
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_SHAPE, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, -12);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 24);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 70);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 1);
//set_hitbox_value(AT_EXTRA_1, 1, HG_HITPAUSE_SCALING, .25);

//Hit 2
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_1, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_EXTRA_1, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_SHAPE, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_WINDOW, 3);
set_hitbox_value(AT_EXTRA_1, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_X, -4);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_EXTRA_1, 2, HG_WIDTH, 36);
set_hitbox_value(AT_EXTRA_1, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_EXTRA_1, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_EXTRA_1, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_ANGLE, 110);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_EXTRA_1, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_HITPAUSE, 1);
//set_hitbox_value(AT_EXTRA_1, 2, HG_HITPAUSE_SCALING, .25);

//Hit 3
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_1, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_EXTRA_1, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 3, HG_SHAPE, 2);
set_hitbox_value(AT_EXTRA_1, 3, HG_WINDOW, 4);
set_hitbox_value(AT_EXTRA_1, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_X, -12);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_EXTRA_1, 3, HG_WIDTH, 40);
set_hitbox_value(AT_EXTRA_1, 3, HG_HEIGHT, 44);
set_hitbox_value(AT_EXTRA_1, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_EXTRA_1, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_EXTRA_1, 3, HG_ANGLE, 100);
set_hitbox_value(AT_EXTRA_1, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_EXTRA_1, 3, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_EXTRA_1, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_EXTRA_1, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_EXTRA_1, 3, HG_HITPAUSE_SCALING, .25);