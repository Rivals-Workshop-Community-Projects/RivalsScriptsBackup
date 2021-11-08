set_attack_value(AT_EXTRA_3, AG_SPRITE, sprite_get("nodispenser_dattack"));
set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 4);
set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, sprite_get("nodispenser_dattack_hurt"));

set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HSPEED, 9);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);

set_window_value(AT_EXTRA_3, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 14);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_EXTRA_3, 2);

set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 3);
set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 36);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -26);
set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 40);
set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 36);
set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 45);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_LOCKOUT, 6);

set_hitbox_value(AT_EXTRA_3, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW, 3);
set_hitbox_value(AT_EXTRA_3, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_X, 18);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_Y, -26);
set_hitbox_value(AT_EXTRA_3, 2, HG_WIDTH, 70);
set_hitbox_value(AT_EXTRA_3, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_EXTRA_3, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_EXTRA_3, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_EXTRA_3, 2, HG_ANGLE, 45);
set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_EXTRA_3, 2, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_EXTRA_3, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_EXTRA_3, 2, HG_HIT_LOCKOUT, 6);