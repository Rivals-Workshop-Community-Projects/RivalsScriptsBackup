set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);


set_num_hitboxes(AT_FTILT,1);

set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -29);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 86);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 65);
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 40);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, sound_get("genius"));
