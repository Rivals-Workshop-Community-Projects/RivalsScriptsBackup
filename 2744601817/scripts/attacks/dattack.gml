set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 6);
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

//Startup 1
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.05);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));

//Active 1
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.1);

//Recovery 1
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 4);

//Active 2
set_window_value(AT_DATTACK, 4, AG_WINDOW_HSPEED, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 4);

//Recovery 2
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 5, AG_WINDOW_LENGTH, 2);

//Active 3
set_window_value(AT_DATTACK, 6, AG_WINDOW_HSPEED, 1);
set_window_value(AT_DATTACK, 6, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DATTACK, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DATTACK, 6, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DATTACK, 6, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_DATTACK, 6);

//First hit
//Front
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 16*2);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -13*2);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 32*2);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 23*2);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DATTACK, 1, HG_DRIFT_MULTIPLIER, .1);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_DATTACK, 1, HG_TECHABLE, 0);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, fx_bhit);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

//Back
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, -2*2);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -16*2);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 27*2);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 23*2);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 45);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DATTACK, 2, HG_DRIFT_MULTIPLIER, .1);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DATTACK, 2, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_DATTACK, 2, HG_TECHABLE, 0);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT, fx_bhit);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));


//Second hit
//Front
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW, 4);
set_hitbox_value(AT_DATTACK, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_X, 16*2);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_Y, -13*2);
set_hitbox_value(AT_DATTACK, 3, HG_WIDTH, 32*2);
set_hitbox_value(AT_DATTACK, 3, HG_HEIGHT, 23*2);
set_hitbox_value(AT_DATTACK, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DATTACK, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_DATTACK, 3, HG_ANGLE, 50);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DATTACK, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DATTACK, 3, HG_DRIFT_MULTIPLIER, .1);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DATTACK, 3, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_DATTACK, 3, HG_TECHABLE, 0);
set_hitbox_value(AT_DATTACK, 3, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT, fx_bhit);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DATTACK, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

//Back
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 4, HG_WINDOW, 4);
set_hitbox_value(AT_DATTACK, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_X, -2*2);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_Y, -16*2);
set_hitbox_value(AT_DATTACK, 4, HG_WIDTH, 27*2);
set_hitbox_value(AT_DATTACK, 4, HG_HEIGHT, 23*2);
set_hitbox_value(AT_DATTACK, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DATTACK, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_DATTACK, 4, HG_ANGLE, 45);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DATTACK, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DATTACK, 4, HG_DRIFT_MULTIPLIER, .1);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DATTACK, 4, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_DATTACK, 4, HG_TECHABLE, 0);
set_hitbox_value(AT_DATTACK, 4, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_DATTACK, 4, HG_VISUAL_EFFECT, fx_bhit);
set_hitbox_value(AT_DATTACK, 4, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DATTACK, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));


//Swing
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 5, HG_WINDOW, 6);
set_hitbox_value(AT_DATTACK, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_X, 18*2);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_Y, -24*2);
set_hitbox_value(AT_DATTACK, 5, HG_WIDTH, 30*2);
set_hitbox_value(AT_DATTACK, 5, HG_HEIGHT, 48*2);
set_hitbox_value(AT_DATTACK, 5, HG_PRIORITY, 4);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DATTACK, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_DATTACK, 5, HG_ANGLE, 70);
set_hitbox_value(AT_DATTACK, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DATTACK, 5, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DATTACK, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DATTACK, 5, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_DATTACK, 5, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_DATTACK, 5, HG_VISUAL_EFFECT, fx_bhit);
set_hitbox_value(AT_DATTACK, 5, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DATTACK, 5, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

//Body
set_hitbox_value(AT_DATTACK, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 6, HG_WINDOW, 6);
set_hitbox_value(AT_DATTACK, 6, HG_SHAPE, 2);
set_hitbox_value(AT_DATTACK, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_DATTACK, 6, HG_HITBOX_X, -1*2);
set_hitbox_value(AT_DATTACK, 6, HG_HITBOX_Y, -16*2);
set_hitbox_value(AT_DATTACK, 6, HG_WIDTH, 19*2);
set_hitbox_value(AT_DATTACK, 6, HG_HEIGHT, 33*2);
set_hitbox_value(AT_DATTACK, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 6, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DATTACK, 6, HG_DAMAGE, 2);
set_hitbox_value(AT_DATTACK, 6, HG_ANGLE, 75);
set_hitbox_value(AT_DATTACK, 6, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DATTACK, 6, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_DATTACK, 6, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DATTACK, 6, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_DATTACK, 6, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_DATTACK, 6, HG_VISUAL_EFFECT, fx_bhit);
set_hitbox_value(AT_DATTACK, 6, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DATTACK, 6, HG_HIT_SFX, asset_get("sfx_blow_medium2"));