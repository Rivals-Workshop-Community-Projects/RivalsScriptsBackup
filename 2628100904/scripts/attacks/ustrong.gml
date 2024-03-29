//basic smash attack, based on lobean's fsmash

set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 2);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX, sound_get("flashbang_pin"));

set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 6);

set_num_hitboxes(AT_USTRONG,3);

set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 35);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 74);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 95);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_USTRONG, 1, HG_IGNORES_PROJECTILES, 1);

//flashbang projectile (heavily referenced wii safety guy for this)

set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 200);//50
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_SPRITE, sprite_get("flashbang"));
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_VSPEED, -9);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 12);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -60);
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 25);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 25);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 0);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, 0);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_PLASMA_SAFE, 0);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_USTRONG, 2, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_USTRONG, 2, HG_IGNORES_PROJECTILES, 1);

//explosion

set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG_2, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USTRONG_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG_2, 1, HG_WIDTH, 130);
set_hitbox_value(AT_USTRONG_2, 1, HG_HEIGHT, 130);
set_hitbox_value(AT_USTRONG_2, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_USTRONG_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USTRONG_2, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITSTUN_MULTIPLIER, .9);
set_hitbox_value(AT_USTRONG_2, 1, HG_HIT_LOCKOUT, 15);
set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_USTRONG_2, 1, HG_EXTRA_HITPAUSE, 12);
set_hitbox_value(AT_USTRONG_2, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);


//explosion

set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG_2, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG_2, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USTRONG_2, 2, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_USTRONG_2, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USTRONG_2, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG_2, 2, HG_WIDTH, 130);
set_hitbox_value(AT_USTRONG_2, 2, HG_HEIGHT, 130);
set_hitbox_value(AT_USTRONG_2, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_USTRONG_2, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG_2, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG_2, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USTRONG_2, 2, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_USTRONG_2, 2, HG_HITSTUN_MULTIPLIER, .9);
set_hitbox_value(AT_USTRONG_2, 2, HG_HIT_LOCKOUT, 15);
set_hitbox_value(AT_USTRONG_2, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG_2, 2, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_USTRONG_2, 2, HG_EXTRA_HITPAUSE, 12);
set_hitbox_value(AT_USTRONG_2, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_USTRONG_2, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_USTRONG_2, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USTRONG_2, 2, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_USTRONG_2, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_USTRONG_2, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_USTRONG_2, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_USTRONG_2, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_USTRONG_2, 2, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_USTRONG_2, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);