set_attack_value(AT_DTHROW, AG_SPRITE, sprite_get("nodispenser_dtilt"));
set_attack_value(AT_DTHROW, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DTHROW, AG_HURTBOX_SPRITE, sprite_get("nodispenser_dtilt_hurt"));

set_window_value(AT_DTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTHROW, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_DTHROW, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_DTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DTHROW, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DTHROW, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DTHROW,2);

set_hitbox_value(AT_DTHROW, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTHROW, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_X, 36);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DTHROW, 1, HG_WIDTH, 60);
set_hitbox_value(AT_DTHROW, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_DTHROW, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DTHROW, 1, HG_PRIORITY, 8);
set_hitbox_value(AT_DTHROW, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DTHROW, 1, HG_ANGLE, 35);
set_hitbox_value(AT_DTHROW, 1, HG_THROWS_ROCK, 0);
set_hitbox_value(AT_DTHROW, 1, HG_FORCE_FLINCH, 0);
set_hitbox_value(AT_DTHROW, 1, HG_HITSTUN_MULTIPLIER, 0);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DTHROW, 1, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DTHROW, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_DTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));