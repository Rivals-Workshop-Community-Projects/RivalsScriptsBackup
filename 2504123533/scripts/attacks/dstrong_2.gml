set_attack_value(AT_DSTRONG_2, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG_2, AG_NUM_WINDOWS, 3);// <-- make sure this accounts for ALL frames!
set_attack_value(AT_DSTRONG_2, AG_CATEGORY, 2);
set_attack_value(AT_DSTRONG_2, AG_STRONG_CHARGE_WINDOW, 5);//<-- set this to a window that doesn't exist
set_attack_value(AT_DSTRONG_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

//startup
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_LENGTH, 8);//<-- needs to be at least 6, and higher numbers means more leeway to determine an uncharged/charged
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_ANIM_FRAME_START, 1);

//Charged
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_SFX, asset_get("sfx_orca_soak"));
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_SFX_FRAME, 15);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_HAS_WHIFFLAG, 1);


//endlag
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 19);

set_num_hitboxes(AT_DSTRONG_2, 2);

//Charged, Front Hit
set_hitbox_value(AT_DSTRONG_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSTRONG_2, 1, HG_WINDOW_CREATION_FRAME, 13);
set_hitbox_value(AT_DSTRONG_2, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_X, 50);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSTRONG_2, 1, HG_WIDTH, 90);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DSTRONG_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG_2, 1, HG_DAMAGE, 11);
set_hitbox_value(AT_DSTRONG_2, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DSTRONG_2, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG_2, 1, HG_KNOCKBACK_SCALING, 1.3);
set_hitbox_value(AT_DSTRONG_2, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_DSTRONG_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_DSTRONG_2, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DSTRONG_2, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_waterhit_heavy2"));
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_GROUP, 0);

//required for all synced hitboxes
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSTRONG_2, 1, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_DSTRONG_2, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_DSTRONG_2, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_DSTRONG_2, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSTRONG_2, 1, HG_PROJECTILE_PLASMA_SAFE, true);


//Charged, Back Hit
set_hitbox_value(AT_DSTRONG_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DSTRONG_2, 2, HG_WINDOW_CREATION_FRAME, 24);
set_hitbox_value(AT_DSTRONG_2, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITBOX_X, -35);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSTRONG_2, 2, HG_WIDTH, 120);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_DSTRONG_2, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG_2, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG_2, 2, HG_DAMAGE, 11);
set_hitbox_value(AT_DSTRONG_2, 2, HG_ANGLE, 135);
set_hitbox_value(AT_DSTRONG_2, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG_2, 2, HG_KNOCKBACK_SCALING, 1.3);
set_hitbox_value(AT_DSTRONG_2, 2, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_DSTRONG_2, 2, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_DSTRONG_2, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DSTRONG_2, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HIT_SFX, asset_get("sfx_waterhit_heavy2"));
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITBOX_GROUP, 0);

set_hitbox_value(AT_DSTRONG_2, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSTRONG_2, 2, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_DSTRONG_2, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSTRONG_2, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG_2, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG_2, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG_2, 2, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_DSTRONG_2, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_DSTRONG_2, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSTRONG_2, 2, HG_PROJECTILE_PLASMA_SAFE, true);