set_attack_value(AT_NSPECIAL_MOLL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_MOLL, AG_SPRITE, sprite_get("AT_JAB"));
set_attack_value(AT_NSPECIAL_MOLL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL_MOLL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL_MOLL, AG_AIR_SPRITE, sprite_get("AT_JAB"));
set_attack_value(AT_NSPECIAL_MOLL, AG_HURTBOX_SPRITE, sprite_get("AT_JAB_hurt"));

set_window_value(AT_NSPECIAL_MOLL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_MOLL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL_MOLL, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_NSPECIAL_MOLL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_MOLL, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL_MOLL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_MOLL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL_MOLL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_MOLL, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_NSPECIAL_MOLL, 2, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_NSPECIAL_MOLL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_MOLL, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL_MOLL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_MOLL, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_num_hitboxes(AT_NSPECIAL_MOLL, 3);

//Normal hitboxes
set_hitbox_value(AT_NSPECIAL_MOLL, 1, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL_MOLL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_MOLL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL_MOLL, 1, HG_HITBOX_X, -52);
set_hitbox_value(AT_NSPECIAL_MOLL, 1, HG_HITBOX_Y, -52);
set_hitbox_value(AT_NSPECIAL_MOLL, 1, HG_WIDTH, 104);
set_hitbox_value(AT_NSPECIAL_MOLL, 1, HG_HEIGHT, 104);
set_hitbox_value(AT_NSPECIAL_MOLL, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_NSPECIAL_MOLL, 1, HG_DAMAGE, 14);
set_hitbox_value(AT_NSPECIAL_MOLL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL_MOLL, 1, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL_MOLL, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_NSPECIAL_MOLL, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL_MOLL, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_NSPECIAL_MOLL, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL_MOLL, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NSPECIAL_MOLL, 1, HG_HIT_LOCKOUT, 3);
 
set_hitbox_value(AT_NSPECIAL_MOLL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL_MOLL, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL_MOLL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_NSPECIAL_MOLL, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL_MOLL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_MOLL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_MOLL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_MOLL, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
 
set_hitbox_value(AT_NSPECIAL_MOLL, 2, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL_MOLL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_MOLL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL_MOLL, 2, HG_HITBOX_X, -65);
set_hitbox_value(AT_NSPECIAL_MOLL, 2, HG_HITBOX_Y, -65);
set_hitbox_value(AT_NSPECIAL_MOLL, 2, HG_WIDTH, 130);
set_hitbox_value(AT_NSPECIAL_MOLL, 2, HG_HEIGHT, 130);
set_hitbox_value(AT_NSPECIAL_MOLL, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_NSPECIAL_MOLL, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL_MOLL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL_MOLL, 2, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL_MOLL, 2, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_NSPECIAL_MOLL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL_MOLL, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_NSPECIAL_MOLL, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL_MOLL, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NSPECIAL_MOLL, 2, HG_HIT_LOCKOUT, 3);
 
set_hitbox_value(AT_NSPECIAL_MOLL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL_MOLL, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL_MOLL, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_NSPECIAL_MOLL, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL_MOLL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_MOLL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_MOLL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_MOLL, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);

//Bonk
set_hitbox_value(AT_NSPECIAL_MOLL, 3, HG_WINDOW, 1);
set_hitbox_value(AT_NSPECIAL_MOLL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_MOLL, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL_MOLL, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL_MOLL, 3, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL_MOLL, 3, HG_PRIORITY, 10);
set_hitbox_value(AT_NSPECIAL_MOLL, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL_MOLL, 3, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL_MOLL, 3, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_NSPECIAL_MOLL, 3, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_NSPECIAL_MOLL, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL_MOLL, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NSPECIAL_MOLL, 3, HG_HITBOX_GROUP, 1);


set_hitbox_value(AT_NSPECIAL_MOLL, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL_MOLL, 3, HG_PROJECTILE_MASK, sprite_get("bombmask"));
set_hitbox_value(AT_NSPECIAL_MOLL, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_NSPECIAL_MOLL, 3, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL_MOLL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_MOLL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_MOLL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);