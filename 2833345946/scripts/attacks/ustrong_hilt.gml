set_attack_value(AT_USTRONG_2, AG_SPRITE, sprite_get("ustrong_hilt"));
set_attack_value(AT_USTRONG_2, AG_HURTBOX_SPRITE, sprite_get("ustrong_hilt_hurt"));
set_attack_value(AT_USTRONG_2, AG_STRONG_CHARGE_WINDOW, 2);

set_attack_value(AT_USTRONG_2, AG_NUM_WINDOWS, 5);

set_window_value(AT_USTRONG_2, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);

set_window_value(AT_USTRONG_2, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);

set_window_value(AT_USTRONG_2, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_heavy1"));
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_USTRONG_2, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_USTRONG_2, 5, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG_2, 1);

//launcher
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG_2, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_Y, -80);
set_hitbox_value(AT_USTRONG_2, 1, HG_WIDTH, 40);
set_hitbox_value(AT_USTRONG_2, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_USTRONG_2, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_USTRONG_2, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_USTRONG_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG_2, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USTRONG_2, 1, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG_2, 1, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_USTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy2"));
set_hitbox_value(AT_USTRONG_2, 1, HG_VISUAL_EFFECT, vfx_medium_sword);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_GROUP, 4);