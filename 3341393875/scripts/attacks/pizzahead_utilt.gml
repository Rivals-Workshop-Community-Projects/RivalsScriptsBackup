set_attack_value(AT_EXTRA_5, AG_SPRITE, sprite_get("pizzahead_utilt"));
set_attack_value(AT_EXTRA_5, AG_NUM_WINDOWS, 3);
set_attack_value(AT_EXTRA_5, AG_HURTBOX_SPRITE, sprite_get("pizzahead_utilt_hurt"));

set_window_value(AT_EXTRA_5, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_5, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_5, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_5, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_EXTRA_5, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, air_friction);
set_window_value(AT_EXTRA_5, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.1);
set_window_value(AT_EXTRA_5, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_5, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_EXTRA_5, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_EXTRA_5, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_5, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA_5, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_5, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_EXTRA_5, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_5, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_5, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_5, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_EXTRA_5, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_EXTRA_5, 2);

set_hitbox_value(AT_EXTRA_5, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_5, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_EXTRA_5, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_5, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_EXTRA_5, 1, HG_HITBOX_X, 5);
set_hitbox_value(AT_EXTRA_5, 1, HG_HITBOX_Y, -80);
set_hitbox_value(AT_EXTRA_5, 1, HG_WIDTH,  68);
set_hitbox_value(AT_EXTRA_5, 1, HG_HEIGHT, 56);
set_hitbox_value(AT_EXTRA_5, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_5, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_EXTRA_5, 1, HG_ANGLE, 75);
set_hitbox_value(AT_EXTRA_5, 1, HG_ANGLE_FLIPPER, 9);  //4
set_hitbox_value(AT_EXTRA_5, 1, HG_BASE_KNOCKBACK, 4.5);
set_hitbox_value(AT_EXTRA_5, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_EXTRA_5, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_EXTRA_5, 1, HG_HITPAUSE_SCALING, 0.75);
//set_hitbox_value(AT_EXTRA_5, 1, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_EXTRA_5, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_EXTRA_5, 1, HG_VISUAL_EFFECT, 302);

set_hitbox_value(AT_EXTRA_5, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_5, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_EXTRA_5, 2, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_5, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_EXTRA_5, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_EXTRA_5, 2, HG_HITBOX_X, 2);
set_hitbox_value(AT_EXTRA_5, 2, HG_HITBOX_Y, -85);
set_hitbox_value(AT_EXTRA_5, 2, HG_WIDTH,  70);
set_hitbox_value(AT_EXTRA_5, 2, HG_HEIGHT, 62);
set_hitbox_value(AT_EXTRA_5, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_5, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_EXTRA_5, 2, HG_ANGLE, 90);
set_hitbox_value(AT_EXTRA_5, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_EXTRA_5, 2, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_EXTRA_5, 2, HG_HITSTUN_MULTIPLIER, 1.1);
set_hitbox_value(AT_EXTRA_5, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_EXTRA_5, 2, HG_HITPAUSE_SCALING, 0.75);
set_hitbox_value(AT_EXTRA_5, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_EXTRA_5, 2, HG_VISUAL_EFFECT, 302);
