//Up strong
set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 3);

set_num_hitboxes(AT_USTRONG, 2);

//Startup
set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);

//Attack
set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 7);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

//Follow through
set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

//Hitbox 1
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -105);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 94);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 115);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 70);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 2);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 2);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 12);

//Hitbox 2
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 30);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -15);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 60);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 55);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, 2);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 6);