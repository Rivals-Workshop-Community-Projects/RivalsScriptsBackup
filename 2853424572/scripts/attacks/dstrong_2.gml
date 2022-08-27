set_attack_value(AT_DSTRONG_2, AG_CATEGORY, 0);
set_attack_value(AT_DSTRONG_2, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSTRONG_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSTRONG_2, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
set_attack_value(AT_DSTRONG_2, AG_NO_PARRY_STUN, 1);

set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_SFX, asset_get("sfx_absa_concentrate"));
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_SFX, sound_get("sfx_magic_stomp"));
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_SFX_FRAME, 13);

set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSTRONG_2, 3, 33, 0);

set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_TYPE, 2);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DSTRONG_2, 4, 33, 0);

set_num_hitboxes(AT_DSTRONG_2, 1);

set_hitbox_value(AT_DSTRONG_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG_2, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSTRONG_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_X, 36);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DSTRONG_2, 1, HG_WIDTH, 160);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_DSTRONG_2, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_DSTRONG_2, 1, HG_DAMAGE, 14);
set_hitbox_value(AT_DSTRONG_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DSTRONG_2, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DSTRONG_2, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG_2, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSTRONG_2, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSTRONG_2, 1, HG_EXTRA_HITPAUSE, 20);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_VISUAL_EFFECT, 197);
set_hitbox_value(AT_DSTRONG_2, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DSTRONG_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
set_hitbox_value(AT_DSTRONG_2, 1, HG_IGNORES_PROJECTILES, 0);