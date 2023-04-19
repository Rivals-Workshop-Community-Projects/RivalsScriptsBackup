set_attack_value(AT_DTHROW, AG_CATEGORY, 2);
set_attack_value(AT_DTHROW, AG_SPRITE, sprite_get("dthrow"));
set_attack_value(AT_DTHROW, AG_NUM_WINDOWS, 2);
set_attack_value(AT_DTHROW, AG_OFF_LEDGE, 1);
set_attack_value(AT_DTHROW, AG_HURTBOX_SPRITE, sprite_get("dthrow_hurt"));

set_window_value(AT_DTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DTHROW, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_kragg_throw"));
set_window_value(AT_DTHROW, 1, AG_WINDOW_SFX_FRAME, 11);

set_window_value(AT_DTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTHROW, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 5);

set_num_hitboxes(AT_DTHROW, 1);

set_hitbox_value(AT_DTHROW, 1, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTHROW, 1, HG_WINDOW, 1);
set_hitbox_value(AT_DTHROW, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DTHROW, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_X, 50);
set_hitbox_value(AT_DTHROW, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DTHROW, 1, HG_WIDTH, 60);
set_hitbox_value(AT_DTHROW, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DTHROW, 1, HG_DAMAGE, 11);
set_hitbox_value(AT_DTHROW, 1, HG_ANGLE,  270);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DTHROW, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DTHROW, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_DTHROW, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DTHROW, 1, HG_HIT_LOCKOUT,  0);
