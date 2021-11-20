set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 0);


set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 12)
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 8)
set_window_value(AT_FAIR, 3, AG_WINDOW_HSPEED, -2);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);



set_num_hitboxes(AT_FAIR,4);

set_hitbox_value(AT_FAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 18);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -74);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 75);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 26);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 40);
set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 12);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FAIR, 1, HG_HITSTUN_MULTIPLIER, 1);

set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 42);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 80);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 90);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 40);
set_hitbox_value(AT_FAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_FAIR, 2, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FAIR, 2, HG_HITSTUN_MULTIPLIER, 1);

set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 99);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 30);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -4);
set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 78);
set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 46);
set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 90);
set_hitbox_value(AT_FAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_FAIR, 3, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, sound_get("bonk"));
set_hitbox_value(AT_FAIR, 3, HG_HITSTUN_MULTIPLIER, 6);

set_hitbox_value(AT_FAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_FAIR, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_X, 10);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_Y, -4);
set_hitbox_value(AT_FAIR, 4, HG_WIDTH, 38);
set_hitbox_value(AT_FAIR, 4, HG_HEIGHT, 36);
set_hitbox_value(AT_FAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_FAIR, 4, HG_ANGLE, 90);
set_hitbox_value(AT_FAIR, 4, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FAIR, 4, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_FAIR, 4, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_FAIR, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FAIR, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FAIR, 4, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FAIR, 4, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FAIR, 4, HG_HIT_SFX, sound_get("bonk"));
set_hitbox_value(AT_FAIR, 4, HG_HITSTUN_MULTIPLIER, 6);