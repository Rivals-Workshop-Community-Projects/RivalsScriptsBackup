set_attack_value(AT_USPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("uspecial_2"));
set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL_2, AG_AIR_SPRITE, sprite_get("uspecial_2"));
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
set_attack_value(AT_USPECIAL_2, AG_USES_CUSTOM_GRAVITY, 1);

//startup
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_spin_longer"));
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 5);

//spin windows
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, -8);

set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_VSPEED, -8);

//endlag
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_SFX, asset_get("mfx_unstar"));
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.7);


set_num_hitboxes(AT_USPECIAL_2, 6);

set_hitbox_value(AT_USPECIAL_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WIDTH, 75);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_USPECIAL_2, 1, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE, 50);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_KNOCKBACK, 7.5);
set_hitbox_value(AT_USPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USPECIAL_2, 1, HG_SDI_MULTIPLIER, 1.1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL_2, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USPECIAL_2, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL_2, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_USPECIAL_2, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_Y, -32);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL_2, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 4, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL_2, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL_2, 4, HG_LIFETIME, 5);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_Y, -32);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL_2, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 5, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL_2, 5, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USPECIAL_2, 5, HG_LIFETIME, 5);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HITBOX_Y, -32);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL_2, 6, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL_2, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 6, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL_2, 6, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_USPECIAL_2, 6, HG_LIFETIME, 5);
set_hitbox_value(AT_USPECIAL_2, 6, HG_HITBOX_Y, -32);
set_hitbox_value(AT_USPECIAL_2, 6, HG_HITBOX_GROUP, -1);