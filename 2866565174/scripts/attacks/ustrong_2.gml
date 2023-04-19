set_attack_value(AT_USTRONG_2, AG_SPRITE, sprite_get("ustrong_grapple"));
set_attack_value(AT_USTRONG_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USTRONG_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG_2, AG_HURTBOX_SPRITE, sprite_get("ustrong_grapple_hurt"));

set_window_value(AT_USTRONG_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_USTRONG_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_USTRONG_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_num_hitboxes(AT_USTRONG_2, 1);

set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG_2, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USTRONG_2, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_X, 35);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_USTRONG_2, 1, HG_WIDTH, 60);
set_hitbox_value(AT_USTRONG_2, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_USTRONG_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG_2, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_USTRONG_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG_2, 1, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_USTRONG_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));