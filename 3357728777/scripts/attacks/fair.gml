set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

//Startup
set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 1, AG_WINDOW_VSPEED, -1);

//Charge
set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

//Post Charge
set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FAIR, 3, AG_WINDOW_SFX_FRAME, 2);

//Active
set_window_value(AT_FAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FAIR, 4, AG_WINDOW_HSPEED, 5);
set_window_value(AT_FAIR, 4, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FAIR, 4, AG_WINDOW_VSPEED, -3);
set_window_value(AT_FAIR, 4, AG_WINDOW_VSPEED_TYPE, 2);

//Endlag
set_window_value(AT_FAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 5, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_FAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 5);

set_num_hitboxes(AT_FAIR,8);

set_hitbox_value(AT_FAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 4);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 27);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -33);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 40);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, hfx_feather_small);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FAIR, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FAIR, 1, HG_SDI_MULTIPLIER, 1.1);
set_hitbox_value(AT_FAIR, 1, HG_HITSTUN_MULTIPLIER, 0.7);
set_hitbox_value(AT_FAIR, 1, HG_HIT_PARTICLE_NUM, 1);

set_hitbox_value(AT_FAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 27);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -33);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 4);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 27);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -33);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FAIR, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW, 4);
set_hitbox_value(AT_FAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_X, 27);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_Y, -33);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FAIR, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 5, HG_WINDOW, 4);
set_hitbox_value(AT_FAIR, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 5, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_X, 27);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_Y, -33);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_GROUP, -1);

//Uncharged
set_hitbox_value(AT_FAIR, 6, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 6, HG_WINDOW, 4);
set_hitbox_value(AT_FAIR, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 6, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_X, 27);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_Y, -33);
set_hitbox_value(AT_FAIR, 6, HG_WIDTH, 60);
set_hitbox_value(AT_FAIR, 6, HG_HEIGHT, 80);
set_hitbox_value(AT_FAIR, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 6, HG_DAMAGE, 4);
set_hitbox_value(AT_FAIR, 6, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 6, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_FAIR, 6, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FAIR, 6, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FAIR, 6, HG_VISUAL_EFFECT, hfx_feather_large);
set_hitbox_value(AT_FAIR, 6, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FAIR, 6, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FAIR, 6, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FAIR, 6, HG_HIT_PARTICLE_NUM, 1);

//Charged
set_hitbox_value(AT_FAIR, 7, HG_PARENT_HITBOX, 7);
set_hitbox_value(AT_FAIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 7, HG_WINDOW, 4);
set_hitbox_value(AT_FAIR, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 7, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_FAIR, 7, HG_HITBOX_X, 27);
set_hitbox_value(AT_FAIR, 7, HG_HITBOX_Y, -33);
set_hitbox_value(AT_FAIR, 7, HG_WIDTH, 60);
set_hitbox_value(AT_FAIR, 7, HG_HEIGHT, 80);
set_hitbox_value(AT_FAIR, 7, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 7, HG_DAMAGE, 6);
set_hitbox_value(AT_FAIR, 7, HG_ANGLE, 40);
set_hitbox_value(AT_FAIR, 7, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 7, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_FAIR, 7, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 7, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_FAIR, 7, HG_VISUAL_EFFECT, hfx_curse_large);
set_hitbox_value(AT_FAIR, 7, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FAIR, 7, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 7, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FAIR, 7, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FAIR, 7, HG_HIT_PARTICLE_NUM, 2);

//Wrath Charged
set_hitbox_value(AT_FAIR, 8, HG_PARENT_HITBOX, 8);
set_hitbox_value(AT_FAIR, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 8, HG_WINDOW, 4);
set_hitbox_value(AT_FAIR, 8, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 8, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_FAIR, 8, HG_HITBOX_X, 27);
set_hitbox_value(AT_FAIR, 8, HG_HITBOX_Y, -33);
set_hitbox_value(AT_FAIR, 8, HG_WIDTH, 60);
set_hitbox_value(AT_FAIR, 8, HG_HEIGHT, 80);
set_hitbox_value(AT_FAIR, 8, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 8, HG_DAMAGE, 8);
set_hitbox_value(AT_FAIR, 8, HG_ANGLE, 40);
set_hitbox_value(AT_FAIR, 8, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 8, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_FAIR, 8, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FAIR, 8, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FAIR, 8, HG_VISUAL_EFFECT, hfx_curse_large);
set_hitbox_value(AT_FAIR, 8, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FAIR, 8, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 8, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FAIR, 8, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FAIR, 8, HG_HIT_PARTICLE_NUM, 2);