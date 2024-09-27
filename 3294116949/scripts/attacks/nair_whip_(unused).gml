set_attack_value(46, AG_CATEGORY, 1);
set_attack_value(46, AG_SPRITE, sprite_get("whip"));
set_attack_value(46, AG_HAS_LANDING_LAG, 1);
set_attack_value(46, AG_LANDING_LAG, 7);
set_attack_value(46, AG_HURTBOX_SPRITE, -1/*sprite_get("hurtbox")*/);

set_attack_value(46, AG_NUM_WINDOWS, 3);

set_window_value(46, 1, AG_WINDOW_TYPE, 1);
set_window_value(46, 1, AG_WINDOW_LENGTH, 4);
set_window_value(46, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(46, 1, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(46, 2, AG_WINDOW_TYPE, 1);
set_window_value(46, 2, AG_WINDOW_LENGTH, 6);
set_window_value(46, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(46, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(46, 2, AG_WINDOW_SFX_FRAME, 4);
set_window_value(46, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(46, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

set_window_value(46, 3, AG_WINDOW_TYPE, 1);
set_window_value(46, 3, AG_WINDOW_LENGTH, 8);
set_window_value(46, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(46, 3, AG_WINDOW_ANIM_FRAME_START, 5);

//Generic Window
set_window_value(46, 4, AG_WINDOW_TYPE, 1);
set_window_value(46, 4, AG_WINDOW_LENGTH, 3);
set_window_value(46, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(46, 4, AG_WINDOW_ANIM_FRAME_START, 3);

//Whip_Down
set_window_value(46, 5, AG_WINDOW_TYPE, 1);
set_window_value(46, 5, AG_WINDOW_LENGTH, 3);
set_window_value(46, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(46, 5, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(46, 6, AG_WINDOW_TYPE, 1);
set_window_value(46, 6, AG_WINDOW_LENGTH, 8);
set_window_value(46, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(46, 6, AG_WINDOW_ANIM_FRAME_START, 7);

//Generic Window 2
set_window_value(46, 7, AG_WINDOW_TYPE, 1);
set_window_value(46, 7, AG_WINDOW_LENGTH, 3);
set_window_value(46, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(46, 7, AG_WINDOW_ANIM_FRAME_START, 3);

//Whip_Up_Sideways
set_window_value(46, 8, AG_WINDOW_TYPE, 1);
set_window_value(46, 8, AG_WINDOW_LENGTH, 3);
set_window_value(46, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(46, 8, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(46, 9, AG_WINDOW_TYPE, 1);
set_window_value(46, 9, AG_WINDOW_LENGTH, 8);
set_window_value(46, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(46, 9, AG_WINDOW_ANIM_FRAME_START, 9);

set_num_hitboxes(46, 7);

//Sideways Whip
set_hitbox_value(46, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(46, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(46, 1, HG_WINDOW, 3);
set_hitbox_value(46, 1, HG_LIFETIME, 8);
set_hitbox_value(46, 1, HG_HITBOX_X, 70);
set_hitbox_value(46, 1, HG_HITBOX_Y, -25);
set_hitbox_value(46, 1, HG_WIDTH, 100);
set_hitbox_value(46, 1, HG_HEIGHT, 20);
set_hitbox_value(46, 1, HG_PRIORITY, 5);
set_hitbox_value(46, 1, HG_DAMAGE, 6);
set_hitbox_value(46, 1, HG_ANGLE, 60);
set_hitbox_value(46, 1, HG_SHAPE, 2);
set_hitbox_value(46, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(46, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(46, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(46, 1, HG_BASE_HITPAUSE, 8);

set_hitbox_value(46, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(46, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(46, 2, HG_WINDOW, 3);
set_hitbox_value(46, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(46, 2, HG_LIFETIME, 8);
set_hitbox_value(46, 2, HG_HITBOX_X, 130);
set_hitbox_value(46, 2, HG_HITBOX_Y, -25);
set_hitbox_value(46, 2, HG_WIDTH, 25);
set_hitbox_value(46, 2, HG_HEIGHT, 25);
set_hitbox_value(46, 2, HG_PRIORITY, 4);
set_hitbox_value(46, 2, HG_DAMAGE, 8);
set_hitbox_value(46, 2, HG_ANGLE, 50);
set_hitbox_value(46, 2, HG_SHAPE, 2);
set_hitbox_value(46, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(46, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(46, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(46, 2, HG_BASE_HITPAUSE, 12);

//Down Whip
set_hitbox_value(46, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(46, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(46, 3, HG_WINDOW, 6);
set_hitbox_value(46, 3, HG_LIFETIME, 8);
set_hitbox_value(46, 3, HG_HITBOX_X, 5);
set_hitbox_value(46, 3, HG_HITBOX_Y, 15);
set_hitbox_value(46, 3, HG_WIDTH, 20);
set_hitbox_value(46, 3, HG_HEIGHT, 80);
set_hitbox_value(46, 3, HG_PRIORITY, 5);
set_hitbox_value(46, 3, HG_DAMAGE, 5);
set_hitbox_value(46, 3, HG_ANGLE, 80);
set_hitbox_value(46, 3, HG_SHAPE, 2);
set_hitbox_value(46, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(46, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(46, 3, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(46, 3, HG_BASE_HITPAUSE, 8);

set_hitbox_value(46, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(46, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(46, 4, HG_WINDOW, 6);
set_hitbox_value(46, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(46, 4, HG_LIFETIME, 8);
set_hitbox_value(46, 4, HG_HITBOX_X, 5);
set_hitbox_value(46, 4, HG_HITBOX_Y, 60);
set_hitbox_value(46, 4, HG_WIDTH, 25);
set_hitbox_value(46, 4, HG_HEIGHT, 25);
set_hitbox_value(46, 4, HG_PRIORITY, 4);
set_hitbox_value(46, 4, HG_DAMAGE, 8);
set_hitbox_value(46, 4, HG_ANGLE, 270);
set_hitbox_value(46, 4, HG_SHAPE, 2);
set_hitbox_value(46, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(46, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(46, 4, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(46, 4, HG_BASE_HITPAUSE, 12);

//Diagonal Up Whip
set_hitbox_value(46, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(46, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(46, 5, HG_WINDOW, 9);
set_hitbox_value(46, 5, HG_LIFETIME, 8);
set_hitbox_value(46, 5, HG_HITBOX_X, 30);
set_hitbox_value(46, 5, HG_HITBOX_Y, -50);
set_hitbox_value(46, 5, HG_WIDTH, 35);
set_hitbox_value(46, 5, HG_HEIGHT, 35);
set_hitbox_value(46, 5, HG_PRIORITY, 5);
set_hitbox_value(46, 5, HG_DAMAGE, 6);
set_hitbox_value(46, 5, HG_ANGLE, 60);
set_hitbox_value(46, 5, HG_SHAPE, 0);
set_hitbox_value(46, 5, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(46, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(46, 5, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(46, 5, HG_BASE_HITPAUSE, 8);

set_hitbox_value(46, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(46, 6, HG_PARENT_HITBOX, 6);
set_hitbox_value(46, 6, HG_WINDOW, 9);
set_hitbox_value(46, 6, HG_LIFETIME, 8);
set_hitbox_value(46, 6, HG_HITBOX_X, 60);
set_hitbox_value(46, 6, HG_HITBOX_Y, -75);
set_hitbox_value(46, 6, HG_WIDTH, 35);
set_hitbox_value(46, 6, HG_HEIGHT, 35);
set_hitbox_value(46, 6, HG_PRIORITY, 5);
set_hitbox_value(46, 6, HG_DAMAGE, 6);
set_hitbox_value(46, 6, HG_ANGLE, 60);
set_hitbox_value(46, 6, HG_SHAPE, 0);
set_hitbox_value(46, 6, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(46, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(46, 6, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(46, 6, HG_BASE_HITPAUSE, 8);

set_hitbox_value(46, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(46, 7, HG_PARENT_HITBOX, 7);
set_hitbox_value(46, 7, HG_WINDOW, 9);
set_hitbox_value(46, 7, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(46, 7, HG_LIFETIME, 8);
set_hitbox_value(46, 7, HG_HITBOX_X, 95);
set_hitbox_value(46, 7, HG_HITBOX_Y, -105);
set_hitbox_value(46, 7, HG_WIDTH, 35);
set_hitbox_value(46, 7, HG_HEIGHT, 35);
set_hitbox_value(46, 7, HG_PRIORITY, 4);
set_hitbox_value(46, 7, HG_DAMAGE, 8);
set_hitbox_value(46, 7, HG_ANGLE, 50);
set_hitbox_value(46, 7, HG_SHAPE, 2);
set_hitbox_value(46, 7, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(46, 7, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(46, 7, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(46, 7, HG_BASE_HITPAUSE, 12);
