//jab3.
set_attack_value(AT_FTHROW, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_FTHROW, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(AT_FTHROW, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_FTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_FTHROW, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FTHROW, 1, AG_WINDOW_HSPEED, 6);

set_window_value(AT_FTHROW, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 24);

set_window_value(AT_FTHROW, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 28);

set_window_value(AT_FTHROW, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTHROW, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 32);
set_window_value(AT_FTHROW, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FTHROW, 1);

set_hitbox_value(AT_FTHROW, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTHROW, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTHROW, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_X, 34);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FTHROW, 1, HG_WIDTH, 72);
set_hitbox_value(AT_FTHROW, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_FTHROW, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FTHROW, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_FTHROW, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FTHROW, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FTHROW, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FTHROW, 1, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_FTHROW, 1, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_FTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_FTHROW, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_FTHROW, 1, HG_EXTRA_HITPAUSE, 2);

