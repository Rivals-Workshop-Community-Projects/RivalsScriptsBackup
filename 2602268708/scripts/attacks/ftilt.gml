set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_window_value(AT_FTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_FTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX, sound_get("rhm_smack"));
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX_FRAME, 3);
//credit to mineplanet for the crispy smack sound lol

set_window_value(AT_FTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FTILT, 3);

set_hitbox_value(AT_FTILT, 1, HG_MUNO_HITBOX_NAME, "Sweetspot Front");
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 38);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 40);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_FTILT, 1, HG_HIT_PARTICLE_NUM, 2);

set_hitbox_value(AT_FTILT, 2, HG_MUNO_HITBOX_NAME, "Sweetspot Back");
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 60);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 60);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_FTILT, 2, HG_HIT_PARTICLE_NUM, 1);

set_hitbox_value(AT_FTILT, 3, HG_MUNO_HITBOX_NAME, "Sourspot");
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FTILT, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_X, 35);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FTILT, 3, HG_WIDTH, 100);
set_hitbox_value(AT_FTILT, 3, HG_HEIGHT, 100);
set_hitbox_value(AT_FTILT, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_FTILT, 3, HG_ANGLE, 70);
set_hitbox_value(AT_FTILT, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FTILT, 3, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_FTILT, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_FTILT, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FTILT, 3, HG_HIT_PARTICLE_NUM, 1);