set_attack_value(AT_USTRONG_2, AG_CATEGORY, 2);
set_attack_value(AT_USTRONG_2, AG_SPRITE, sprite_get("ustrong_2"));
set_attack_value(AT_USTRONG_2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USTRONG_2, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG_2, AG_HURTBOX_SPRITE, sprite_get("ustrong_2_hurt"));
set_attack_value(AT_USTRONG_2, AG_AIR_SPRITE, sprite_get("ustrong_2"));

set_window_value(AT_USTRONG_2, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_USTRONG_2, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_USTRONG_2, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_VSPEED, -12);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_USTRONG_2, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_USTRONG_2, 5, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG_2, 2);

set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG_2, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_X, 8);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_Y, -46);
set_hitbox_value(AT_USTRONG_2, 1, HG_WIDTH, 36);
set_hitbox_value(AT_USTRONG_2, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_USTRONG_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG_2, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_USTRONG_2, 1, HG_ANGLE, 80);
set_hitbox_value(AT_USTRONG_2, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG_2, 1, HG_FINAL_BASE_KNOCKBACK, 6)
set_hitbox_value(AT_USTRONG_2, 1, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_USTRONG_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, -6);
set_hitbox_value(AT_USTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_2, 2, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG_2, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_USTRONG_2, 2, HG_WIDTH, 36);
set_hitbox_value(AT_USTRONG_2, 2, HG_HEIGHT, 32);
set_hitbox_value(AT_USTRONG_2, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_USTRONG_2, 2, HG_DAMAGE, 11);
set_hitbox_value(AT_USTRONG_2, 2, HG_ANGLE, 70);
set_hitbox_value(AT_USTRONG_2, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG_2, 2, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_USTRONG_2, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG_2, 2, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_USTRONG_2, 2, HG_VISUAL_EFFECT, 304); // basic large
set_hitbox_value(AT_USTRONG_2, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));