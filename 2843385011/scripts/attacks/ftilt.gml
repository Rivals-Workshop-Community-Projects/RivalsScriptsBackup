set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX, sound_get("se_edge_attackhard_S02"));
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FTILT, 2);


set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 67);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 104);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 85);
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 40);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, .85);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 306);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, sound_get("sfx_smash_ult_sword_hit_heavy"));
set_hitbox_value(AT_FTILT, 1, HG_EXTRA_CAMERA_SHAKE, 2);
set_hitbox_value(AT_FTILT, 1, HG_HIT_LOCKOUT, 10);


set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 50);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 90);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 85);
set_hitbox_value(AT_FTILT, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, sound_get("sfx_smash_ult_sword_hit_medium"));