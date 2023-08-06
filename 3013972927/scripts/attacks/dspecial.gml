atk = AT_DSPECIAL;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(atk, AG_AIR_SPRITE, sprite_get("dspecial_air"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(atk, AG_HURTBOX_AIR_SPRITE, sprite_get("dspecial_air_hurt"));

// WINDOWS 1 - 4: Assist call

window_num = 1; //windup 1
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 5);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);

window_num ++; //windup 2
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_flareo_rod"));
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 6);

window_num ++; //spawn waypoint
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 4);

window_num ++; //endlag 1
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 10);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 7);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

hitbox_num = 1; // Macaron Hit
set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, 1, HG_LIFETIME, 10);
set_hitbox_value(atk, 1, HG_WIDTH, 144);
set_hitbox_value(atk, 1, HG_HEIGHT, 90);
set_hitbox_value(atk, 1, HG_SHAPE, 2);
set_hitbox_value(atk, 1, HG_PRIORITY, 2);
set_hitbox_value(atk, 1, HG_DAMAGE, 7);
set_hitbox_value(atk, 1, HG_ANGLE, 90);
set_hitbox_value(atk, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(atk, 1, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(atk, 1, HG_VISUAL_EFFECT, 192);
set_hitbox_value(atk, 1, HG_EFFECT, 11);
set_hitbox_value(atk, 1, HG_HIT_SFX, asset_get("sfx_holy_lightning"));
set_hitbox_value(atk, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(atk, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(atk, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(atk, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(atk, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(atk, 1, HG_PROJECTILE_PLASMA_SAFE, 1);

hitbox_num = 2; // Peppermint Gun
set_hitbox_value(atk, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, 2, HG_LIFETIME, 40);
set_hitbox_value(atk, 2, HG_HITBOX_X, 32);
set_hitbox_value(atk, 2, HG_HITBOX_Y, -52);
set_hitbox_value(atk, 2, HG_WIDTH, 42);
set_hitbox_value(atk, 2, HG_HEIGHT, 42);
set_hitbox_value(atk, 2, HG_PRIORITY, 2);
set_hitbox_value(atk, 2, HG_DAMAGE, 1);
set_hitbox_value(atk, 2, HG_ANGLE, 25);
set_hitbox_value(atk, 2, HG_BASE_KNOCKBACK, .1);
set_hitbox_value(atk, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(atk, 2, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(atk, 2, HG_HITSTUN_MULTIPLIER, 0.5); //non-resource based projectiles usually have a 0.5 hitstun multiplier so players hit by it can act sooner
set_hitbox_value(atk, 2, HG_FORCE_FLINCH, 0);
set_hitbox_value(atk, 2, HG_VISUAL_EFFECT, 111);
set_hitbox_value(atk, 2, HG_HIT_SFX, sound_get("chai_partner_pep_shot"));
set_hitbox_value(atk, 2, HG_PROJECTILE_SPRITE, sprite_get("assist_pep_fx"));
set_hitbox_value(atk, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, 2, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(atk, 2, HG_PROJECTILE_HSPEED, 27); //vspeed is set in attack_update.gml
set_hitbox_value(atk, 2, HG_PROJECTILE_GROUND_BEHAVIOR, -1);
set_hitbox_value(atk, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(atk, 2, HG_EXTENDED_PARRY_STUN, 0);

hitbox_num = 3; // Korsica Wind
set_hitbox_value(atk, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, 3, HG_LIFETIME, 40);
set_hitbox_value(atk, 3, HG_HITBOX_X, 32);
set_hitbox_value(atk, 3, HG_HITBOX_Y, -32);
set_hitbox_value(atk, 3, HG_WIDTH, 38);
set_hitbox_value(atk, 3, HG_HEIGHT, 48);
set_hitbox_value(atk, 3, HG_PRIORITY, 2);
set_hitbox_value(atk, 3, HG_DAMAGE, 5);
set_hitbox_value(atk, 3, HG_ANGLE, 80);
set_hitbox_value(atk, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, 3, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(atk, 3, HG_BASE_HITPAUSE, 13);
set_hitbox_value(atk, 3, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(atk, 3, HG_HITSTUN_MULTIPLIER, 0.5); //non-resource based projectiles usually have a 0.5 hitstun multiplier so players hit by it can act sooner
set_hitbox_value(atk, 3, HG_VISUAL_EFFECT, 194);
set_hitbox_value(atk, 3, HG_HIT_SFX, asset_get("sfx_ori_seinhit_medium"));
set_hitbox_value(atk, 3, HG_PROJECTILE_SPRITE, sprite_get("assist_kor_wind"));
set_hitbox_value(atk, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, 3, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(atk, 3, HG_PROJECTILE_HSPEED, 14); //vspeed is set in attack_update.gml
set_hitbox_value(atk, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(atk, 3, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(atk, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(atk, 3, HG_EXTENDED_PARRY_STUN, 0);
set_hitbox_value(atk, 3, HG_PROJECTILE_MULTIHIT, 0);
set_hitbox_value(atk, 3, HG_PROJECTILE_HITRATE, 0);
set_hitbox_value(atk, 3, HG_MULTIHIT_DAMAGE, 0);

set_num_hitboxes(atk, hitbox_num);