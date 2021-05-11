set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 9);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_CANCEL_TYPE, 2);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_CANCEL_FRAME, 0);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_CANCEL_TYPE, 0);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_CANCEL_FRAME, 0);

//transform start
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("mfx_coin_portal"));

//statue idle
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED, 0);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_VSPEED, 20);

//abrupt end
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 28);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_VSPEED, 0);

//statue attack start
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_SFX, asset_get("sfx_ice_nspecial_hit_ground"));
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_VSPEED, 0);

set_window_value(AT_DSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_VSPEED, 0);

//statue attack end
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_VSPEED, 0);

//detransform
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_VSPEED, 0);

//attack end
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 24);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_VSPEED, 0);

set_num_hitboxes(AT_DSPECIAL, 3);

set_hitbox_value(AT_DSPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 68);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.75);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 0.45);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 199);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_icehit_heavy2"));
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_LOCKOUT, 20);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSPECIAL, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 22);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, -60);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 70);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.75);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_EXTRA_HITPAUSE, 60);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, 0.25);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_ice_shatter"));
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSPECIAL, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 22);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_X, 60);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 70);
set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 30);
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL, 3, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.75);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_EXTRA_HITPAUSE, 60);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITPAUSE_SCALING, 0.25);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_ice_shatter"));
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_GROUP, -1);