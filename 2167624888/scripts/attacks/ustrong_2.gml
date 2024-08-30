set_attack_value(AT_USTRONG_2, AG_SPRITE, sprite_get("blueustrong"));
set_attack_value(AT_USTRONG_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USTRONG_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG_2, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG_2, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_USTRONG_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_USTRONG_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 2)

set_window_value(AT_USTRONG_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_LENGTH, 25);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG_2, 4);

set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USTRONG_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_X, -14);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_Y, -48);
set_hitbox_value(AT_USTRONG_2, 1, HG_WIDTH, 43);
set_hitbox_value(AT_USTRONG_2, 1, HG_HEIGHT, 89);
set_hitbox_value(AT_USTRONG_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_DAMAGE, 15);
set_hitbox_value(AT_USTRONG_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG_2, 1, HG_KNOCKBACK_SCALING, 1.15);
set_hitbox_value(AT_USTRONG_2, 1, HG_EFFECT, 0);
set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_USTRONG_2, 1, HG_VISUAL_EFFECT, blue_big_hit_vfx);
set_hitbox_value(AT_USTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
set_hitbox_value(AT_USTRONG_2, 1, HG_HIT_LOCKOUT, 10);

set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG_2, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG_2, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_X, -10);
set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_Y, -126);
set_hitbox_value(AT_USTRONG_2, 2, HG_WIDTH, 80);
set_hitbox_value(AT_USTRONG_2, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_USTRONG_2, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG_2, 2, HG_DAMAGE, 15);
set_hitbox_value(AT_USTRONG_2, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG_2, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG_2, 2, HG_KNOCKBACK_SCALING, 1.15);
set_hitbox_value(AT_USTRONG_2, 2, HG_EFFECT, 0);
set_hitbox_value(AT_USTRONG_2, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG_2, 2, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_USTRONG_2, 2, HG_VISUAL_EFFECT, blue_big_hit_vfx);
set_hitbox_value(AT_USTRONG_2, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
set_hitbox_value(AT_USTRONG_2, 2, HG_HIT_LOCKOUT, 10);

set_hitbox_value(AT_USTRONG_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_2, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG_2, 3, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG_2, 3, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG_2, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG_2, 3, HG_HITBOX_X, -13);
set_hitbox_value(AT_USTRONG_2, 3, HG_HITBOX_Y, -80);
set_hitbox_value(AT_USTRONG_2, 3, HG_WIDTH, 70);
set_hitbox_value(AT_USTRONG_2, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_USTRONG_2, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG_2, 3, HG_DAMAGE, 15);
set_hitbox_value(AT_USTRONG_2, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG_2, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG_2, 3, HG_KNOCKBACK_SCALING, 1.15);
set_hitbox_value(AT_USTRONG_2, 3, HG_EFFECT, 0);
set_hitbox_value(AT_USTRONG_2, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG_2, 3, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_USTRONG_2, 3, HG_VISUAL_EFFECT, blue_big_hit_vfx);
set_hitbox_value(AT_USTRONG_2, 3, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
set_hitbox_value(AT_USTRONG_2, 3, HG_HIT_LOCKOUT, 10);