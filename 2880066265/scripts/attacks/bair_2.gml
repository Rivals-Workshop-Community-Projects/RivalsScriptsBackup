set_attack_value(42, AG_CATEGORY, 1);
set_attack_value(42, AG_SPRITE, sprite_get("bair2"));
set_attack_value(42, AG_NUM_WINDOWS, 4);
set_attack_value(42, AG_HAS_LANDING_LAG, 1);
set_attack_value(42, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(42, AG_LANDING_LAG, 4);
set_attack_value(42, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

set_window_value(42, 1, AG_WINDOW_TYPE, 1);
set_window_value(42, 1, AG_WINDOW_LENGTH, 15);
set_window_value(42, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(42, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.5);
set_window_value(42, 1, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(42, 1, AG_WINDOW_VSPEED, -0.5);
set_window_value(42, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(42, 1, AG_WINDOW_SFX, sound_get("bigbob_intro"));
set_window_value(42, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(42, 2, AG_WINDOW_TYPE, 1);
set_window_value(42, 2, AG_WINDOW_LENGTH, 10);
set_window_value(42, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(42, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(42, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.5)

set_window_value(42, 3, AG_WINDOW_TYPE, 1);
set_window_value(42, 3, AG_WINDOW_LENGTH, 3);
set_window_value(42, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(42, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(42, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.5)
set_window_value(42, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(42, 3, AG_WINDOW_VSPEED, 0);
set_window_value(42, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(42, 3, AG_WINDOW_HSPEED, 0);
set_window_value(42, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(42, 3, AG_WINDOW_SFX, sound_get("bigbob"));

set_window_value(42, 4, AG_WINDOW_TYPE, 1);
set_window_value(42, 4, AG_WINDOW_LENGTH, 18);
set_window_value(42, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(42, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(42, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.5)
set_window_value(42, 4, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(42, 4, AG_WINDOW_VSPEED, 0);
set_window_value(42, 4, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(42, 4, AG_WINDOW_HSPEED, 3);

set_num_hitboxes(42, 3);

set_hitbox_value(42, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(42, 1, HG_WINDOW, 3);
set_hitbox_value(42, 1, HG_LIFETIME, 3);
set_hitbox_value(42, 1, HG_HITBOX_X, -96);
set_hitbox_value(42, 1, HG_HITBOX_Y, -25);
set_hitbox_value(42, 1, HG_WIDTH, 71);
set_hitbox_value(42, 1, HG_HEIGHT, 152);
set_hitbox_value(42, 1, HG_SHAPE, 2);
set_hitbox_value(42, 1, HG_PRIORITY, 5);
set_hitbox_value(42, 1, HG_DAMAGE, 15);
set_hitbox_value(42, 1, HG_ANGLE, 135);
set_hitbox_value(42, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(42, 1, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(42, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(42, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(42, 1, HG_HIT_LOCKOUT, 20);
set_hitbox_value(42, 1, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(42, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(42, 1, HG_HIT_SFX, asset_get("sfx_swipe_medium2"));
set_hitbox_value(42, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(42, 1, HG_ANGLE_FLIPPER, 6);

set_hitbox_value(42, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(42, 2, HG_WINDOW, 3);
set_hitbox_value(42, 2, HG_LIFETIME, 3);
set_hitbox_value(42, 2, HG_HITBOX_X, -96);
set_hitbox_value(42, 2, HG_HITBOX_Y, -25);
set_hitbox_value(42, 2, HG_WIDTH, 0);
set_hitbox_value(42, 2, HG_HEIGHT, 0);
set_hitbox_value(42, 2, HG_SHAPE, 2);
set_hitbox_value(42, 2, HG_PRIORITY, 5);
set_hitbox_value(42, 2, HG_DAMAGE, 15);
set_hitbox_value(42, 2, HG_ANGLE, 135);
set_hitbox_value(42, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(42, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(42, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(42, 2, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(42, 2, HG_HIT_LOCKOUT, 20);
set_hitbox_value(42, 2, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(42, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(42, 2, HG_HIT_SFX, asset_get("sfx_swipe_medium2"));
set_hitbox_value(42, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(42, 2, HG_ANGLE_FLIPPER, 6);

set_hitbox_value(42, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(42, 3, HG_WINDOW, 4);
set_hitbox_value(42, 3, HG_LIFETIME, 12);
set_hitbox_value(42, 3, HG_HITBOX_X, -96);
set_hitbox_value(42, 3, HG_HITBOX_Y, -27);
set_hitbox_value(42, 3, HG_PRIORITY, 3);
set_hitbox_value(42, 3, HG_DAMAGE, 10);
set_hitbox_value(42, 3, HG_ANGLE, 135);
set_hitbox_value(42, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(42, 3, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(42, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(42, 3, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(42, 3, HG_VISUAL_EFFECT, 1);
set_hitbox_value(42, 3, HG_PROJECTILE_SPRITE, sprite_get("bair_particle_runed"));
set_hitbox_value(42, 3, HG_PROJECTILE_MASK, sprite_get("bair_particle_runed_hurt"));
set_hitbox_value(42, 3, HG_PROJECTILE_ANIM_SPEED, .35);
set_hitbox_value(42, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(42, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(42, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(42, 3, HG_PROJECTILE_UNBASHABLE, 1); //maybe
set_hitbox_value(42, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 1); //maybe
set_hitbox_value(42, 3, HG_PROJECTILE_PARRY_STUN, 1); //want this to be a yes
set_hitbox_value(42, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);