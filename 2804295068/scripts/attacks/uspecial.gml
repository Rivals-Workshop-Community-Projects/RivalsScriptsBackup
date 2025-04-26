set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial_air"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial_air"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("uspecial_air_hurt"));
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, 2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, sound_get("hyperjump"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 11);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -13);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, -0.15);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.6);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, -0.15);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.7);

set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 24);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.8);

set_num_hitboxes(AT_USPECIAL, 0);


//boosted by torchwood
set_attack_value(AT_USPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("uspecial_torched"));
set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("uspecial_torched_hurt"));

set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_VSPEED, -13);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 14);

set_num_hitboxes(AT_USPECIAL_2, 2);

set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_LIFETIME, 16);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WIDTH, 64);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HEIGHT, 64);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_USPECIAL_2, 1, HG_DAMAGE, 16);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_burnconsume"));
set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL_2, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_Y, -36);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WIDTH, 48);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HEIGHT, 48);
set_hitbox_value(AT_USPECIAL_2, 2, HG_PRIORITY, 10);
set_hitbox_value(AT_USPECIAL_2, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_USPECIAL_2, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_2, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL_2, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_USPECIAL_2, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_zetter_downb"));
set_hitbox_value(AT_USPECIAL_2, 2, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_GROUP, 1);