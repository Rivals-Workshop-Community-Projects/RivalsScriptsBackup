set_attack_value(AT_FSTRONG_2, AG_SPRITE, sprite_get("fstrong_mud"));
set_attack_value(AT_FSTRONG_2, AG_NUM_WINDOWS, 6);
set_attack_value(AT_FSTRONG_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG_2, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("fstrong_mud_hurt"));

set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_LENGTH, 8);

set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 4)
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_ANIM_FRAME_START, 12);

set_window_value(AT_FSTRONG_2, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 6, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSTRONG_2, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG_2, 6, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_FSTRONG_2, 6, AG_WINDOW_HAS_WHIFFLAG, 10);

set_num_hitboxes(AT_FSTRONG_2, 2);

set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG_2, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WIDTH, 48);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG_2, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_FSTRONG_2, 1, HG_ANGLE, 40);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSTRONG_2, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG_2, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSTRONG_2, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG_2, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSTRONG_2, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_X, 82);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSTRONG_2, 2, HG_WIDTH, 60);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_FSTRONG_2, 2, HG_SHAPE, 1);
set_hitbox_value(AT_FSTRONG_2, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG_2, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_FSTRONG_2, 2, HG_ANGLE, 40);
set_hitbox_value(AT_FSTRONG_2, 2, HG_BASE_KNOCKBACK, 9.5);
set_hitbox_value(AT_FSTRONG_2, 2, HG_KNOCKBACK_SCALING, .75);
set_hitbox_value(AT_FSTRONG_2, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG_2, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG_2, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HIT_SFX, sound_get("sfx_dstrong_hit"));
