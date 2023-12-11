set_attack_value(AT_USPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USPECIAL_2, AG_AIR_SPRITE, sprite_get("uspecial_air"));
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_AIR_SPRITE, sprite_get("uspecial_air_hurt"));


set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, -12);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_SFX, asset_get("sfx_ice_uspecial_jump"));

set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 3);



set_num_hitboxes(AT_USPECIAL_2, 1);

set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_LIFETIME, 12);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WIDTH, 40);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_USPECIAL_2, 1, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL_2, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE, 45);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL_2, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT, 28);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_ice_shatter"));

