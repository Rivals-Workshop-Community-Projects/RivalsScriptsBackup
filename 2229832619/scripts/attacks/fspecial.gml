set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial_air"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("fspecial_air_hurt"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 7);


//fspst fsps1 fsps2 fsps3 fsph1 fsph2 fspre
//0-0:1 1-2:2 3-3:1 4-4:1 5-5:1 6-7:2 8-9:2

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 6);//6
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, sound_get("blob"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 8);//10
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_absa_taunt"));
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);

//bubble leaves
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 15); //18//16
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_FSPECIAL, 7, AG_WINDOW_LENGTH, 19); //14//11
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 2);

set_num_hitboxes(AT_FSPECIAL, 6);


//explosion
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 150);//170
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 150);//170
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 9);//13
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 60);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);//1
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 67);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 110);//130
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 110);//130
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 7);//10
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 60);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 0);//0.8
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FSPECIAL, 2, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, 67);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 90);//100
set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, 90);//100
set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 5);//8
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE, 60);
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING, 0);//0.6
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FSPECIAL, 3, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT, 67);
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));


//elec
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 4, HG_WIDTH, 126);
set_hitbox_value(AT_FSPECIAL, 4, HG_HEIGHT, 126);
set_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE, 85);//70
set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE_FLIPPER, 4);//3
set_hitbox_value(AT_FSPECIAL, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSPECIAL, 4, HG_KNOCKBACK_SCALING, 0);//0.2
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITPAUSE_SCALING, 0.2);
//set_hitbox_value(AT_FSPECIAL, 4, HG_SDI_MULTIPLIER, 1.5);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_FSPECIAL, 4, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_FSPECIAL, 4, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_FSPECIAL, 4, HG_VISUAL_EFFECT, 66);
set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_absa_singlezap2"));

set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 5, HG_WIDTH, 86);
set_hitbox_value(AT_FSPECIAL, 5, HG_HEIGHT, 86);
set_hitbox_value(AT_FSPECIAL, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_ANGLE, 85);//70
set_hitbox_value(AT_FSPECIAL, 5, HG_ANGLE_FLIPPER, 4);//3
set_hitbox_value(AT_FSPECIAL, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSPECIAL, 5, HG_KNOCKBACK_SCALING, 0);//0.2
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITPAUSE_SCALING, 0.2);
//set_hitbox_value(AT_FSPECIAL, 5, HG_SDI_MULTIPLIER, 1.5);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_FSPECIAL, 5, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_FSPECIAL, 5, HG_VISUAL_EFFECT, 66);
set_hitbox_value(AT_FSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_absa_singlezap2"));

set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 6, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 6, HG_WIDTH, 66);
set_hitbox_value(AT_FSPECIAL, 6, HG_HEIGHT, 66);
set_hitbox_value(AT_FSPECIAL, 6, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_ANGLE, 85);//70
set_hitbox_value(AT_FSPECIAL, 6, HG_ANGLE_FLIPPER, 4);//3
set_hitbox_value(AT_FSPECIAL, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_FSPECIAL, 6, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSPECIAL, 6, HG_KNOCKBACK_SCALING, 0);//0.2
set_hitbox_value(AT_FSPECIAL, 6, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITPAUSE_SCALING, 0.2);
//set_hitbox_value(AT_FSPECIAL, 6, HG_SDI_MULTIPLIER, 1.5);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_FSPECIAL, 6, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_FSPECIAL, 6, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_FSPECIAL, 6, HG_VISUAL_EFFECT, 66);
set_hitbox_value(AT_FSPECIAL, 6, HG_HIT_SFX, asset_get("sfx_absa_singlezap2"));

