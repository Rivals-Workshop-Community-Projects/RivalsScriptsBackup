set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_window_value(AT_UAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_UAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED, -4);

set_window_value(AT_UAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_UAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_UAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 5, AG_WINDOW_LENGTH, 14);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_UAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_UAIR, 6);

//Propeller 1
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 2); 
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -63);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 65);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 27);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 60);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_UAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, fx_smallhit1);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, sound_get("bhit_weak_1"));

//Body 1
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 4, HG_LIFETIME, 2); 
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_Y, -29);
set_hitbox_value(AT_UAIR, 4, HG_WIDTH, 47);
set_hitbox_value(AT_UAIR, 4, HG_HEIGHT, 59);
set_hitbox_value(AT_UAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 4, HG_ANGLE, 60);
set_hitbox_value(AT_UAIR, 4, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_UAIR, 4, HG_SHAPE, 0);
set_hitbox_value(AT_UAIR, 4, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_UAIR, 4, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_UAIR, 4, HG_VISUAL_EFFECT, fx_smallhit1);
set_hitbox_value(AT_UAIR, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UAIR, 4, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_UAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_UAIR, 4, HG_HIT_SFX, sound_get("bhit_weak_1"));

//Propeller 2
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 2); 
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -63);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 65);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 27);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 60);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_UAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, fx_smallhit1);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, sound_get("bhit_weak_2"));

//Body 2
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UAIR, 5, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 5, HG_LIFETIME, 2); 
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 5, HG_HITBOX_Y, -29);
set_hitbox_value(AT_UAIR, 5, HG_WIDTH, 47);
set_hitbox_value(AT_UAIR, 5, HG_HEIGHT, 59);
set_hitbox_value(AT_UAIR, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 5, HG_ANGLE, 60);
set_hitbox_value(AT_UAIR, 5, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_UAIR, 5, HG_SHAPE, 0);
set_hitbox_value(AT_UAIR, 5, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_UAIR, 5, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_UAIR, 5, HG_VISUAL_EFFECT, fx_smallhit1);
set_hitbox_value(AT_UAIR, 5, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UAIR, 5, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_UAIR, 5, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_UAIR, 5, HG_HIT_SFX, sound_get("bhit_weak_2"));

//Propeller 3
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 4);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 2); 
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -63);
set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 65);
set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 27);
set_hitbox_value(AT_UAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_UAIR, 3, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_UAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 3, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, fx_smallhit2);
set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UAIR, 3, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, sound_get("bhit_medium_2"));

//Body 3
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_UAIR, 6, HG_WINDOW, 4);
set_hitbox_value(AT_UAIR, 6, HG_LIFETIME, 2); 
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 6, HG_HITBOX_Y, -29);
set_hitbox_value(AT_UAIR, 6, HG_WIDTH, 47);
set_hitbox_value(AT_UAIR, 6, HG_HEIGHT, 59);
set_hitbox_value(AT_UAIR, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 6, HG_DAMAGE, 5);
set_hitbox_value(AT_UAIR, 6, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 6, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_UAIR, 6, HG_SHAPE, 0);
set_hitbox_value(AT_UAIR, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 6, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_UAIR, 6, HG_VISUAL_EFFECT, fx_smallhit2);
set_hitbox_value(AT_UAIR, 6, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UAIR, 6, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_UAIR, 6, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UAIR, 6, HG_HIT_SFX, sound_get("bhit_medium_2"));