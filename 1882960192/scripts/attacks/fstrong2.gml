set_attack_value(AT_FTHROW, AG_SPRITE, sprite_get("fstrong2"));
set_attack_value(AT_FTHROW, AG_NUM_WINDOWS, 7);
set_attack_value(AT_FTHROW, AG_STRONG_CHARGE_WINDOW, 2);
set_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE, sprite_get("fstrong2_hurt"));

set_window_value(AT_FTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTHROW, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .15);

set_window_value(AT_FTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FTHROW, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .35);

set_window_value(AT_FTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FTHROW, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FTHROW, 3, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_FTHROW, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTHROW, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FTHROW, 4, AG_WINDOW_HSPEED, 6);
set_window_value(AT_FTHROW, 4, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FTHROW, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FTHROW, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, .25);

set_window_value(AT_FTHROW, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 5, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FTHROW, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTHROW, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FTHROW, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_FTHROW, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 6, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FTHROW, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 6, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FTHROW, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_FTHROW, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 7, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FTHROW, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTHROW, 7, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FTHROW, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FTHROW,1);

set_hitbox_value(AT_FTHROW, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTHROW, 1, HG_WINDOW, 4);
set_hitbox_value(AT_FTHROW, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_X, 46);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_FTHROW, 1, HG_WIDTH, 96);
set_hitbox_value(AT_FTHROW, 1, HG_HEIGHT, 68);
set_hitbox_value(AT_FTHROW, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_FTHROW, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_FTHROW, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTHROW, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FTHROW, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FTHROW, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FTHROW, 1, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_FTHROW, 1, HG_HIT_LOCKOUT, 10);