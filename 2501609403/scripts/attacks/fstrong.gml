set_attack_value(AT_FSTRONG, AG_CATEGORY, 2);
set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FSTRONG, AG_OFF_LEDGE, 2);
set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);

//Startup
set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX_FRAME, 10);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_syl_ustrong_part3"));

//Startup 2
set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_syl_uspecial_travel_start"));

//Active
set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED, 8);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_VSPEED, -4);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_VSPEED_TYPE, 2);

//Active 2
set_window_value(AT_FSTRONG, 4, AG_WINDOW_TYPE, 10);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 60);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 8);

//Recovery
set_window_value(AT_FSTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 17);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_SFX, asset_get("sfx_syl_ustrong_part3"));
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSTRONG, 6);

//Dive 1
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 2); 
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -33);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 60);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, fx_smallhit1);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sound_get("bhit_weak_1"));

//Dive 2
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 2); 
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 32);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -33);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 60);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 20);
set_hitbox_value(AT_FSTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, fx_smallhit1);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, sound_get("bhit_weak_2"));

//Dive 3
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 2); 
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 32);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -33);
set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 60);
set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, fx_smallhit1);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, sound_get("bhit_weak_3"));

//Dive 4
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_FSTRONG, 4, HG_LIFETIME, 2); 
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_X, 32);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_Y, -33);
set_hitbox_value(AT_FSTRONG, 4, HG_WIDTH, 60);
set_hitbox_value(AT_FSTRONG, 4, HG_HEIGHT, 60);
set_hitbox_value(AT_FSTRONG, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_FSTRONG, 4, HG_ANGLE, -20);
set_hitbox_value(AT_FSTRONG, 4, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSTRONG, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 4, HG_VISUAL_EFFECT, fx_smallhit1);
set_hitbox_value(AT_FSTRONG, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSTRONG, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 4, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_FSTRONG, 4, HG_HIT_SFX, sound_get("bhit_weak_3"));

//Dive 5
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSTRONG, 5, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG, 5, HG_LIFETIME, 2); 
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_X, 32);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_Y, -33);
set_hitbox_value(AT_FSTRONG, 5, HG_WIDTH, 60);
set_hitbox_value(AT_FSTRONG, 5, HG_HEIGHT, 60);
set_hitbox_value(AT_FSTRONG, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_ANGLE, -60);
set_hitbox_value(AT_FSTRONG, 5, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSTRONG, 5, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 5, HG_VISUAL_EFFECT, fx_smallhit1);
set_hitbox_value(AT_FSTRONG, 5, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSTRONG, 5, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 5, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_FSTRONG, 5, HG_HIT_SFX, sound_get("bhit_weak_3"));

//Dive 6
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSTRONG, 6, HG_WINDOW, 5);
set_hitbox_value(AT_FSTRONG, 6, HG_LIFETIME, 2); 
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_X, 45);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_Y, -28);
set_hitbox_value(AT_FSTRONG, 6, HG_WIDTH, 67);
set_hitbox_value(AT_FSTRONG, 6, HG_HEIGHT, 69);
set_hitbox_value(AT_FSTRONG, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 6, HG_DAMAGE, 4);
set_hitbox_value(AT_FSTRONG, 6, HG_ANGLE, 50);
set_hitbox_value(AT_FSTRONG, 6, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 6, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_FSTRONG, 6, HG_VISUAL_EFFECT, fx_smallhit2);
set_hitbox_value(AT_FSTRONG, 6, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSTRONG, 6, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_FSTRONG, 6, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_FSTRONG, 6, HG_HIT_SFX, sound_get("bhit_medium_3"));