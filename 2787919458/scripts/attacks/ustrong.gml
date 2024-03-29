set_attack_value(AT_USTRONG, AG_CATEGORY, 2);
set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
//Start
set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);
//Place
set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
//Endlag
set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_GOTO, 6);
//Attack
set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_SFX, sound_get("airhorn"));
set_window_value(AT_USTRONG, 4, AG_WINDOW_SFX_FRAME, 7);

set_num_hitboxes(AT_USTRONG, 9);

//Doge
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 74);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 35);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 50);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 0);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("doge"));
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_ANIM_SPEED, .06);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_GRAVITY, .4);
set_hitbox_value(AT_USTRONG, 1, HG_IGNORES_PROJECTILES, 1);

//Words uncharged
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 26);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 25);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -150);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 80);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 25);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_SPRITE, sprite_get("doge_weak_words"));
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_VSPEED, -8);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_GRAVITY, 0.3);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_DESTROY_EFFECT, 302);
set_hitbox_value(AT_USTRONG, 2, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_USTRONG, 2, HG_DRIFT_MULTIPLIER, 1);

//Bork
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, -10);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 60);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 70);
set_hitbox_value(AT_USTRONG, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 8);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 75);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 2);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_USTRONG, 3, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_USTRONG, 3, HG_DRIFT_MULTIPLIER, 0);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE_FLIPPER, 7);

//Words half charged
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 26);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, 25);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -150);
set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 80);
set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 64);
set_hitbox_value(AT_USTRONG, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 11);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_USTRONG, 4, HG_KNOCKBACK_SCALING, 1.05);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_USTRONG, 4, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_SPRITE, sprite_get("doge_medium_words"));
set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_VSPEED, -9);
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_GRAVITY, 0.3);
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 4, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USTRONG, 4, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_USTRONG, 4, HG_PROJECTILE_DESTROY_EFFECT, 305);

//Words full charged
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG, 5, HG_LIFETIME, 26);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_X, 25);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_Y, -150);
set_hitbox_value(AT_USTRONG, 5, HG_WIDTH, 110);
set_hitbox_value(AT_USTRONG, 5, HG_HEIGHT, 64);
set_hitbox_value(AT_USTRONG, 5, HG_PRIORITY, 5);
set_hitbox_value(AT_USTRONG, 5, HG_DAMAGE, 13);
set_hitbox_value(AT_USTRONG, 5, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_USTRONG, 5, HG_KNOCKBACK_SCALING, 1.05);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_USTRONG, 5, HG_HITPAUSE_SCALING, 1.3);
set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_SPRITE, sprite_get("doge_strong_words"));
set_hitbox_value(AT_USTRONG, 5, HG_HIT_SFX, asset_get("sfx_absa_uair"));
set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_VSPEED, -10);
set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_GRAVITY, 0.3);
set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 5, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_USTRONG, 5, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USTRONG, 5, HG_PROJECTILE_DESTROY_EFFECT, 304);

set_hitbox_value(AT_USTRONG, 6, HG_PARENT_HITBOX, 6);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 6, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 6, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_X, 50);
set_hitbox_value(AT_USTRONG, 6, HG_WIDTH, 60);
set_hitbox_value(AT_USTRONG, 6, HG_HEIGHT, 80);
set_hitbox_value(AT_USTRONG, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 6, HG_DAMAGE, 4);
set_hitbox_value(AT_USTRONG, 6, HG_ANGLE, 45);
set_hitbox_value(AT_USTRONG, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 6, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_USTRONG, 6, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USTRONG, 6, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_USTRONG, 6, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_USTRONG, 6, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_USTRONG, 6, HG_EXTRA_CAMERA_SHAKE, 2);
set_hitbox_value(AT_USTRONG, 6, HG_FORCE_FLINCH, 1);

set_hitbox_value(AT_USTRONG, 7, HG_PARENT_HITBOX, 7);
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 7, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 7, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG, 7, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_X, 65);
set_hitbox_value(AT_USTRONG, 7, HG_HITBOX_Y, -5);
set_hitbox_value(AT_USTRONG, 7, HG_WIDTH, 75);
set_hitbox_value(AT_USTRONG, 7, HG_HEIGHT, 20);
set_hitbox_value(AT_USTRONG, 7, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 7, HG_DAMAGE, 6);
set_hitbox_value(AT_USTRONG, 7, HG_ANGLE, 270);
set_hitbox_value(AT_USTRONG, 7, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_USTRONG, 7, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USTRONG, 7, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_USTRONG, 7, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG, 7, HG_HITPAUSE_SCALING, .95);
set_hitbox_value(AT_USTRONG, 7, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_USTRONG, 7, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USTRONG, 7, HG_EXTRA_CAMERA_SHAKE, 2);

set_hitbox_value(AT_USTRONG, 8, HG_PARENT_HITBOX, 8);
set_hitbox_value(AT_USTRONG, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 8, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG, 8, HG_LIFETIME, 5);
set_hitbox_value(AT_USTRONG, 8, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USTRONG, 8, HG_HITBOX_Y, -30);
set_hitbox_value(AT_USTRONG, 8, HG_HITBOX_X, 50);
set_hitbox_value(AT_USTRONG, 8, HG_WIDTH, 100);
set_hitbox_value(AT_USTRONG, 8, HG_HEIGHT, 90);
set_hitbox_value(AT_USTRONG, 8, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 8, HG_DAMAGE, 5);
set_hitbox_value(AT_USTRONG, 8, HG_ANGLE, 45);
set_hitbox_value(AT_USTRONG, 8, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 8, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_USTRONG, 8, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USTRONG, 8, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_USTRONG, 8, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_USTRONG, 8, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//Doge Fall
set_hitbox_value(AT_USTRONG, 9, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_USTRONG, 9, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG, 9, HG_LIFETIME, 1);
set_hitbox_value(AT_USTRONG, 9, HG_HITBOX_X, 35);
set_hitbox_value(AT_USTRONG, 9, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USTRONG, 9, HG_WIDTH, 60);
set_hitbox_value(AT_USTRONG, 9, HG_HEIGHT, 10);
set_hitbox_value(AT_USTRONG, 9, HG_PRIORITY, 4);
set_hitbox_value(AT_USTRONG, 9, HG_DAMAGE, 6);
set_hitbox_value(AT_USTRONG, 9, HG_ANGLE, 270);
set_hitbox_value(AT_USTRONG, 9, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USTRONG, 9, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_USTRONG, 9, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USTRONG, 9, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_USTRONG, 9, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USTRONG, 9, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USTRONG, 9, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USTRONG, 9, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_USTRONG, 9, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 9, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 9, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USTRONG, 9, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_USTRONG, 9, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_USTRONG, 9, HG_HIT_LOCKOUT, 4);