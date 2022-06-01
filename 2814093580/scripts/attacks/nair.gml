set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 8);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);

set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 7 );
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 3 );
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1 );

set_window_value(AT_NAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 1.0);
set_window_value(AT_NAIR, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1.5);


set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 3 );
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 1 );
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3 );
set_window_value(AT_NAIR, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1 );
set_window_value(AT_NAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_SFX, asset_get("sfx_spin_longer"));

set_window_value(AT_NAIR,3, AG_WINDOW_LENGTH, 3 );
set_window_value(AT_NAIR,3, AG_WINDOW_ANIM_FRAMES, 1 );
set_window_value(AT_NAIR,3, AG_WINDOW_ANIM_FRAME_START, 4 );
set_window_value(AT_NAIR,3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1 );

set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 3 );
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 1 );
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 5 );
set_window_value(AT_NAIR, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1 );

set_window_value(AT_NAIR, 5, AG_WINDOW_LENGTH, 3 );
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAMES, 1 );
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAME_START, 6 );
set_window_value(AT_NAIR, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1 );

set_window_value(AT_NAIR,6, AG_WINDOW_LENGTH, 3 );
set_window_value(AT_NAIR,6, AG_WINDOW_ANIM_FRAMES, 1 );
set_window_value(AT_NAIR,6, AG_WINDOW_ANIM_FRAME_START, 3 );
set_window_value(AT_NAIR,6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1 );

set_window_value(AT_NAIR,7, AG_WINDOW_LENGTH, 3 );
set_window_value(AT_NAIR,7, AG_WINDOW_ANIM_FRAMES, 1 );
set_window_value(AT_NAIR,7, AG_WINDOW_ANIM_FRAME_START, 4 );
set_window_value(AT_NAIR,7, AG_WINDOW_HAS_CUSTOM_FRICTION, 1 );

set_window_value(AT_NAIR,8, AG_WINDOW_LENGTH, 13 );
set_window_value(AT_NAIR,8, AG_WINDOW_ANIM_FRAMES, 4 );
set_window_value(AT_NAIR,8, AG_WINDOW_ANIM_FRAME_START, 7 );
set_window_value(AT_NAIR,8, AG_WINDOW_HAS_CUSTOM_FRICTION, 1 );
set_window_value(AT_NAIR,8, AG_WINDOW_HAS_WHIFFLAG, 1 );











set_num_hitboxes(AT_NAIR,3);

set_hitbox_value(AT_NAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -41);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 91);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 91);
set_hitbox_value(AT_NAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 50);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_NAIR, 1, HG_HIT_LOCKOUT, 0);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_NAIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -41);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 91);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 91);
set_hitbox_value(AT_NAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 50);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NAIR, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_NAIR, 2, HG_HIT_LOCKOUT, 0);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, -1); 
set_hitbox_value(AT_NAIR, 2, HG_TECHABLE, 1);

set_hitbox_value(AT_NAIR, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 6);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -41);
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 91);
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 91);
set_hitbox_value(AT_NAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE, 50);
set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NAIR, 3, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NAIR, 3, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NAIR, 3, HG_HIT_LOCKOUT, 0);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, -1); 
