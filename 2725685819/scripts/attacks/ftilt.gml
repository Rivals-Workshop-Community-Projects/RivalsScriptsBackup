set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 6);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

//start up
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 3);
//hit 1
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED, 7);

//bridge
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_FTILT, 3, AG_WINDOW_SFX_FRAME, 5);

//hit 2
set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 5);

//recovery
set_window_value(AT_FTILT, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FTILT, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

//IASA
set_window_value(AT_FTILT, 6, AG_WINDOW_LENGTH, 35);
set_window_value(AT_FTILT, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTILT, 6, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_FTILT, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 6, AG_WINDOW_SFX, sound_get("saya"));
set_window_value(AT_FTILT, 6, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_FTILT, 6, AG_WINDOW_IASA, 1);

set_num_hitboxes(AT_FTILT, 2);

set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 50);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 110);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FTILT, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 4.5);
//set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FTILT, 1, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_FTILT, 1, HG_HITSTUN_MULTIPLIER, .6);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_FTILT, 1, HG_CHAOS_LEVEL, 0);

set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 50);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 100);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 35);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, sound_get("slice"));
set_hitbox_value(AT_FTILT, 2, HG_CHAOS_LEVEL, 0);