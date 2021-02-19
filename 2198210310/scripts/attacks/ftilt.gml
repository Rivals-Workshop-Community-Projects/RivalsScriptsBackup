set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 3);

set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, asset_get("sfx_absa_cloud_crackle"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FTILT, 6);

//hit 1 high
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 25);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 35);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 35);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 65);
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 129);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT_Y_OFFSET, 30);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_GROUP, 1);

//hit 1 low
set_hitbox_value(AT_FTILT, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 45);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -10);
set_hitbox_value(AT_FTILT, 2, HG_HIT_LOCKOUT, 0);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_GROUP, 1);

//hit 2 high
set_hitbox_value(AT_FTILT, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_X, 35);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FTILT, 3, HG_HIT_LOCKOUT, 0);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_GROUP, 1);

//hit 2 low
set_hitbox_value(AT_FTILT, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FTILT, 4, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 4, HG_LIFETIME, 6);
set_hitbox_value(AT_FTILT, 4, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_X, 65);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_Y, -10);
set_hitbox_value(AT_FTILT, 4, HG_HIT_LOCKOUT, 0);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_GROUP, 1);

//hit 3 high
set_hitbox_value(AT_FTILT, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FTILT, 5, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 5, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_FTILT, 5, HG_HITBOX_X, 45);
set_hitbox_value(AT_FTILT, 5, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FTILT, 5, HG_HIT_LOCKOUT, 0);
set_hitbox_value(AT_FTILT, 5, HG_HITBOX_GROUP, 1);

//hit 3 low
set_hitbox_value(AT_FTILT, 6, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FTILT, 6, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 6, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_FTILT, 6, HG_HITBOX_X, 75);
set_hitbox_value(AT_FTILT, 6, HG_HITBOX_Y, -10);
set_hitbox_value(AT_FTILT, 6, HG_HIT_LOCKOUT, 0);
set_hitbox_value(AT_FTILT, 6, HG_HITBOX_GROUP, 1);