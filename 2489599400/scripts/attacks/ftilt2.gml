set_attack_value(AT_FTHROW, AG_SPRITE, sprite_get("nodispenser_ftilt"));
set_attack_value(AT_FTHROW, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE, sprite_get("nodispenser_ftilt_hurt"));

set_window_value(AT_FTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_FTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FTHROW, 2, AG_WINDOW_HSPEED, 6);
set_window_value(AT_FTHROW, 2, AG_WINDOW_HSPEED_TYPE, 2);


set_window_value(AT_FTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FTHROW, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FTHROW,2);

set_hitbox_value(AT_FTHROW, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTHROW, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_X, 44);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FTHROW, 1, HG_WIDTH, 70);
set_hitbox_value(AT_FTHROW, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_FTHROW, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FTHROW, 1, HG_PRIORITY, 8);
set_hitbox_value(AT_FTHROW, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_FTHROW, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FTHROW, 1, HG_THROWS_ROCK, 0);
set_hitbox_value(AT_FTHROW, 1, HG_FORCE_FLINCH, 0);
set_hitbox_value(AT_FTHROW, 1, HG_HITSTUN_MULTIPLIER, 0);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTHROW, 1, HG_KNOCKBACK_SCALING, .45);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FTHROW, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_FTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));