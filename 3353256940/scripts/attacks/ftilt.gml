set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 6)
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FTILT,2);

set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 38);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 72);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 34);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 38);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 78);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 34);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 361);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 8);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, 0.45);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
