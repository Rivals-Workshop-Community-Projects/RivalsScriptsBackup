set_attack_value(AT_EXTRA_4, AG_SPRITE, sprite_get("pizzahead_dtilt"));
set_attack_value(AT_EXTRA_4, AG_NUM_WINDOWS, 4);
set_attack_value(AT_EXTRA_4, AG_HURTBOX_SPRITE, sprite_get("pizzahead_dtilt_hurt"));

set_window_value(AT_EXTRA_4, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_4, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_EXTRA_4, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_4, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_EXTRA_4, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_4, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_EXTRA_4, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_EXTRA_4, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_4, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_EXTRA_4, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_4, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_EXTRA_4, 2, AG_WINDOW_HSPEED, 15);
set_window_value(AT_EXTRA_4, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_4, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_EXTRA_4, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, air_friction);
set_window_value(AT_EXTRA_4, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);

set_window_value(AT_EXTRA_4, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_4, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_EXTRA_4, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_4, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_EXTRA_4, 3, AG_WINDOW_HSPEED, 5.25);
set_window_value(AT_EXTRA_4, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_EXTRA_4, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_EXTRA_4, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, air_friction);
set_window_value(AT_EXTRA_4, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.25);

set_window_value(AT_EXTRA_4, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_4, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_4, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_4, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_EXTRA_4, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_EXTRA_4, 2);

set_hitbox_value(AT_EXTRA_4, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_4, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_4, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_4, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_EXTRA_4, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_EXTRA_4, 1, HG_HITBOX_Y, -17);
set_hitbox_value(AT_EXTRA_4, 1, HG_WIDTH, 88);
set_hitbox_value(AT_EXTRA_4, 1, HG_HEIGHT, 38);
set_hitbox_value(AT_EXTRA_4, 1, HG_SHAPE, 2);
set_hitbox_value(AT_EXTRA_4, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_4, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_EXTRA_4, 1, HG_ANGLE, 80);
set_hitbox_value(AT_EXTRA_4, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_EXTRA_4, 1, HG_KNOCKBACK_SCALING, 0.25);
set_hitbox_value(AT_EXTRA_4, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_EXTRA_4, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_EXTRA_4, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_EXTRA_4, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_EXTRA_4, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_4, 2, HG_WINDOW, 3);
set_hitbox_value(AT_EXTRA_4, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_EXTRA_4, 2, HG_HITBOX_X, 34);
set_hitbox_value(AT_EXTRA_4, 2, HG_HITBOX_Y, -15);
set_hitbox_value(AT_EXTRA_4, 2, HG_WIDTH, 80);
set_hitbox_value(AT_EXTRA_4, 2, HG_HEIGHT, 32);
set_hitbox_value(AT_EXTRA_4, 2, HG_SHAPE, 2);
set_hitbox_value(AT_EXTRA_4, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_4, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_EXTRA_4, 2, HG_ANGLE, 70);
set_hitbox_value(AT_EXTRA_4, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_EXTRA_4, 2, HG_KNOCKBACK_SCALING, 0.25);
set_hitbox_value(AT_EXTRA_4, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_EXTRA_4, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_EXTRA_4, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));