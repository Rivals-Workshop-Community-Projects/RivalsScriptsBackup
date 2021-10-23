set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));
set_attack_value(AT_DTILT, AG_CATEGORY, 0);
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 7);

//DTilt1
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DTILT, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_CANCEL_FRAME, 4);

//DTilt2
set_window_value(AT_DTILT, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DTILT, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_DTILT, 4, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DTILT, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DTILT, 5, AG_WINDOW_HAS_WHIFFLAG, 0);

set_window_value(AT_DTILT, 6, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DTILT, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 6, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DTILT, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_DTILT, 7, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DTILT, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 7, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DTILT, 7, AG_WINDOW_HAS_WHIFFLAG, 1);


//tape spawn
set_window_value(AT_DTILT, 8, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DTILT, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 8, AG_WINDOW_SFX, sound_get("sfx-tape-2"));
set_window_value(AT_DTILT, 8, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_DTILT, 9, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTILT, 9, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 9, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DTILT, 10, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DTILT, 10, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 10, AG_WINDOW_ANIM_FRAME_START, 3);

set_num_hitboxes(AT_DTILT, 2);

set_hitbox_value(AT_DTILT, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 48);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 64);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 36);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 60);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));


set_hitbox_value(AT_DTILT, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 5);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 40);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -50);
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 66);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 84);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 45);
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DTILT, 2, HG_HIT_LOCKOUT, 4);