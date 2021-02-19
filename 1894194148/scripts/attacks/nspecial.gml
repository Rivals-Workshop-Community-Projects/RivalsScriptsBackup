//AR NSPECIAL [WIP]
//still need raincloud summon

set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

//nsps  nspa  nsph  nspr
//0-2:3 3-4:2 5-5:1 6-8:3

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX, sound_get("SWFS6"));

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 3);

set_num_hitboxes(AT_NSPECIAL, 4);

set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 43);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -45);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 44);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 55);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 20);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 1.5);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 116);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_swish_medium"));

set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -56);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 106);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 37);
set_hitbox_value(AT_NSPECIAL, 2, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 40);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 1.5);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 116);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_swish_weak"));

set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 2);
//set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, -3);
//set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, 9);
//set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 120);
//set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 16);
//set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 20);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_EFFECT, 9);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, 1);
//set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_bubblepop"));
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("rain"));
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_MASK, sprite_get("rain_hit"));
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_VSPEED, 8);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, rainhit);

//invisiblbem
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 57);
set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 30);
//set_hitbox_value(AT_NSPECIAL, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_SHAPE, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_NSPECIAL, 4, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_DESTROY_EFFECT, 1);

//asset_get("empty_sprite")






