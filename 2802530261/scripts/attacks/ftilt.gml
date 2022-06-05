set_attack_value(AT_FTILT, AG_SPRITE, sprite_get(string(spr_dir) + "_ftilt"));
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get(string(spr_dir) + "_ftilt_hurt"));
set_attack_value(AT_FTILT, AG_CATEGORY, 0);
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 3);

set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1); 
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FTILT, 1);

set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 38);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 68);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 40);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));