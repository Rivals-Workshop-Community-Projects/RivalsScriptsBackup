set_attack_value(AT_FSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_AIR, AG_SPRITE, sprite_get("fspecial_air"));
set_attack_value(AT_FSPECIAL_AIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSPECIAL_AIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FSPECIAL_AIR, AG_LANDING_LAG, 8);
set_attack_value(AT_FSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("fspecial_air_hurt"));
set_attack_value(AT_FSPECIAL_AIR, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_VSPEED, -4);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 6);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_HSPEED, 4.5);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_VSPEED, -1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.6);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_CUSTOM_GRAVITY, 1.2);

set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_GOTO, 15);

set_num_hitboxes(AT_FSPECIAL_AIR, 6);

set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_X, 45);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WIDTH, 65);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HEIGHT, 55);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_ANGLE, 345);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITSTUN_MULTIPLIER, 0.6);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_EFFECT, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));

set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_X, 45);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_Y, -10);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_X, 45);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_Y, -10);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HITBOX_X, 45);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HITBOX_Y, -10);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_HITBOX_X, 45);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_HITBOX_Y, -10);
set_hitbox_value(AT_FSPECIAL_AIR, 5, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_WINDOW_CREATION_FRAME, 14);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_HITBOX_X, 45);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_HITBOX_Y, -10);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_WIDTH, 65);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_HEIGHT, 55);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_ANGLE, 345);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_HITSTUN_MULTIPLIER, 0.6);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_EFFECT, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));
set_hitbox_value(AT_FSPECIAL_AIR, 6, HG_HITBOX_GROUP, -1);
