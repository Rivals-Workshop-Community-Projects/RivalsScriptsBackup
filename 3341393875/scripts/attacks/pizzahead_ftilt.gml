set_attack_value(AT_EXTRA_3, AG_SPRITE, sprite_get("pizzahead_ftilt2"));
set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, sprite_get("pizzahead_ftilt2_hurt"));

set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HSPEED, -4);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 14);

set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HSPEED, 6);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, air_friction);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);

set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_EXTRA_3, 1);

set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -38);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 70);
set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 110);
set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_EXTRA_3, 1, HG_SHAPE, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 361);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

