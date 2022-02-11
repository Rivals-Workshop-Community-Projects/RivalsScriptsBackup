set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 9);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

//Startup
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

//Jab1
set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 1);

//Jab1_End
set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);

//Start JAB 2
set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_JAB, 4, AG_WINDOW_HSPEED, 2);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

//Jab2
set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 6);

//Jab2_End
set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_JAB, 6, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_TYPE, 1);

//Jab3
set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_JAB, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_JAB, 7, AG_WINDOW_SFX, sound_get("revolver_cock"));

set_window_value(AT_JAB, 8, AG_WINDOW_LENGTH, 10);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAME_START, 10);

set_window_value(AT_JAB, 9, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_JAB, 9, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_JAB, 9, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 9, AG_WINDOW_SFX, sound_get("revolver_deploy"));

set_num_hitboxes(AT_JAB, 3);

set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 39);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -33);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 66);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 28);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 30);
set_hitbox_value(AT_JAB, 1, HG_SHAPE, 1);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_JAB, 1, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 60);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -34);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 95);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 33);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 35);
set_hitbox_value(AT_JAB, 2, HG_EXTRA_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 69);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -38);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 125);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 7);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 40);
set_hitbox_value(AT_JAB, 3, HG_EXTRA_HITPAUSE, 6);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_JAB, 3, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_JAB, 3, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT, 21);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, -1);