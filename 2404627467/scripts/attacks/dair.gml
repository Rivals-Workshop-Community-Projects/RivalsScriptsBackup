set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 9);

set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 7);

//Startup
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, sound_get("sfx_anthem_swipe1"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 14);

set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED, -1);

set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DAIR, 4, AG_WINDOW_GOTO, 8);

//Throw
set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DAIR, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_SFX, sound_get("sfx_anthem_swipe2"));
set_window_value(AT_DAIR, 5, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_DAIR, 6, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAME_START, 11);

set_window_value(AT_DAIR, 7, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DAIR, 7, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DAIR, 7, AG_WINDOW_ANIM_FRAME_START, 12);


set_num_hitboxes(AT_DAIR, 6);

//Initial hit 1
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 72);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, 64);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 81);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 57);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));
set_hitbox_value(AT_DAIR, 1, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_DAIR, 1, HG_HITSTUN_MULTIPLIER, 1.25);
set_hitbox_value(AT_DAIR, 1, HG_TECHABLE, 1);

//Initial hit 2
set_hitbox_value(AT_DAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 42);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, 16);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 50);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 44);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 2);

//Throw Hit
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 6);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, -103);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, -64);
set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 123);
set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 102);
set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, 0.95);
set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT, fx_slashheavy);
set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, sound_get("sfx_anthem_hit2"));

//Late
//Close
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X, -40);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, -12);
set_hitbox_value(AT_DAIR, 4, HG_WIDTH, 62);
set_hitbox_value(AT_DAIR, 4, HG_HEIGHT, 40);
set_hitbox_value(AT_DAIR, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_DAIR, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_DAIR, 4, HG_ANGLE, 112);
set_hitbox_value(AT_DAIR, 4, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DAIR, 4, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DAIR, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DAIR, 4, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DAIR, 4, HG_VISUAL_EFFECT, fx_slashlight);
set_hitbox_value(AT_DAIR, 4, HG_HIT_SFX, sound_get("sfx_anthem_hit1"));

//Mid
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_X, -74);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_Y, -11);
set_hitbox_value(AT_DAIR, 5, HG_WIDTH, 62);
set_hitbox_value(AT_DAIR, 5, HG_HEIGHT, 62);
set_hitbox_value(AT_DAIR, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 5, HG_DAMAGE, 7);
set_hitbox_value(AT_DAIR, 5, HG_ANGLE, 112);
set_hitbox_value(AT_DAIR, 5, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 5, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DAIR, 5, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DAIR, 5, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DAIR, 5, HG_VISUAL_EFFECT, fx_slashheavy);
set_hitbox_value(AT_DAIR, 5, HG_HIT_SFX, sound_get("sfx_anthem_hit2"));

//Far
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 6, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_X, -94);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_Y, 6);
set_hitbox_value(AT_DAIR, 6, HG_WIDTH, 48);
set_hitbox_value(AT_DAIR, 6, HG_HEIGHT, 88);
set_hitbox_value(AT_DAIR, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 6, HG_DAMAGE, 4);
set_hitbox_value(AT_DAIR, 6, HG_ANGLE, 106);
set_hitbox_value(AT_DAIR, 6, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DAIR, 6, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DAIR, 6, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DAIR, 6, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DAIR, 6, HG_VISUAL_EFFECT, fx_slashlight);
set_hitbox_value(AT_DAIR, 6, HG_HIT_SFX, sound_get("sfx_anthem_hit1"));