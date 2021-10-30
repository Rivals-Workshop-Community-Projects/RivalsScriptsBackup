set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);

//post-charge startup
set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 2);

//active
set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 3);

//whiff endlag
set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 24);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 4);

//GRAB
//throw down
set_window_value(AT_USTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_USTRONG, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_USTRONG, 5, AG_WINDOW_SFX_FRAME, 7);

//ANSHEN SHIRO
set_window_value(AT_USTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_LENGTH, 18);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_USTRONG, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_SFX, sound_get("swipe_Bl03"));
set_window_value(AT_USTRONG, 6, AG_WINDOW_SFX_FRAME, 17);
//ITAI DAKE DA
set_window_value(AT_USTRONG, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 7, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 16);

//endlag
set_window_value(AT_USTRONG, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 8, AG_WINDOW_LENGTH, 25);
set_window_value(AT_USTRONG, 8, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 17);

set_num_hitboxes(AT_USTRONG, 3);

set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -61);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 59);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 96);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG, 1, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 5);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 7);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -12);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 56);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 23);
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 270);
set_hitbox_value(AT_USTRONG, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USTRONG, 2, HG_EXTRA_HITPAUSE, 25);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 7);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 10);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -13);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 71);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 24);
set_hitbox_value(AT_USTRONG, 3, HG_SHAPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 0.75);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, sound_get("sfx_knifehit_l"));
set_hitbox_value(AT_USTRONG, 3, HG_DRIFT_MULTIPLIER, 1.2);
set_hitbox_value(AT_USTRONG, 3, HG_HITSTUN_MULTIPLIER, 0.9);