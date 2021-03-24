set_attack_value(AT_FSTRONG_2, AG_SPRITE, sprite_get("red_fstrong"));
set_attack_value(AT_FSTRONG_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSTRONG_2, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("red_fstrong_hurt"));
set_attack_value(AT_FSTRONG_2, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_SFX, asset_get("sfx_clairen_tip_loop"));

set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_HSPEED, 6);

set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_HSPEED, -2);

set_num_hitboxes(AT_FSTRONG_2, 1);

set_hitbox_value(AT_FSTRONG_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG_2, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_X, 48);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WIDTH, 61);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HEIGHT, 34);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG_2, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_FSTRONG_2, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG_2, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_FSTRONG_2, 1, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_FSTRONG_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_FSTRONG_2, 1, HG_VISUAL_EFFECT, red_new_stab_1 );
set_hitbox_value(AT_FSTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FSTRONG_2, 1, HG_HIT_SFX, sound_get("RedHit4"));