set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 7);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);

set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);

//without mech
set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 8);

//regain mech
set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 10);

set_num_hitboxes(AT_USPECIAL, 2);

//eggmobile
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 80);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 60);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 80);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 6);
//set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("uspecial_eggmobile"));
//set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("fspecial_lloid_collision"));
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_MASK, -1);
//set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .4);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_GRAVITY, 0.1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);

//explosion
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 10);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 145);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 145);
set_hitbox_value(AT_USPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 7);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 60);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, .95);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_USPECIAL, 2, HG_EXTENDED_PARRY_STUN, true);