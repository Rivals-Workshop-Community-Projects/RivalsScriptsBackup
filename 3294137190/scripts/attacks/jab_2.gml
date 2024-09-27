set_attack_value(AT_JAB_2, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_JAB_2, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));
set_attack_value(AT_JAB_2, AG_NO_PARRY_STUN, 1);

set_window_value(AT_JAB_2, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_JAB_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB_2, 1, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_JAB_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB_2, 1, AG_WINDOW_SFX, sound_get("sprj_nokonata_noko1"));
set_window_value(AT_JAB_2, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_JAB_2, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB_2, 2, AG_WINDOW_ANIM_FRAME_START, 16);

set_window_value(AT_JAB_2, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_JAB_2, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_JAB_2, 3, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_JAB_2, 3, AG_WINDOW_HAS_WHIFFLAG, 1); //NOTE: if you make it a multi-hit jab, remove whifflag, since Rivals multi-step jabs do not have whifflag. single-hits like sandbert, elli, etc DO have whifflag

set_num_hitboxes(AT_JAB_2, 1);

set_hitbox_value(AT_JAB_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB_2, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_JAB_2, 1, HG_HITBOX_Y, -45);
set_hitbox_value(AT_JAB_2, 1, HG_WIDTH, 95);
set_hitbox_value(AT_JAB_2, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_JAB_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB_2, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_JAB_2, 1, HG_ANGLE, 80);
set_hitbox_value(AT_JAB_2, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_JAB_2, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_JAB_2, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_JAB_2, 1, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_JAB_2, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_JAB_2, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_JAB_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
