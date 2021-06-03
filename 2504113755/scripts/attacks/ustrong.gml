set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);


set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_med"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 2);


//multihit
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_strong"));
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX_FRAME, 14);

//final hit
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 8);

//endlag
set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_USTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG,7);

//first frame grounded catching hitbox
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 80);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 80);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 0.0);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_PARTICLE_NUM, 1)
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, plasma_x_circle_small )
    
//first frame sword hitbox (hitpause matches above)
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -88);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 7);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 92);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 47);
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 0.0);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 2, HG_TECHABLE, 3);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_PARTICLE_NUM, 1)
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, plasma_x_circle_small )



//spinning hibtoxes
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -88);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 7);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 92);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 47);
set_hitbox_value(AT_USTRONG, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 0.0);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, .15);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_clairen_hit_weak"));
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USTRONG, 3, HG_TECHABLE, 3);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_PARTICLE_NUM, 1)
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, plasma_x_circle_small )


set_hitbox_value(AT_USTRONG, 4, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -88);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, 7);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USTRONG, 5, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW_CREATION_FRAME, 9 );
set_hitbox_value(AT_USTRONG, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_Y, -88);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_X, 7);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USTRONG, 6, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 6, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 6, HG_WINDOW_CREATION_FRAME, 12 );
set_hitbox_value(AT_USTRONG, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_Y, -88);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_X, 7);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 7, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_Y, -96);
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_X, 7);
set_hitbox_value(AT_USTRONG, 7, HG_WIDTH, 92);
set_hitbox_value(AT_USTRONG, 7, HG_HEIGHT, 60);
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 7, HG_DAMAGE, 6);
set_hitbox_value(AT_USTRONG, 7, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 7, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 7, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_USTRONG, 7, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG, 7, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_USTRONG, 7, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 7, HG_HIT_PARTICLE_NUM, 1)
set_hitbox_value(AT_USTRONG, 7, HG_VISUAL_EFFECT, plasma_t_big )