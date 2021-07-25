set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);

set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 10);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 20);//startup
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, (asset_get("sfx_swipe_weak1")));

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 9);//idle
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 8.5);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED, 4.2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 12);//drill startup
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, 8.5);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED, 4.2);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 8);//drill 1
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED, 10);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_VSPEED, 1.5);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX_FRAME, 11);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX, (asset_get("sfx_ell_drill_stab")));

set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_SFX, (asset_get("sfx_ell_drill_loop")));

set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 9);//drill 2
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED, 10);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_VSPEED, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 4);// drill finish
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED, 10);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_VSPEED, 2);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL, 7, AG_WINDOW_LENGTH, 6);//drill stop
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_HSPEED, 8.5);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_VSPEED, 4.2);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL, 8, AG_WINDOW_LENGTH, 9);//wheelie startup
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_HSPEED, 8.5);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_VSPEED, 4.2);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_SFX, (asset_get("sfx_shovel_swing_med2")));

set_window_value(AT_FSPECIAL, 9, AG_WINDOW_LENGTH, 24);//wheelie
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 22);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_HSPEED, 4);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_VSPEED, 4.2);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_CUSTOM_AIR_FRICTION, 1.5);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_CUSTOM_GROUND_FRICTION, 3);

set_window_value(AT_FSPECIAL, 10, AG_WINDOW_LENGTH, 12);//ending
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 28);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_VSPEED_TYPE, 1);


set_num_hitboxes(AT_FSPECIAL, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 80);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL, 1, HG_SHAPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy2"));
set_hitbox_value(AT_FSPECIAL, 1, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_UNBASHABLE, 1);

set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 36);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 38);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 34);
set_hitbox_value(AT_FSPECIAL, 2, HG_SHAPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_shovel_hit_light2"));
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 2, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_UNBASHABLE, 1);

set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -30);

set_hitbox_value(AT_FSPECIAL, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW, 6);
set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_X, 24);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_Y, -30);

set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_WINDOW, 9);
set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_X, -4);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_Y, -34);
set_hitbox_value(AT_FSPECIAL, 5, HG_WIDTH, 100);
set_hitbox_value(AT_FSPECIAL, 5, HG_HEIGHT, 68);
set_hitbox_value(AT_FSPECIAL, 5, HG_PRIORITY, 4);
set_hitbox_value(AT_FSPECIAL, 5, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL, 5, HG_ANGLE, 60);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSPECIAL, 5, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FSPECIAL, 5, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_FSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy1"));
set_hitbox_value(AT_FSPECIAL, 5, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_UNBASHABLE, 1);