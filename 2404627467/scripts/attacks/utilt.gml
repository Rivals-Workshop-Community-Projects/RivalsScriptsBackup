set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 3);
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 13);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 9);

set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UTILT, 2, AG_WINDOW_HSPEED, 1);

set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 23);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_UTILT, 7);

//Initial hit
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 42);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -23);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 38);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 108);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));
set_hitbox_value(AT_UTILT, 1, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_UTILT, 1, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_UTILT, 1, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_UTILT, 1, HG_DRIFT_MULTIPLIER, 0.25);
set_hitbox_value(AT_UTILT, 1, HG_TECHABLE, 1);

//Close (Clean)
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 10);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -98);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 16);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 46);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, fx_slashlight);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, sound_get("sfx_anthem_hit1"));
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, 1);

//Mid (Clean)
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, 24);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -136);
set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 48);
set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 64);
set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_UTILT, 3, HG_VISUAL_EFFECT, fx_slashlight);
set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, sound_get("sfx_anthem_hit1"));
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_GROUP, 1);

//Far (Clean)
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 4, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_X, 10);
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_Y, -176);
set_hitbox_value(AT_UTILT, 4, HG_WIDTH, 24);
set_hitbox_value(AT_UTILT, 4, HG_HEIGHT, 60);
set_hitbox_value(AT_UTILT, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 4, HG_DAMAGE, 8);
set_hitbox_value(AT_UTILT, 4, HG_ANGLE, 96);
set_hitbox_value(AT_UTILT, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTILT, 4, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_UTILT, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UTILT, 4, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_UTILT, 4, HG_VISUAL_EFFECT, fx_slashlight);
set_hitbox_value(AT_UTILT, 4, HG_HIT_SFX, sound_get("sfx_anthem_hit2"));
set_hitbox_value(AT_UTILT, 4, HG_HITBOX_GROUP, 1);

//Close (Late)
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 5, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, 5, HG_LIFETIME, 9);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_X, 10);
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_Y, -80);
set_hitbox_value(AT_UTILT, 5, HG_WIDTH, 16);
set_hitbox_value(AT_UTILT, 5, HG_HEIGHT, 46);
set_hitbox_value(AT_UTILT, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_UTILT, 5, HG_ANGLE, 95);
set_hitbox_value(AT_UTILT, 5, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_UTILT, 5, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_UTILT, 5, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_UTILT, 5, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_UTILT, 5, HG_VISUAL_EFFECT, fx_slashlight);
set_hitbox_value(AT_UTILT, 5, HG_HIT_SFX, sound_get("sfx_anthem_hit1"));
set_hitbox_value(AT_UTILT, 5, HG_HITBOX_GROUP, 1);

//Mid (Late)
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 6, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, 6, HG_LIFETIME, 9);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_X, 24);
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_Y, -128);
set_hitbox_value(AT_UTILT, 6, HG_WIDTH, 48);
set_hitbox_value(AT_UTILT, 6, HG_HEIGHT, 64);
set_hitbox_value(AT_UTILT, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 6, HG_DAMAGE, 4);
set_hitbox_value(AT_UTILT, 6, HG_ANGLE, 95);
set_hitbox_value(AT_UTILT, 6, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_UTILT, 6, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_UTILT, 6, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_UTILT, 6, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_UTILT, 6, HG_VISUAL_EFFECT, fx_slashlight);
set_hitbox_value(AT_UTILT, 6, HG_HIT_SFX, sound_get("sfx_anthem_hit1"));
set_hitbox_value(AT_UTILT, 6, HG_HITBOX_GROUP, 1);

//Far (Late)
set_hitbox_value(AT_UTILT, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 7, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, 7, HG_LIFETIME, 9);
set_hitbox_value(AT_UTILT, 7, HG_HITBOX_X, 10);
set_hitbox_value(AT_UTILT, 7, HG_HITBOX_Y, -156);
set_hitbox_value(AT_UTILT, 7, HG_WIDTH, 24);
set_hitbox_value(AT_UTILT, 7, HG_HEIGHT, 60);
set_hitbox_value(AT_UTILT, 7, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 7, HG_DAMAGE, 6);
set_hitbox_value(AT_UTILT, 7, HG_ANGLE, 96);
set_hitbox_value(AT_UTILT, 7, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UTILT, 7, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_UTILT, 7, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_UTILT, 7, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_UTILT, 7, HG_VISUAL_EFFECT, fx_slashlight);
set_hitbox_value(AT_UTILT, 7, HG_HIT_SFX, sound_get("sfx_anthem_hit2"));
set_hitbox_value(AT_UTILT, 7, HG_HITBOX_GROUP, 1);

