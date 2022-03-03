set_attack_value(AT_FTHROW, AG_SPRITE, sprite_get("btilt"));
set_attack_value(AT_FTHROW, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE, sprite_get("btilt_hurt"));

set_window_value(AT_FTHROW, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_FTHROW, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .5);

set_window_value(AT_FTHROW, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_HSPEED, 5);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 1);


set_window_value(AT_FTHROW, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FTHROW, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FTHROW, 2);

set_hitbox_value(AT_FTHROW, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTHROW, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FTHROW, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FTHROW, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_FTHROW, 2, HG_HITBOX_X, 34);
set_hitbox_value(AT_FTHROW, 2, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FTHROW, 2, HG_WIDTH, 86);
set_hitbox_value(AT_FTHROW, 2, HG_HEIGHT, 46);
set_hitbox_value(AT_FTHROW, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FTHROW, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FTHROW, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_FTHROW, 2, HG_ANGLE, 90);
set_hitbox_value(AT_FTHROW, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FTHROW, 2, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_FTHROW, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FTHROW, 2, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_FTHROW, 2, HG_EXTRA_HITPAUSE, 15);
set_hitbox_value(AT_FTHROW, 2, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_FTHROW, 2, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_FTHROW, 2, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
set_hitbox_value(AT_FTHROW, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FTHROW, 2, HG_VISUAL_EFFECT, 305);

set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTHROW, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FTHROW, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_X, -5);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FTHROW, 1, HG_WIDTH, 16);
set_hitbox_value(AT_FTHROW, 1, HG_HEIGHT, 46);
set_hitbox_value(AT_FTHROW, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FTHROW, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_FTHROW, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_FTHROW, 1, HG_ANGLE, 40);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FTHROW, 1, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FTHROW, 1, HG_EXTRA_HITPAUSE, 6);
set_hitbox_value(AT_FTHROW, 1, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_FTHROW, 1, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_FTHROW, 1, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_FTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FTHROW, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FTHROW, 1, HG_VISUAL_EFFECT, 303);

