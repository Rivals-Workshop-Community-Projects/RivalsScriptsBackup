set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 2);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, sound_get("dspecial")); 

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 25);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 8);

set_num_hitboxes(AT_DSPECIAL, 7);





set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 20);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 100);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 40);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_DSPECIAL, 1, HG_SHAPE, 2);

set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, .25);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, .25);

set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE_FLIPPER, 7); //hit players towards peacock
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .0);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, 42);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, sprite_get("blank"));



set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 20);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 100);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 80);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL, 2, HG_SHAPE, 2);

set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, .5);

set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 11);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, .0);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, 42);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, sprite_get("blank"));

set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 20);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 100);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 120);
set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 90);
set_hitbox_value(AT_DSPECIAL, 3, HG_SHAPE, 2);

set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 14);
set_hitbox_value(AT_DSPECIAL, 3, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITPAUSE_SCALING, .9);

set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 7);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 16);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, .0);
set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, 42);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_LOCKOUT, 5);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, sprite_get("blank"));

//roller - falling  hit
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW, 20);
set_hitbox_value(AT_DSPECIAL, 4, HG_LIFETIME, 100);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_WIDTH, 120);
set_hitbox_value(AT_DSPECIAL, 4, HG_HEIGHT, 90);
set_hitbox_value(AT_DSPECIAL, 4, HG_SHAPE, 2);

set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITPAUSE_SCALING, 0);

set_hitbox_value(AT_DSPECIAL, 4, HG_PRIORITY, 9);
set_hitbox_value(AT_DSPECIAL, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE, 270);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_ANIM_SPEED, .0);
set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT_Y_OFFSET, 42);
//set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_LOCKOUT, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_TECHABLE, 1); //untechable
set_hitbox_value(AT_DSPECIAL, 4, HG_SDI_MULTIPLIER, 0.0001); //no SDI
set_hitbox_value(AT_DSPECIAL, 4,  HG_PROJECTILE_DESTROY_EFFECT, sprite_get("blank"));

//roller - floor hit
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW, 20);
set_hitbox_value(AT_DSPECIAL, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSPECIAL, 5, HG_WIDTH, 120);
set_hitbox_value(AT_DSPECIAL, 5, HG_HEIGHT, 90);
set_hitbox_value(AT_DSPECIAL, 5, HG_SHAPE, 2);

set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 5, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITPAUSE_SCALING, 0);

set_hitbox_value(AT_DSPECIAL, 5, HG_PRIORITY, 8);
set_hitbox_value(AT_DSPECIAL, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE, 270);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_ANIM_SPEED, .0);
set_hitbox_value(AT_DSPECIAL, 5, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DSPECIAL, 5, HG_VISUAL_EFFECT_Y_OFFSET, 42);
set_hitbox_value(AT_DSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_DSPECIAL, 5, HG_TECHABLE, 1); //untechable
set_hitbox_value(AT_DSPECIAL, 5, HG_SDI_MULTIPLIER, 0.0001); //no SDI
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_DESTROY_EFFECT, sprite_get("blank"));

//roller - muda
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 6, HG_WINDOW, 20);
set_hitbox_value(AT_DSPECIAL, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSPECIAL, 6, HG_WIDTH, 120);
set_hitbox_value(AT_DSPECIAL, 6, HG_HEIGHT, 90);
set_hitbox_value(AT_DSPECIAL, 6, HG_SHAPE, 2);

set_hitbox_value(AT_DSPECIAL, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 6, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 6, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 6, HG_EXTRA_HITPAUSE, 3);

set_hitbox_value(AT_DSPECIAL, 6, HG_PRIORITY, 8);
set_hitbox_value(AT_DSPECIAL, 6, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_ANGLE, 270);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_ANIM_SPEED, .0);
set_hitbox_value(AT_DSPECIAL, 6, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DSPECIAL, 6, HG_VISUAL_EFFECT_Y_OFFSET, 42);
set_hitbox_value(AT_DSPECIAL, 6, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_HIT_LOCKOUT, 0);
set_hitbox_value(AT_DSPECIAL, 6, HG_TECHABLE, 1); //untechable
set_hitbox_value(AT_DSPECIAL, 6, HG_SDI_MULTIPLIER, 0.0001); //no SDI
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_DESTROY_EFFECT, sprite_get("blank"));

//roller - final hit
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 7, HG_WINDOW, 20);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSPECIAL, 7, HG_WIDTH, 120);
set_hitbox_value(AT_DSPECIAL, 7, HG_HEIGHT, 90);
set_hitbox_value(AT_DSPECIAL, 7, HG_SHAPE, 2);

set_hitbox_value(AT_DSPECIAL, 7, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSPECIAL, 7, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITPAUSE_SCALING, 1);

set_hitbox_value(AT_DSPECIAL, 7, HG_PRIORITY, 8);
set_hitbox_value(AT_DSPECIAL, 7, HG_DAMAGE, 12);
set_hitbox_value(AT_DSPECIAL, 7, HG_ANGLE, 50);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_ANIM_SPEED, .0);
set_hitbox_value(AT_DSPECIAL, 7, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL, 7, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DSPECIAL, 7, HG_VISUAL_EFFECT_Y_OFFSET, 42);
set_hitbox_value(AT_DSPECIAL, 7, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_HIT_LOCKOUT, 15);
set_hitbox_value(AT_DSPECIAL, 7, HG_PROJECTILE_DESTROY_EFFECT, sprite_get("blank"));