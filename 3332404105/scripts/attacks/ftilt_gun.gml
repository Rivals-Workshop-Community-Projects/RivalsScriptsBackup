set_attack_value(AT_FTHROW, AG_SPRITE, sprite_get("ftilt_gun"));
set_attack_value(AT_FTHROW, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_window_value(AT_FTHROW, 1, AG_WINDOW_TYPE, get_window_value(AT_FTILT, 1, AG_WINDOW_TYPE));
set_window_value(AT_FTHROW, 1, AG_WINDOW_LENGTH, get_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH));
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAMES, get_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES));
set_window_value(AT_FTHROW, 1, AG_WINDOW_HAS_SFX, get_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX));
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX, sfx_gunload);
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX_FRAME, get_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME));

set_window_value(AT_FTHROW, 2, AG_WINDOW_TYPE, get_window_value(AT_FTILT, 2, AG_WINDOW_TYPE));
set_window_value(AT_FTHROW, 2, AG_WINDOW_LENGTH, get_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH));
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAMES, get_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES));
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAME_START, get_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START));

set_window_value(AT_FTHROW, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FTHROW, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_FTHROW, 4, AG_WINDOW_TYPE, get_window_value(AT_FTILT, 4, AG_WINDOW_TYPE));
set_window_value(AT_FTHROW, 4, AG_WINDOW_LENGTH, get_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH));
set_window_value(AT_FTHROW, 4, AG_WINDOW_ANIM_FRAMES, get_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES));
set_window_value(AT_FTHROW, 4, AG_WINDOW_ANIM_FRAME_START, get_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START));
set_window_value(AT_FTHROW, 4, AG_WINDOW_HAS_WHIFFLAG, get_window_value(AT_FTILT, 4, AG_WINDOW_HAS_WHIFFLAG));

set_num_hitboxes(AT_FTHROW, 2);

set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_TYPE, get_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE));
set_hitbox_value(AT_FTHROW, 1, HG_WINDOW, get_hitbox_value(AT_FTILT, 1, HG_WINDOW));
set_hitbox_value(AT_FTHROW, 1, HG_LIFETIME, get_hitbox_value(AT_FTILT, 1, HG_LIFETIME));
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_X, get_hitbox_value(AT_FTILT, 1, HG_HITBOX_X));
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_Y, get_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y));
set_hitbox_value(AT_FTHROW, 1, HG_WIDTH, get_hitbox_value(AT_FTILT, 1, HG_WIDTH));
set_hitbox_value(AT_FTHROW, 1, HG_HEIGHT, get_hitbox_value(AT_FTILT, 1, HG_HEIGHT));
set_hitbox_value(AT_FTHROW, 1, HG_SHAPE, get_hitbox_value(AT_FTILT, 1, HG_SHAPE));
set_hitbox_value(AT_FTHROW, 1, HG_PRIORITY, get_hitbox_value(AT_FTILT, 1, HG_PRIORITY));
set_hitbox_value(AT_FTHROW, 1, HG_DAMAGE, get_hitbox_value(AT_FTILT, 1, HG_DAMAGE));
set_hitbox_value(AT_FTHROW, 1, HG_ANGLE, get_hitbox_value(AT_FTILT, 1, HG_ANGLE));
set_hitbox_value(AT_FTHROW, 1, HG_BASE_KNOCKBACK, get_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK));
set_hitbox_value(AT_FTHROW, 1, HG_KNOCKBACK_SCALING, get_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING));
set_hitbox_value(AT_FTHROW, 1, HG_EXTRA_HITPAUSE, get_hitbox_value(AT_FTILT, 1, HG_EXTRA_HITPAUSE));
set_hitbox_value(AT_FTHROW, 1, HG_BASE_HITPAUSE, get_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE));
set_hitbox_value(AT_FTHROW, 1, HG_HITPAUSE_SCALING, get_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING));
set_hitbox_value(AT_FTHROW, 1, HG_VISUAL_EFFECT_X_OFFSET, get_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT_X_OFFSET));
set_hitbox_value(AT_FTHROW, 1, HG_HIT_SFX, get_hitbox_value(AT_FTILT, 1, HG_HIT_SFX));
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_GROUP, get_hitbox_value(AT_FTILT, 1, HG_HITBOX_GROUP));

set_hitbox_value(AT_FTHROW, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FTHROW, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FTHROW, 2, HG_LIFETIME, 30);
set_hitbox_value(AT_FTHROW, 2, HG_HITBOX_X, 54);
set_hitbox_value(AT_FTHROW, 2, HG_HITBOX_Y, -36);
set_hitbox_value(AT_FTHROW, 2, HG_ANGLE, 110);
set_hitbox_value(AT_FTHROW, 2, HG_PROJECTILE_SPRITE, sprite_get("bullet"));
set_hitbox_value(AT_FTHROW, 2, HG_PROJECTILE_HSPEED, 24);