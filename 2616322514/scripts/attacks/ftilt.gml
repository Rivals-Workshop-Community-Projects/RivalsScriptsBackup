set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_attack_value(AT_FTILT, AG_MUNO_ATTACK_MISC, "Hitting when supercharged will make the attack cancellable into a strong or special attack.");
set_hitbox_value(AT_FTILT, 2, HG_MUNO_HITBOX_NAME, "Sweetspot");
set_hitbox_value(AT_FTILT, 2, HG_MUNO_HITBOX_MISC, "Creates electric terrain or stuns on hit.");

set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, sound_get("sfx_claw_swing_med"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 15);

set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED, 2);

set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 7);

set_num_hitboxes(AT_FTILT,2);

set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -48);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 74);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 80);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 94);
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, 22);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, sound_get("sfx_electro_hit_med"));


set_hitbox_value(AT_FTILT, 2, HG_EXTRA_CAMERA_SHAKE, 2);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -18);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 108);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 20);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 20);
set_hitbox_value(AT_FTILT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 60);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 16);
set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, electric_hit);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, sound_get("sfx_electro_hit_heavy"));