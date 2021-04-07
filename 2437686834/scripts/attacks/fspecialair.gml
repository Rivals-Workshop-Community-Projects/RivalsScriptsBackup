set_attack_value(AT_FSPECIAL_AIR, AG_CATEGORY, 1);
set_attack_value(AT_FSPECIAL_AIR, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL_AIR_AIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSPECIAL_AIR, AG_HAS_LANDING_LAG, 4);
//set_attack_value(AT_FSPECIAL_AIR, AG_AIR_SPRITE, sprite_get("fspecial"));
//set_attack_value(AT_FSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL_AIR, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_HSPEED, -3);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX, sound_get("Dodge"));
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_HSPEED, 0);
//set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_VSPEED, -9);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 2);
//set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_HAS_CUSTOM_GRAVITY, 1);
//set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.2);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 2);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 2);
//set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_CANCEL_TYPE, 1);



set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_HSPEED, 20);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_VSPEED, -9);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_VSPEED_TYPE, 1);
//set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_HAS_CUSTOM_GRAVITY, 1);
//set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.2);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 2);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 2);
//set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_CANCEL_TYPE, 1);



set_num_hitboxes(AT_FSPECIAL_AIR, 8);

set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
//set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_LIFETIME, 999);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WIDTH, 50);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_DAMAGE, 3.5);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_ANGLE, 10);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 6);
//set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_EFFECT, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HIT_SFX, sound_get("Swipe"));
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_IGNORES_PROJECTILES, 1);



set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_WINDOW, 8);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_LIFETIME, 999);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_HITBOX_Y, -38);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_WIDTH, 64);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_HEIGHT, 74);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_ANGLE, 361);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_HIT_SFX, sound_get("minipacbite"));
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_PROJECTILE_SPRITE, sprite_get("MiniPAC"));
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_PROJECTILE_ANIM_SPEED, 0.6);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_PROJECTILE_HSPEED, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_PROJECTILE_GRAVITY, .2);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_PROJECTILE_DESTROY_EFFECT, effect_nothing);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_FSPECIAL_AIR, 8, HG_PROJECTILE_DOES_NOT_REFLECT, true);