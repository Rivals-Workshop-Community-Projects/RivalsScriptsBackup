set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

// Startup

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);

// Charging

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);

// Shoot

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 5);

// Endlag

set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);

// Hitboxes

set_num_hitboxes(AT_NSPECIAL, 2);

// Cannon Ball Hitbox

set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 6);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_GROUP, 1);
//set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 130);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 130);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 80);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_TECHABLE, 1);
//set_hitbox_value(AT_NSPECIAL, 1, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_burnapplied"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("cannonball_empty"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, true);

// Cannon Ball Finisher

set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_GROUP, 1);
//set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 7);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 165);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 165);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 3);
//set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 70);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, 0.7);
//set_hitbox_value(AT_NSPECIAL, 2, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL, 2, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_ori_seinhit_medium"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("cannonball_empty"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, true);

