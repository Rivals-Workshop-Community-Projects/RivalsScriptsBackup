//fstrong
set_attack_value(AT_FSTRONG_2, AG_SPRITE, sprite_get("fstrong_2"));
set_attack_value(AT_FSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("fstrong_2_hurt"));
set_attack_value(AT_FSTRONG_2, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG_2, AG_NUM_WINDOWS, 5);

set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_TYPE, 12);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_SFX_FRAME, get_window_value(AT_FSTRONG_2, 2, AG_WINDOW_LENGTH) - 1);

set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_HSPEED, 8);

set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_ANIM_FRAME_START, 4);

set_num_hitboxes(AT_FSTRONG_2, 2);

set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG_2, 1, HG_LIFETIME, get_window_value(AT_FSTRONG_2, get_hitbox_value(AT_FSTRONG_2, 1, HG_WINDOW), AG_WINDOW_LENGTH));
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_X, 37);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FSTRONG_2, 1, HG_SHAPE, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WIDTH, 73);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG_2, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FSTRONG_2, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSTRONG_2, 1, HG_KNOCKBACK_SCALING, .85);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITPAUSE_SCALING, .85);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG_2, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG_2, 2, HG_LIFETIME, get_window_value(AT_FSTRONG_2, get_hitbox_value(AT_FSTRONG_2, 2, HG_WINDOW), AG_WINDOW_LENGTH));
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_X, 37);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FSTRONG_2, 2, HG_SHAPE, 1);
set_hitbox_value(AT_FSTRONG_2, 2, HG_WIDTH, 73);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HEIGHT, 32);
set_hitbox_value(AT_FSTRONG_2, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG_2, 2, HG_ANGLE, 361);
set_hitbox_value(AT_FSTRONG_2, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_FSTRONG_2, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSTRONG_2, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FSTRONG_2, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_GROUP, 1);