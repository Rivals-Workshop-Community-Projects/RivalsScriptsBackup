set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_flowy_hurt"));

set_window_value(AT_DATTACK, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 6);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, 7);
//set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));


set_window_value(AT_DATTACK, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 7);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.7);

set_window_value(AT_DATTACK, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DATTACK, 2);

set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 8);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -24);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 60);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 361);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_X_OFFSET, 12);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DATTACK, 1, HG_HIT_LOCKOUT, 2);

set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 9999);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -19);
set_hitbox_value(AT_DATTACK, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 47);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 45);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 5); //old 9
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 361);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT_X_OFFSET, 12);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, asset_get("sfx_abyss_seed_explode"));
set_hitbox_value(AT_DATTACK, 2, HG_HIT_LOCKOUT, 5);

set_hitbox_value(AT_DATTACK, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DATTACK, 2, HG_PROJECTILE_SPRITE, sprite_get("none"));
set_hitbox_value(AT_DATTACK, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DATTACK, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DATTACK, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_DATTACK, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DATTACK, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DATTACK, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_DATTACK, 2, HG_PROJECTILE_PLASMA_SAFE, false);

set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW, 4);
set_hitbox_value(AT_DATTACK, 3, HG_LIFETIME, 9999);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_Y, -19);
set_hitbox_value(AT_DATTACK, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 3, HG_WIDTH, 33);
set_hitbox_value(AT_DATTACK, 3, HG_HEIGHT, 33);
set_hitbox_value(AT_DATTACK, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_DATTACK, 3, HG_DAMAGE, 3); // old 5
set_hitbox_value(AT_DATTACK, 3, HG_ANGLE, 90);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DATTACK, 3, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT_X_OFFSET, 12);
set_hitbox_value(AT_DATTACK, 3, HG_HIT_SFX, sound_get("snd_damage"));

set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_SPRITE, sprite_get("none"));
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_PLASMA_SAFE, true);