set_attack_value(AT_USTRONG_2, AG_CATEGORY, 2);
set_attack_value(AT_USTRONG_2, AG_SPRITE, sprite_get("red_ustrong"));
set_attack_value(AT_USTRONG_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USTRONG_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USTRONG_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_USTRONG_2, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG_2, AG_HURTBOX_SPRITE, sprite_get("red_ustrong_hurt"));

set_window_value(AT_USTRONG_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_SFX, asset_get("sfx_clairen_tip_loop"));

set_window_value(AT_USTRONG_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_USTRONG_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_USTRONG_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG_2, 1);

set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG_2, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_X, 14);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_Y, -37);
set_hitbox_value(AT_USTRONG_2, 1, HG_WIDTH, 42);
set_hitbox_value(AT_USTRONG_2, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_USTRONG_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG_2, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_USTRONG_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USTRONG_2, 1, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_USTRONG_2, 1, HG_VISUAL_EFFECT, red_new_stab_1 );
set_hitbox_value(AT_USTRONG_2, 1, HG_HIT_SFX, sound_get("RedHit4"));