set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

// startup
set_window_value(AT_FTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 1, AG_WINDOW_HSPEED, 5);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, sound_get("sfx_plague_spin_2"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 7);

// active
set_window_value(AT_FTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FTILT, 2, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX_FRAME, 2);

// endlag
set_window_value(AT_FTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 5);

set_num_hitboxes(AT_FTILT, 3);

set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_MUNO_HITBOX_NAME, "First Hit");
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 45);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 79);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 79);
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 70);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FTILT, 1, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_MUNO_HITBOX_NAME, "Second Hit");
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 42);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -36);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 80);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 78);
set_hitbox_value(AT_FTILT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 70);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FTILT, 2, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_FTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 3, HG_MUNO_HITBOX_NAME, "Final Hit");
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_X, 45);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FTILT, 3, HG_WIDTH, 79);
set_hitbox_value(AT_FTILT, 3, HG_HEIGHT, 79);
set_hitbox_value(AT_FTILT, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_FTILT, 3, HG_ANGLE, 40);
set_hitbox_value(AT_FTILT, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FTILT, 3, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_FTILT, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FTILT, 3, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FTILT, 3, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT, HFX_GEN_BIG);