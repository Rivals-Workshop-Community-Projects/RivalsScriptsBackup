set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

// startup
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.2);

// article flight
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 40);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1); 
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1); 
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 0); 
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, 0); 
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 1);

// teleport
set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.1);


set_num_hitboxes(AT_USPECIAL, 1);

set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 80);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 6); 
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 112);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("blank_sheet"));
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("blank_sheet"));
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_USPECIAL, 1, HG_EXTENDED_PARRY_STUN, true);
//set_hitbox_value(AT_USPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.75);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 8); 