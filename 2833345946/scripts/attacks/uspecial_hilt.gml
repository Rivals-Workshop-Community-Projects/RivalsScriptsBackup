set_attack_value(AT_USPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("uspecial_hilt"));
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("uspecial_hilt_hurt"));
set_attack_value(AT_USPECIAL_2, AG_USES_CUSTOM_GRAVITY, 1);

set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 3);

//startup
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.5);

//rise up
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED, 3);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, -14);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.8);

//pratfall
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_VSPEED, -6);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_CUSTOM_GRAVITY, 1.2);

set_num_hitboxes(AT_USPECIAL_2, 1);

set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_X, 15);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_Y, -45);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WIDTH, 56);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PRIORITY, 7);
set_hitbox_value(AT_USPECIAL_2, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE, 80);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy1"));
set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT, vfx_large_sword);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_GROUP, 1);