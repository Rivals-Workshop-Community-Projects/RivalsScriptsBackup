set_attack_value(AT_UTHROW, AG_CATEGORY, 2);
set_attack_value(AT_UTHROW, AG_SPRITE, sprite_get("uthrow"));
set_attack_value(AT_UTHROW, AG_NUM_WINDOWS, 2);
set_attack_value(AT_UTHROW, AG_OFF_LEDGE, 1);
set_attack_value(AT_UTHROW, AG_HURTBOX_SPRITE, sprite_get("uthrow_hurt"));

set_window_value(AT_UTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UTHROW, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_kragg_throw"));
set_window_value(AT_UTHROW, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_UTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_num_hitboxes(AT_UTHROW, 1);

set_hitbox_value(AT_UTHROW, 1, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTHROW, 1, HG_WINDOW, 1);
set_hitbox_value(AT_UTHROW, 1, HG_SHAPE, 0);
set_hitbox_value(AT_UTHROW, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_Y, -100);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_X, -10);
set_hitbox_value(AT_UTHROW, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_UTHROW, 1, HG_WIDTH, 60);
set_hitbox_value(AT_UTHROW, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UTHROW, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_UTHROW, 1, HG_ANGLE,  110);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_UTHROW, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_HITPAUSE, 13);
set_hitbox_value(AT_UTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_UTHROW, 1, HG_HITPAUSE_SCALING, .65);
set_hitbox_value(AT_UTHROW, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_UTHROW, 1, HG_HIT_LOCKOUT,  0);
set_hitbox_value(AT_UTHROW, 1, HG_VISUAL_EFFECT, 304);
