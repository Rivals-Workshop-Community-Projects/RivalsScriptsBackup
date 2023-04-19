set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 6);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, sound_get("hive_whistle"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_NSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 24);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NSPECIAL, 1);

set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 12);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 90);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 7);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_weak"));

set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 13);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 120);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 90);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 10);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_FORCE_FLINCH, 0)
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 19);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("none"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_absa_singlezap2"));

set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 13);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 140);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 100);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 10);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 3, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_FORCE_FLINCH, 0)
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 3, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, 19);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("none"));
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_forsburn_cape_multihit"));

set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 13);
set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 110);
set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 110);
set_hitbox_value(AT_NSPECIAL, 4, HG_PRIORITY, 10);
set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 11);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 4, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_FORCE_FLINCH, 0)
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_NSPECIAL, 4, HG_KNOCKBACK_SCALING, 1.5);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 4, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT, 19);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("none"));
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_poison_hit_strong"));
set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT, honey_large);

// set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 2);
// set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 2);
// set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 10);
// set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, -32);
// set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 12);
// set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 90);
// set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 70);
// set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 7);
// set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 2);
// set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 60);
// set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 4);
// set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 3);
// set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, .2);
// set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_ori_energyhit_weak"));
