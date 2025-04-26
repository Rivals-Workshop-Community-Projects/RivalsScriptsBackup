set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);

set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_light1"));

set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 7);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 7);

//HITBOXES
set_num_hitboxes(AT_USTRONG, 3);

set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 12);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 9);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 0.7);

set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 80);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 65);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 45);

set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 18);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -82);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 44);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 44);

set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 38);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -64);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 42);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 46);

set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 58);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -32);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 40);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 60);

set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 3, HG_SHAPE, 0);

set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 3);

set_hitbox_value(AT_USTRONG, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW_CREATION_FRAME, 1);

set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 4);

set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 2);

set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, 0.7);

set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
