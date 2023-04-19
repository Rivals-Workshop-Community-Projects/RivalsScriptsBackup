set_attack_value(AT_FSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecial_2"));
set_attack_value(AT_FSPECIAL_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSPECIAL_2, AG_AIR_SPRITE, sprite_get("fspecial_2"));
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("fspecial_2_hurt"));

set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 3);

set_num_hitboxes(AT_FSPECIAL_2, 4);

//ALPHA
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW, 0); //manually spawned
set_hitbox_value(AT_FSPECIAL_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WIDTH, 95);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HEIGHT, 95);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITSTUN_MULTIPLIER, .85);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_FORCE_FLINCH, 3); //should prob be cc-able

//OMEGA multihits
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW, 0); //manually spawned
set_hitbox_value(AT_FSPECIAL_2, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WIDTH, 80);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_TECHABLE, 3);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITSTUN_MULTIPLIER, .65);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_EXTENDED_PARRY_STUN, 1);

//EPSILON
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WINDOW, 0); //manually spawned
set_hitbox_value(AT_FSPECIAL_2, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WIDTH, 126);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HEIGHT, 74);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITSTUN_MULTIPLIER, .75);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_EXTENDED_PARRY_STUN, 1);

//OMEGA final hit
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_WINDOW, 0); //manually spawned
set_hitbox_value(AT_FSPECIAL_2, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_WIDTH, 90);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HEIGHT, 90);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HITSTUN_MULTIPLIER, .75);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FSPECIAL_2, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL_2, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL_2, 4, HG_EXTENDED_PARRY_STUN, 1);