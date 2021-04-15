set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));


set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 9);


set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_HSPEED, 5);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 4);


set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UTILT,1);

set_hitbox_value(AT_UTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 2);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -55);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 55);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 85);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, .5); //was .7
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .5); //was .7
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));