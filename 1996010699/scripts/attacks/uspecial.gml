set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_LANDING_LAG, 30);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_ell_utilt_retract"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_spin_longer"));

set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, -6);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 13);

set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 17)
//set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);
//set_window_value(AT_USPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, 0.4);
//set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED, 0);
//set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED, -3);

set_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 19)
set_window_value(AT_USPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_VSPEED, -5);


set_num_hitboxes(AT_USPECIAL, 6);

set_hitbox_value(AT_USPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -80);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 50);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 35);
set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_bird_nspecial2"));
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, wheelspin);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -80);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -80);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -80);
set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW_CREATION_FRAME, 11);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -80);
set_hitbox_value(AT_USPECIAL, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL, 6, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL, 6, HG_LIFETIME, 5);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_Y, -80);
set_hitbox_value(AT_USPECIAL, 6, HG_WIDTH, 50);
set_hitbox_value(AT_USPECIAL, 6, HG_HEIGHT, 40);
set_hitbox_value(AT_USPECIAL, 6, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_DAMAGE, 5);
set_hitbox_value(AT_USPECIAL, 6, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 6, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL, 6, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_USPECIAL, 6, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, 6, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_USPECIAL, 6, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_USPECIAL, 6, HG_VISUAL_EFFECT, wheelspin);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_GROUP, -1);