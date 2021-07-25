set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 5);

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_ell_fspecial_charge"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 2);

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 3);

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_zetter_downb"));
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 3);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 0);

set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_zetter_downb"));
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 4);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_VSPEED, 2);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 0);

set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 5);

set_num_hitboxes(AT_FSPECIAL, 4);

//melee hitbox
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 60);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 70);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

//puddle steam sprite hitbox
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 60);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_ell_steam_hit"));
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, 144);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("steam_particle1"));
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_VSPEED, -8);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_GRAVITY, -0.4);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_AIR_FRICTION, 0.1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);

//steam blast hitbox
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 30);
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_ell_steam_hit"));
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 40);
set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE, 100);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT, 144);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_SPRITE, steam_blast);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_MASK, steam_blast);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);

//steam puddle invisible knockback hitbox
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 40);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_WIDTH, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_HEIGHT, 80);
set_hitbox_value(AT_FSPECIAL, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 4, HG_SDI_MULTIPLIER, 0.3);
set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_LOCKOUT, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_ell_steam_hit"));
set_hitbox_value(AT_FSPECIAL, 4, HG_VISUAL_EFFECT, 144);
set_hitbox_value(AT_FSPECIAL, 4, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("steam_particle0"));
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_VSPEED, -8);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_GRAVITY, -0.3);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_DESTROY_EFFECT, 1);