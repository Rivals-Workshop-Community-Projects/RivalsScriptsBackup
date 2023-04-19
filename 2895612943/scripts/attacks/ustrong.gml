set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 1); //finisher
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 10);

set_window_value(AT_USTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 18);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_USTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG, 7);

set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, 1); 
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 2);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -68);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 38);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 96);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
//set_hitbox_value(AT_USTRONG, 1, HG_ANGLE_FLIPPER, 2); //toward hitbox center
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 0.0);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, 2); 
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 2);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -68);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 38);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 96);
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 90);
//set_hitbox_value(AT_USTRONG, 2, HG_ANGLE_FLIPPER, 2);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, 0.0);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, 3); 
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 2);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -68);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 38);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 96);
set_hitbox_value(AT_USTRONG, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 90);
//set_hitbox_value(AT_USTRONG, 3, HG_ANGLE_FLIPPER, 2);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, 0.0);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_GROUP, 4); 
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, 2);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -68);
set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 38);
set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 96);
set_hitbox_value(AT_USTRONG, 4, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE, 90);
//set_hitbox_value(AT_USTRONG, 4, HG_ANGLE_FLIPPER, 2);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_USTRONG, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USTRONG, 4, HG_HITPAUSE_SCALING, 0.0);
set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_GROUP, 5); 
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_USTRONG, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_X, 2);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_Y, -68);
set_hitbox_value(AT_USTRONG, 5, HG_WIDTH, 38);
set_hitbox_value(AT_USTRONG, 5, HG_HEIGHT, 96);
set_hitbox_value(AT_USTRONG, 5, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG, 5, HG_ANGLE, 90);
//set_hitbox_value(AT_USTRONG, 5, HG_ANGLE_FLIPPER, 2);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_USTRONG, 5, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USTRONG, 5, HG_HITPAUSE_SCALING, 0.0);
set_hitbox_value(AT_USTRONG, 5, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_GROUP, 6); 
set_hitbox_value(AT_USTRONG, 6, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 6, HG_WINDOW_CREATION_FRAME, 15);
set_hitbox_value(AT_USTRONG, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_X, 2);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_Y, -68);
set_hitbox_value(AT_USTRONG, 6, HG_WIDTH, 38);
set_hitbox_value(AT_USTRONG, 6, HG_HEIGHT, 96);
set_hitbox_value(AT_USTRONG, 6, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 6, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 6, HG_ANGLE, 90);
//set_hitbox_value(AT_USTRONG, 6, HG_ANGLE_FLIPPER, 2);
set_hitbox_value(AT_USTRONG, 6, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_USTRONG, 6, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 6, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USTRONG, 6, HG_HITPAUSE_SCALING, 0.0);
set_hitbox_value(AT_USTRONG, 6, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_GROUP, 7); 
set_hitbox_value(AT_USTRONG, 7, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_X, 2);
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_Y, -68);
set_hitbox_value(AT_USTRONG, 7, HG_WIDTH, 52);
set_hitbox_value(AT_USTRONG, 7, HG_HEIGHT, 98);
set_hitbox_value(AT_USTRONG, 7, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 7, HG_DAMAGE, 5);
set_hitbox_value(AT_USTRONG, 7, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 7, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 7, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USTRONG, 7, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USTRONG, 7, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_USTRONG, 7, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 7, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));