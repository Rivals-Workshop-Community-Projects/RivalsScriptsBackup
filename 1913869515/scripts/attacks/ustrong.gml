set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USTRONG, AG_CATEGORY, 1);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HSPEED, 4);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 2);

set_num_hitboxes(AT_USTRONG,3);

set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 8);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 65);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 45);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, sound_get("RI"));
set_hitbox_value(AT_USTRONG, 1, HG_SDI_MULTIPLIER, 0.1);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, -1);


set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 28);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -50);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 65);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 95);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, sound_get("RI2"));
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 2, HG_SDI_MULTIPLIER, 0.1);

set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 18);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -80);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 75);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 145);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, sound_get("RI"));
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 3, HG_SDI_MULTIPLIER, 0.1);

