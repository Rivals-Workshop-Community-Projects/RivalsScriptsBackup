set_attack_value(AT_USTRONG_2, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG_2, AG_NUM_WINDOWS, 2);
set_attack_value(AT_USTRONG_2, AG_CATEGORY, 2);
set_attack_value(AT_USTRONG_2, AG_HAS_LANDING_LAG, 3)
set_attack_value(AT_USTRONG_2, AG_STRONG_CHARGE_WINDOW, 4);//<-- set this to a window that doesn't exist;
set_attack_value(AT_USTRONG_2, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

//startup
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_ANIM_FRAME_START, 1);


//Charged 
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_LENGTH, 32);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_SFX, asset_get("sfx_swish_heavy2"));
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG_2, 2);


// Strong Geyser

set_hitbox_value(AT_USTRONG_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG_2, 1, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_USTRONG_2, 1, HG_LIFETIME, 20);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_Y, -150);
set_hitbox_value(AT_USTRONG_2, 1, HG_WIDTH, 70);
set_hitbox_value(AT_USTRONG_2, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_USTRONG_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG_2, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_USTRONG_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG_2, 1, HG_FINAL_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG_2, 1, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_USTRONG_2, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_USTRONG_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_USTRONG_2, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_USTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_waterhit_heavy2"));
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_GROUP, 0);

set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_PLASMA_SAFE, true);



//Linking Hit, Charged (THIS is meant to link. Always.)

set_hitbox_value(AT_USTRONG_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG_2, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG_2, 2, HG_LIFETIME, 20);
set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_X, 5);
set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_Y, -50);
set_hitbox_value(AT_USTRONG_2, 2, HG_WIDTH, 80);
set_hitbox_value(AT_USTRONG_2, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_USTRONG_2, 2, HG_SHAPE, 1);
set_hitbox_value(AT_USTRONG_2, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG_2, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_USTRONG_2, 2, HG_ANGLE, 80);
set_hitbox_value(AT_USTRONG_2, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USTRONG_2, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USTRONG_2, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USTRONG_2, 2, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_USTRONG_2, 2, HG_DRIFT_MULTIPLIER, 0.01);
set_hitbox_value(AT_USTRONG_2, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG_2, 2, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_USTRONG_2, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USTRONG_2, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG_2, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG_2, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG_2, 2, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_USTRONG_2, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_USTRONG_2, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USTRONG_2, 2, HG_PROJECTILE_PLASMA_SAFE, true);