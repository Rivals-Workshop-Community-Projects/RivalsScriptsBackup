set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 8);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));
set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 6);

set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_ice_on_player"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .7);

set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_HSPEED, 3);
set_window_value(AT_FAIR, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);


set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_FAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 5, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FAIR, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 5, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_FAIR, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"))


set_window_value(AT_FAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 6, AG_WINDOW_LENGTH, 1);
set_window_value(AT_FAIR, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 6, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FAIR, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 6, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_FAIR, 6, AG_WINDOW_SFX, asset_get("sfx_ice_on_player"));

set_window_value(AT_FAIR, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 7, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FAIR, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 7, AG_WINDOW_ANIM_FRAME_START, 11);


set_window_value(AT_FAIR, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 8, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FAIR, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 8, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_FAIR, 8, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FAIR,4);

set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 48);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -48);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 50);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 74);
set_hitbox_value(AT_FAIR, 1, HG_SHAPE,0);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 85);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, sound_get("slice1"));
set_hitbox_value(AT_FAIR, 1, HG_HITSTUN_MULTIPLIER, .95);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 303);

set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 14);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -74);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 70);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_FAIR, 2, HG_SHAPE,0);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 85);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, sound_get("slice1"));
set_hitbox_value(AT_FAIR, 2, HG_HITSTUN_MULTIPLIER, .95);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, 303);



set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 7);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 43);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -34);
set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 98);
set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 56);
set_hitbox_value(AT_FAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, sound_get("strong1"));
set_hitbox_value(AT_FAIR, 3, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FAIR, 1, HG_SDI_MULTIPLIER, 0.7);

set_hitbox_value(AT_FAIR,4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR,4, HG_WINDOW, 7);
set_hitbox_value(AT_FAIR,4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FAIR,4, HG_LIFETIME, 5);
set_hitbox_value(AT_FAIR,4, HG_HITBOX_X, 22);
set_hitbox_value(AT_FAIR,4, HG_HITBOX_Y, -62);
set_hitbox_value(AT_FAIR,4, HG_WIDTH, 90);
set_hitbox_value(AT_FAIR,4, HG_HEIGHT, 34);
set_hitbox_value(AT_FAIR,4, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR,4, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR,4, HG_DAMAGE, 9);
set_hitbox_value(AT_FAIR,4, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR,4, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FAIR,4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FAIR,4, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FAIR,4, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_FAIR,4, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FAIR,4, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_FAIR,4, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FAIR,4, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FAIR,4, HG_HIT_SFX, sound_get("strong1"));
set_hitbox_value(AT_FAIR,4, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FAIR,4, HG_VISUAL_EFFECT, 304);
