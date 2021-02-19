set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 6);
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_USPECIAL, AG_LANDING_LAG, 10);

set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, .55);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, .55);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_jumpground"));

set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -14);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 2);

set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, .55);

//Flying
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 36);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, .15);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED, -3);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED, 7);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);

//End
set_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 17);


set_num_hitboxes(AT_USPECIAL,2);

set_hitbox_value(AT_USPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 8);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -16);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 50);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 45);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(AT_USPECIAL, 1, HG_HITSTUN_MULTIPLIER, .8);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, .45);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_USPECIAL, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 12);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 10);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -16);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 40);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_USPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 45);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));