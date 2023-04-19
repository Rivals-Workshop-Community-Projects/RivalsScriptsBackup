set_attack_value(AT_FTHROW, AG_SPRITE, sprite_get("fthrow"));
set_attack_value(AT_FTHROW, AG_AIR_SPRITE, sprite_get("fthrow"));
set_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE, sprite_get("fthrow_hurt"));
set_attack_value(AT_FTHROW, AG_HURTBOX_AIR_SPRITE, sprite_get("fthrow_hurt"));
set_attack_value(AT_FTHROW, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FTHROW, AG_NUM_WINDOWS, 12);

set_window_value(AT_FTHROW, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_blow_weak1"));
set_window_value(AT_FTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_FTHROW, 2, AG_WINDOW_LENGTH, 30);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 3);

//Uthrow
set_window_value(AT_FTHROW, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FTHROW, 3, AG_WINDOW_HAS_SFX, 1);
set_hitbox_value(AT_FTHROW, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_hitbox_value(AT_FTHROW, 3, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_FTHROW, 4, AG_WINDOW_LENGTH, 3);//10
set_window_value(AT_FTHROW, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_FTHROW, 5, AG_WINDOW_LENGTH, 6);//10
set_window_value(AT_FTHROW, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTHROW, 5, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_FTHROW, 6, AG_WINDOW_LENGTH, 18);//10
set_window_value(AT_FTHROW, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTHROW, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FTHROW, 6, AG_WINDOW_HAS_SFX, 1);
set_hitbox_value(AT_FTHROW, 6, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_hitbox_value(AT_FTHROW, 6, AG_WINDOW_SFX_FRAME, 17);

set_window_value(AT_FTHROW, 7, AG_WINDOW_LENGTH, 6);//10
set_window_value(AT_FTHROW, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 7, AG_WINDOW_ANIM_FRAME_START, 11);

set_window_value(AT_FTHROW, 8, AG_WINDOW_LENGTH, 24);//10
set_window_value(AT_FTHROW, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTHROW, 8, AG_WINDOW_ANIM_FRAME_START, 12);
//Fthrow
set_window_value(AT_FTHROW, 9, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FTHROW, 9, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTHROW, 9, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_FTHROW, 9, AG_WINDOW_HAS_SFX, 1);
set_hitbox_value(AT_FTHROW, 9, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_hitbox_value(AT_FTHROW, 9, AG_WINDOW_SFX_FRAME, 14);

set_window_value(AT_FTHROW, 10, AG_WINDOW_LENGTH, 20);//10
set_window_value(AT_FTHROW, 10, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTHROW, 10, AG_WINDOW_ANIM_FRAME_START, 18);

//Dthrow
set_window_value(AT_FTHROW, 11, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FTHROW, 11, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTHROW, 11, AG_WINDOW_ANIM_FRAME_START, 22);
set_window_value(AT_FTHROW, 11, AG_WINDOW_HAS_SFX, 1);
set_hitbox_value(AT_FTHROW, 11, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_hitbox_value(AT_FTHROW, 11, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_FTHROW, 12, AG_WINDOW_LENGTH, 30);//10
set_window_value(AT_FTHROW, 12, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FTHROW, 12, AG_WINDOW_ANIM_FRAME_START, 26);

set_num_hitboxes(AT_FTHROW, 4);
//uthrow
/*
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTHROW, 1, HG_WINDOW, 4);
set_hitbox_value(AT_FTHROW, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FTHROW, 1, HG_WIDTH, 55);
set_hitbox_value(AT_FTHROW, 1, HG_HEIGHT, 95);
set_hitbox_value(AT_FTHROW, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FTHROW, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FTHROW, 1, HG_ANGLE, 90);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_KNOCKBACK, 3);
//set_hitbox_value(AT_FTHROW, 1, HG_EFFECT, 13);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_GROUP, -1);
*/
set_hitbox_value(AT_FTHROW, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTHROW, 4, HG_WINDOW, 7);
set_hitbox_value(AT_FTHROW, 4, HG_LIFETIME, 6);
set_hitbox_value(AT_FTHROW, 4, HG_HITBOX_X, 8);
set_hitbox_value(AT_FTHROW, 4, HG_HITBOX_Y, -96);
set_hitbox_value(AT_FTHROW, 4, HG_WIDTH, 72);
set_hitbox_value(AT_FTHROW, 4, HG_HEIGHT, 66);
set_hitbox_value(AT_FTHROW, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_FTHROW, 4, HG_DAMAGE, 8);
set_hitbox_value(AT_FTHROW, 4, HG_ANGLE, 90);
set_hitbox_value(AT_FTHROW, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FTHROW, 4, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_FTHROW, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FTHROW, 4, HG_VISUAL_EFFECT, frost_fx);
set_hitbox_value(AT_FTHROW, 4, HG_HITPAUSE_SCALING, 1.2);
set_hitbox_value(AT_FTHROW, 4, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_FTHROW, 4, HG_EXTRA_CAMERA_SHAKE, 2);
set_hitbox_value(AT_FTHROW, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FTHROW, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
//side
set_hitbox_value(AT_FTHROW, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTHROW, 2, HG_WINDOW, 10);
set_hitbox_value(AT_FTHROW, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FTHROW, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_FTHROW, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FTHROW, 2, HG_WIDTH, 55);
set_hitbox_value(AT_FTHROW, 2, HG_HEIGHT, 55);
set_hitbox_value(AT_FTHROW, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FTHROW, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_FTHROW, 2, HG_ANGLE, 40);
set_hitbox_value(AT_FTHROW, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FTHROW, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_FTHROW, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FTHROW, 2, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_FTHROW, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
//dwn
set_hitbox_value(AT_FTHROW, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTHROW, 3, HG_WINDOW, 12);
set_hitbox_value(AT_FTHROW, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_FTHROW, 3, HG_HITBOX_X, 10);
set_hitbox_value(AT_FTHROW, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FTHROW, 3, HG_WIDTH, 40);
set_hitbox_value(AT_FTHROW, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_FTHROW, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FTHROW, 3, HG_DAMAGE, 12);
set_hitbox_value(AT_FTHROW, 3, HG_ANGLE, 45);
set_hitbox_value(AT_FTHROW, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FTHROW, 3, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_FTHROW, 3, HG_VISUAL_EFFECT, delta_fx);
set_hitbox_value(AT_FTHROW, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FTHROW, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FTHROW, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));