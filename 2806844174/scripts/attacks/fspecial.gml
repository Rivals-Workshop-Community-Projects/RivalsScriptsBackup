set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

// startup
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);

// throw
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);

// endlag
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);

set_num_hitboxes(AT_FSPECIAL, 1);

var hnum = 1;

set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 2);
//set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 41);
//set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 66);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 100);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 1); // 8
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, sound_get("coreblade_hit_05"));
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_GROUP, -1);
//set_hitbox_value(AT_FSPECIAL, 1, HG_TECHABLE, 1);
//set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FSPECIAL, hnum, HG_VISUAL_EFFECT, hitfx1);
set_hitbox_value(AT_FSPECIAL, hnum, HG_EXTRA_CAMERA_SHAKE, 4);
set_hitbox_value(AT_FSPECIAL, hnum, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL, hnum, HG_PROJECTILE_SPRITE, sprite_get("its_literally_nothing"));
set_hitbox_value(AT_FSPECIAL, hnum, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, hnum, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_FSPECIAL, hnum, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_FSPECIAL, hnum, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSPECIAL, hnum, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, hnum, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, hnum, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL, hnum, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_FSPECIAL, hnum, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
//set_hitbox_value(AT_FSPECIAL, hnum, HG_SDI_MULTIPLIER, 1.2);

hnum = 2;

set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 4);
//set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 41);
//set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -28);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 110);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 110);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 3); // 8
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_GROUP, -1);
//set_hitbox_value(AT_FSPECIAL, 2, HG_TECHABLE, 1);
//set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FSPECIAL, hnum, HG_VISUAL_EFFECT, hitfx2);
set_hitbox_value(AT_FSPECIAL, hnum, HG_EXTRA_CAMERA_SHAKE, 8);
set_hitbox_value(AT_FSPECIAL, hnum, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL, hnum, HG_PROJECTILE_SPRITE, sprite_get("its_literally_nothing"));
set_hitbox_value(AT_FSPECIAL, hnum, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, hnum, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_FSPECIAL, hnum, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_FSPECIAL, hnum, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSPECIAL, hnum, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, hnum, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, hnum, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL, hnum, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_FSPECIAL, hnum, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, hnum, HG_SDI_MULTIPLIER, 1.2);