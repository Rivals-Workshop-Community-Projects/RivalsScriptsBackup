set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

set_window_value(AT_BAIR, 1, AG_WINDOW_TYPE, 420);
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 13);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_BAIR, 2, AG_WINDOW_TYPE, 69);
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 7);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);


set_window_value(AT_BAIR, 3, AG_WINDOW_TYPE, 666);
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 4);


set_num_hitboxes(AT_BAIR, 1);


set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -50);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -42);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 40);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 5);
//set_hitbox_value(AT_BAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 270);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 22);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, hitfx[9]);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 10);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -85);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -35);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 10);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 10);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 270);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, hitfx[11]);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_BAIR, 2, HG_ANGLE_FLIPPER, 6);

set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);

set_hitbox_value(AT_BAIR, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 10);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_X, -110);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y, -35);
set_hitbox_value(AT_BAIR, 3, HG_WIDTH, 25);
set_hitbox_value(AT_BAIR, 3, HG_HEIGHT, 25);
set_hitbox_value(AT_BAIR, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE, 270);
set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 3, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_BAIR, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_BAIR, 3, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT, hitfx[12]);
set_hitbox_value(AT_BAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_BAIR, 3, HG_ANGLE_FLIPPER, 6);

set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);

set_hitbox_value(AT_BAIR, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_BAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 4, HG_LIFETIME, 10);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_X, -145);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_Y, -35);
set_hitbox_value(AT_BAIR, 4, HG_WIDTH, 30);
set_hitbox_value(AT_BAIR, 4, HG_HEIGHT, 30);
set_hitbox_value(AT_BAIR, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR, 4, HG_DAMAGE, 12);
set_hitbox_value(AT_BAIR, 4, HG_ANGLE, 270);
set_hitbox_value(AT_BAIR, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_BAIR, 4, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_BAIR, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_BAIR, 4, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_BAIR, 4, HG_VISUAL_EFFECT, hitfx[13]);
set_hitbox_value(AT_BAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_BAIR, 4, HG_ANGLE_FLIPPER, 6);

set_hitbox_value(AT_BAIR, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_BAIR, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_BAIR, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_BAIR, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_BAIR, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_BAIR, 4, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_BAIR, 4, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_BAIR, 4, HG_PROJECTILE_IS_TRANSCENDENT, 1);


set_hitbox_value(AT_BAIR, 5, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_BAIR, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_BAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 5, HG_LIFETIME, 10);
set_hitbox_value(AT_BAIR, 5, HG_HITBOX_X, -170);
set_hitbox_value(AT_BAIR, 5, HG_HITBOX_Y, -35);

set_hitbox_value(AT_BAIR, 6, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_BAIR, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_BAIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 6, HG_LIFETIME, 10);
set_hitbox_value(AT_BAIR, 6, HG_HITBOX_X, -195);
set_hitbox_value(AT_BAIR, 6, HG_HITBOX_Y, -35);

set_hitbox_value(AT_BAIR, 7, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_BAIR, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_BAIR, 7, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 7, HG_LIFETIME, 10);
set_hitbox_value(AT_BAIR, 7, HG_HITBOX_X, -220);
set_hitbox_value(AT_BAIR, 7, HG_HITBOX_Y, -35);
/*
set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

set_window_value(AT_BAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_ell_utilt_cannon"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_BAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_BAIR, 2, AG_WINDOW_HSPEED, 8);
set_window_value(AT_BAIR, 2, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_BAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 4);
set_window_value(AT_BAIR, 3, AG_WINDOW_HSPEED, -2);

set_num_hitboxes(AT_BAIR, 1);

set_hitbox_value(AT_BAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -40);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 65);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 45);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_BAIR, 1, HG_ANGLE_FLIPPER, 6);