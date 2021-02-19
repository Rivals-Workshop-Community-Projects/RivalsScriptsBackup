set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 6);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 11);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.3);

set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.3);

set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 2); //Swipe 1
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 6); //Inbetween
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 2); //Swipe 2
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_DSTRONG, 5, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_DSTRONG, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSTRONG, 2);

set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 5);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, -26);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 84);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 36);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 125);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 0.95);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy1"));

set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 24);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 78);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 44);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 55);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy2"));
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, -1);
