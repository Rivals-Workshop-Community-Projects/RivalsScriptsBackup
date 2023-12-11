set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 7);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_ice_back_air"));

set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 14);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_USTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);



set_num_hitboxes(AT_USTRONG,4);

set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 25);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -60);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 30);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 11);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 45);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 28);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_ice_shatter"));
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 40);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -75);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 25);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 25);
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 6);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 14);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 45);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 199);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_PARTICLE_NUM, 3);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_ice_shatter_big"));
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_USTRONG, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 55);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -90);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 5);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, 65);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -100);
set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 15);
set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 15);
set_hitbox_value(AT_USTRONG, 4, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 4, HG_PRIORITY, 7);
set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 14);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE, 45);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 4, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG, 4, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT, 199);
set_hitbox_value(AT_USTRONG, 4, HG_HIT_PARTICLE_NUM, 3);
set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, asset_get("sfx_ice_shatter_big"));
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_GROUP, 1);



