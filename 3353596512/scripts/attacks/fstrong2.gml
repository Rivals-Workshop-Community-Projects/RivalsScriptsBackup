set_attack_value(AT_FSTRONG_2, AG_SPRITE, sprite_get("fstrong_stop"));
set_attack_value(AT_FSTRONG_2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FSTRONG_2, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(AT_FSTRONG_2, AG_MUNO_ATTACK_NAME, "FStrong (Stop Sign)");

//startup 1
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 2);

//startup 2
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);

//release
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_SFX, asset_get("sfx_tow_anchor_land"));

//active
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 7);

//endlag
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSTRONG_2,2);

//upper hitbox
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_X, 60);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_Y, -56);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WIDTH, 84);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HEIGHT, 116);
set_hitbox_value(AT_FSTRONG_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG_2, 1, HG_DAMAGE, 13);
set_hitbox_value(AT_FSTRONG_2, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG_2, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HIT_SFX, sound_get("shovel_hit"));
set_hitbox_value(AT_FSTRONG_2, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HIT_LOCKOUT, 10);

//lower hitbox
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG_2, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG_2, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_X, 64);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FSTRONG_2, 2, HG_WIDTH, 86);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HEIGHT, 68);
set_hitbox_value(AT_FSTRONG_2, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG_2, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_FSTRONG_2, 2, HG_DAMAGE, 13);
set_hitbox_value(AT_FSTRONG_2, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG_2, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG_2, 2, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_FSTRONG_2, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HIT_SFX, sound_get("shovel_hit"));
set_hitbox_value(AT_FSTRONG_2, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HIT_LOCKOUT, 10);