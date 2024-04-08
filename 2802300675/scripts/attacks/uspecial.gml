set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));

//startup
set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_hod_fspecial"));

//attack
set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -13);

//endlag
set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 7);


set_num_hitboxes(AT_USPECIAL, 1);

set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 40);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, 15);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 35);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 35);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 6); 
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, hitsmoke);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_absa_cloud_send"));
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("smogball"));
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("smogball"));
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.25);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_VSPEED, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, hitsmoke);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_GRAVITY, 0.3);
set_hitbox_value(AT_USPECIAL, 1, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);

set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 40);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, 15);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 35);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 35);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 6); 
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, hitsmoke);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_absa_cloud_send"));
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("smogball"));
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_MASK, sprite_get("smogball"));
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 0.25);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_HSPEED, -3.5);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_VSPEED, 6);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, hitsmoke);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_GRAVITY, 0.3);
set_hitbox_value(AT_USPECIAL, 2, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true);

set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 40);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, 15);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 35);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 35);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 6); 
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USPECIAL, 3, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, hitsmoke);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_absa_cloud_send"));
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("smogball"));
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_MASK, sprite_get("smogball"));
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, 0.25);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_HSPEED, 3.5);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_VSPEED, 6);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, hitsmoke);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_GRAVITY, 0.3);
set_hitbox_value(AT_USPECIAL, 3, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_DOES_NOT_REFLECT, true);