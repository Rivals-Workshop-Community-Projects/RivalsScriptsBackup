set_attack_value(AT_EXTRA_3, AG_SPRITE, sprite_get("throw"));
set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 2);
set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, sprite_get("throw_hurt"));
set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);

set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 3);




set_num_hitboxes(AT_EXTRA_3, 1);

//Sweet
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -140);
set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 48);
set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 1); //9 :(
set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 90);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 1); //1.15
set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_LOCKOUT, 12);
