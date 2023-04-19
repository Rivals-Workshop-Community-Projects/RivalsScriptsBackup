/*set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 17);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.5);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.5);

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);

set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 7);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.8);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.8);

set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.8);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.8);

set_window_value(AT_FSPECIAL, 6, AG_WINDOW_TYPE, 9); //multihit portion for boosted version
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);

set_num_hitboxes(AT_FSPECIAL, 1);

set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 76);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 14);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 45);
//set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE_FLIPPER, 5); //horizontal knockback flipped
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.95);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, mediumhit);

set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 8);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 76);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 0);
//set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE_FLIPPER, 5); //horizontal knockback flipped
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, mediumhit);

set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 6);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, -30);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 176);
set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, 54);
set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE, 30);
set_hitbox_value(AT_FSPECIAL, 3, HG_TECHABLE, 3);
//set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE_FLIPPER, 5); //horizontal knockback flipped
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_absa_orb_hit"));
set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT, 1);

set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW, 6);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_X, -30);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FSPECIAL, 4, HG_WIDTH, 176);
set_hitbox_value(AT_FSPECIAL, 4, HG_HEIGHT, 54);
set_hitbox_value(AT_FSPECIAL, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE, 30);
set_hitbox_value(AT_FSPECIAL, 4, HG_TECHABLE, 3);
set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE_FLIPPER, 5); //horizontal knockback flipped
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FSPECIAL, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_absa_orb_hit"));
set_hitbox_value(AT_FSPECIAL, 4, HG_VISUAL_EFFECT, 1);

set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_WINDOW, 6);
set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_X, -30);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_Y, -22);
set_hitbox_value(AT_FSPECIAL, 5, HG_WIDTH, 180);
set_hitbox_value(AT_FSPECIAL, 5, HG_HEIGHT, 56);
set_hitbox_value(AT_FSPECIAL, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 5, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 5, HG_DAMAGE, 5);
set_hitbox_value(AT_FSPECIAL, 5, HG_ANGLE, 72);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSPECIAL, 5, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_FSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_absa_uair"));
set_hitbox_value(AT_FSPECIAL, 5, HG_VISUAL_EFFECT, 1);

set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_TYPE, 2); //zappy vfx (is a projectile for ease of use)
set_hitbox_value(AT_FSPECIAL, 6, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 6, HG_LIFETIME, 120);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_SPRITE, sprite_get("fspec_shocky"));
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_MASK, -1);
//set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("spark_coll"));
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_ANIM_SPEED, 0.6);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_GROUND_FRICTION, 0.01);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_AIR_FRICTION, 0.01);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_IS_TRANSCENDENT, true);
//set_hitbox_value(AT_FSPECIAL, 6, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_WIDTH, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_HEIGHT, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_PRIORITY, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_DAMAGE, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_ANGLE, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_HIT_SFX, asset_get("sfx_absa_harderhit"));