set_attack_value(AT_DSTRONG_2, AG_SPRITE, sprite_get("dstrong_hilt"));
set_attack_value(AT_DSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
set_attack_value(AT_DSTRONG_2, AG_STRONG_CHARGE_WINDOW, 1);

set_attack_value(AT_DSTRONG_2, AG_NUM_WINDOWS, 4);

set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);

set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSTRONG_2, 1);

//launcher
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG_2, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSTRONG_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSTRONG_2, 1, HG_WIDTH, 100);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_DSTRONG_2, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_DSTRONG_2, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DSTRONG_2, 1, HG_ANGLE, 70);
set_hitbox_value(AT_DSTRONG_2, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG_2, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG_2, 1, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_DSTRONG_2, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_med2"));
set_hitbox_value(AT_DSTRONG_2, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_GROUP, 4);