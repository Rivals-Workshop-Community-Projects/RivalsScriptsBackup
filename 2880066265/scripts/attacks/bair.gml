set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

set_window_value(AT_BAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_BAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.5);
set_window_value(AT_BAIR, 1, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_BAIR, 1, AG_WINDOW_VSPEED, -0.5);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, sound_get("bigbob_intro"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_BAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_BAIR, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.5)

set_window_value(AT_BAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_BAIR, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.5)
set_window_value(AT_BAIR, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_BAIR, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_HSPEED, 0);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_SFX, sound_get("bigbob"));

set_window_value(AT_BAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_BAIR, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.5)
set_window_value(AT_BAIR, 4, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_BAIR, 4, AG_WINDOW_VSPEED, 0);
set_window_value(AT_BAIR, 4, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_BAIR, 4, AG_WINDOW_HSPEED, 3);

set_num_hitboxes(AT_BAIR, 3);

set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -86);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 46);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 92);
set_hitbox_value(AT_BAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 135);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, .75);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_BAIR, 1, HG_HIT_LOCKOUT, 20);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, sound_get("bigbob_hit"));
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE_FLIPPER, 6);

set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -96);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -25);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 0);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 0);
set_hitbox_value(AT_BAIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 12);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 135);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, .75);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_BAIR, 2, HG_HIT_LOCKOUT, 20);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, sound_get("bigbob_hit"));
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE_FLIPPER, 6);

set_hitbox_value(AT_BAIR, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 9);			// Dead window for manual creation
set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 120);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_X, -96);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y, -27);
set_hitbox_value(AT_BAIR, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_HSPEED, -6);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE, 135);
set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_BAIR, 3, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_BAIR, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_BAIR, 3, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_BAIR, 3, HG_HIT_SFX, sound_get("bigbob_hit"));
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_SPRITE, sprite_get("bair_particle"));
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_MASK, sprite_get("bair_particle_hurt"));
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_ANIM_SPEED, .35);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_GROUND_BEHAVIOR, -1);	//Undocumented ground behavior!
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_DESTROY_EFFECT, sprite_get("empty_hurt"));