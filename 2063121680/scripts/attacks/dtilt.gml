set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 4);

set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_DTILT, 2, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_SFX, sound_get("explosion"));
set_window_value(AT_DTILT, 3, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_DTILT, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DTILT, 2);

//initial hit
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 42);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -18);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 50);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 75);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_GROUP, 1);

//explosion hit
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 42);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -26);
set_hitbox_value(AT_DTILT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 70);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 80);
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, 0);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_GROUP, 2);