set_attack_value(AT_NAIR, AG_CATEGORY, 2);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 1, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_NAIR, 1, AG_WINDOW_VSPEED, -1);

set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 14);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

//Land
set_window_value(AT_NAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(AT_NAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NAIR, 0);

//First Two Hits
//Right
set_hitbox_value(AT_NAIR, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 8*2);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -10*2);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 40*2);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 30*2);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 140);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, .4);  
set_hitbox_value(AT_NAIR, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_NAIR, 1, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, fx_bhit);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"))

//Left
set_hitbox_value(AT_NAIR, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, -18*2);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -20*2);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 23*2);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 24*2);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 0);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NAIR, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_NAIR, 2, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, fx_bhit);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"))

//Last Hit
//Right
set_hitbox_value(AT_NAIR, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, 7*2);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -9*2);
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 42*2);
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 27*2);
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE, 65);
set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NAIR, 3, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 3, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_NAIR, 3, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT, fx_bhit);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"))

//Left
set_hitbox_value(AT_NAIR, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, -11*2);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -19*2);
set_hitbox_value(AT_NAIR, 4, HG_WIDTH, 41*2);
set_hitbox_value(AT_NAIR, 4, HG_HEIGHT, 25*2);
set_hitbox_value(AT_NAIR, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE, 65);
set_hitbox_value(AT_NAIR, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NAIR, 4, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NAIR, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 4, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_NAIR, 4, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT, fx_bhit);
set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_NAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium3"))

//Land hitbox
set_hitbox_value(AT_NAIR, 5, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_X, 6*2);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_Y, -10*2);
set_hitbox_value(AT_NAIR, 5, HG_WIDTH, 52*2);
set_hitbox_value(AT_NAIR, 5, HG_HEIGHT, 28*2);
set_hitbox_value(AT_NAIR, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_NAIR, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 5, HG_ANGLE, 40);
set_hitbox_value(AT_NAIR, 5, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NAIR, 5, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_NAIR, 5, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 5, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_NAIR, 5, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_NAIR, 5, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_NAIR, 5, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_NAIR, 5, HG_VISUAL_EFFECT, fx_bhit);
set_hitbox_value(AT_NAIR, 5, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_NAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_medium3"))
