set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 23);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
//set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DAIR, 5);

set_hitbox_value(AT_DAIR, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 30);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 18);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 25);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 25);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 135);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -6);
set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_SPRITE, sprite_get("null"));
set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_ANIM_SPEED, .6);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
//set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_PARRY_STUN, 1);

set_hitbox_value(AT_DAIR, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 30);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 80);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 45);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 112);
set_hitbox_value(AT_DAIR, 2, HG_PROJECTILE_SPRITE, sprite_get("null"));
set_hitbox_value(AT_DAIR, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DAIR, 2, HG_PROJECTILE_ANIM_SPEED, .6);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
set_hitbox_value(AT_DAIR, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DAIR, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DAIR, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DAIR, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DAIR, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DAIR, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_DAIR, 2, HG_PROJECTILE_PARRY_STUN, 1);

set_hitbox_value(AT_DAIR, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 30);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 110);
set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 110);
set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 45);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT, 112);
set_hitbox_value(AT_DAIR, 3, HG_PROJECTILE_SPRITE, sprite_get("null"));
set_hitbox_value(AT_DAIR, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DAIR, 3, HG_PROJECTILE_ANIM_SPEED, .6);
set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
set_hitbox_value(AT_DAIR, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DAIR, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DAIR, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DAIR, 3, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DAIR, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DAIR, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_DAIR, 3, HG_PROJECTILE_PARRY_STUN, 1);

set_hitbox_value(AT_DAIR, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X, 2);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, 5);
set_hitbox_value(AT_DAIR, 4, HG_WIDTH, 40);
set_hitbox_value(AT_DAIR, 4, HG_HEIGHT, 30);
set_hitbox_value(AT_DAIR, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 4, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 4, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DAIR, 4, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_DAIR, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DAIR, 4, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_DAIR, 4, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DAIR, 4, HG_VISUAL_EFFECT, 111);
set_hitbox_value(AT_DAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));



set_hitbox_value(AT_DAIR, 5, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW, 30);
set_hitbox_value(AT_DAIR, 5, HG_LIFETIME, 18);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DAIR, 5, HG_WIDTH, 25);
set_hitbox_value(AT_DAIR, 5, HG_HEIGHT, 25);
set_hitbox_value(AT_DAIR, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_DAIR, 5, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 5, HG_DAMAGE, 6);
set_hitbox_value(AT_DAIR, 5, HG_ANGLE, 90);
set_hitbox_value(AT_DAIR, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 5, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DAIR, 5, HG_VISUAL_EFFECT, 135);
set_hitbox_value(AT_DAIR, 5, HG_VISUAL_EFFECT_Y_OFFSET, -6);
set_hitbox_value(AT_DAIR, 5, HG_PROJECTILE_SPRITE, sprite_get("null"));
set_hitbox_value(AT_DAIR, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DAIR, 5, HG_PROJECTILE_ANIM_SPEED, .6);
set_hitbox_value(AT_DAIR, 5, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DAIR, 5, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DAIR, 5, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
//set_hitbox_value(AT_DAIR, 5, HG_PROJECTILE_PARRY_STUN, 1);