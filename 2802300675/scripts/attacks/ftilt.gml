set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_window_value(AT_FTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_FTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);

//attack
set_window_value(AT_FTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_FTILT, 3, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_FTILT, 3, AG_WINDOW_HSPEED, 4);

set_window_value(AT_FTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_FTILT, 2);


set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 50);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 80);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 64);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 40);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, .80);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT_Y_OFFSET, -15);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FTILT, 1, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_FTILT, 1, HG_HITSTUN_MULTIPLIER,.9);

set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 35);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -10);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 100);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 40);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, .80);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, bigsmoke);
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT_Y_OFFSET, -15);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FTILT, 2, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_FTILT, 2, HG_HITSTUN_MULTIPLIER, .9);
