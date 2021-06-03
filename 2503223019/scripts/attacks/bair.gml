set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_BAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_SFX, sound_get("paper_scatter"));
set_window_value(AT_BAIR, 2, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
//set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_BAIR, 6);

set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -48);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 76);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 35);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 80);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_BAIR, 1, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_BAIR, 1, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_BAIR, 1, HG_DRIFT_MULTIPLIER, 0.01);
set_hitbox_value(AT_BAIR, 1, HG_SDI_MULTIPLIER, 0.01);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, sound_get("melee_fan"));

set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 900);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -60);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 25);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 25);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 40);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, sound_get("superstar_cutter"));
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_SPRITE, sprite_get("bair_proj"));
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_ANIM_SPEED, 0.01);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_HSPEED, -1.9);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_VSPEED, -0.4);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_GRAVITY, 0.02);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_BAIR, 2, HG_HIT_LOCKOUT, 5);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_PLASMA_SAFE, true); //Clarien can't touch this.set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_DESTROY_EFFECT, 29);

set_hitbox_value(AT_BAIR, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 900);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_X, -60);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_BAIR, 3, HG_WIDTH, 25);
set_hitbox_value(AT_BAIR, 3, HG_HEIGHT, 25);
set_hitbox_value(AT_BAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE, 40);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_BAIR, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_BAIR, 3, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_BAIR, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR, 3, HG_HIT_SFX, sound_get("superstar_cutter"));
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_SPRITE, sprite_get("bair_proj"));
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_ANIM_SPEED, 0.02);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_HSPEED, -2.2);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_VSPEED, -0.8);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_GRAVITY, 0.02);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_BAIR, 3, HG_HIT_LOCKOUT, 5);
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_PLASMA_SAFE, true); //Clarien can't touch this.
set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_DESTROY_EFFECT, 29);

set_hitbox_value(AT_BAIR, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_BAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_BAIR, 4, HG_LIFETIME, 900);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_X, -60);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_Y, -20);
set_hitbox_value(AT_BAIR, 4, HG_WIDTH, 25);
set_hitbox_value(AT_BAIR, 4, HG_HEIGHT, 25);
set_hitbox_value(AT_BAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_BAIR, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_BAIR, 4, HG_ANGLE, 40);
set_hitbox_value(AT_BAIR, 4, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_BAIR, 4, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_BAIR, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_BAIR, 4, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_BAIR, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_BAIR, 4, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_BAIR, 4, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(AT_BAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR, 4, HG_HIT_SFX, sound_get("superstar_cutter"));
set_hitbox_value(AT_BAIR, 4, HG_PROJECTILE_SPRITE, sprite_get("bair_proj"));
set_hitbox_value(AT_BAIR, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_BAIR, 4, HG_PROJECTILE_ANIM_SPEED, 0.03);
set_hitbox_value(AT_BAIR, 4, HG_PROJECTILE_HSPEED, -2.3);
set_hitbox_value(AT_BAIR, 4, HG_PROJECTILE_VSPEED, -0.6);
set_hitbox_value(AT_BAIR, 4, HG_PROJECTILE_GRAVITY, 0.02);
set_hitbox_value(AT_BAIR, 4, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_BAIR, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_BAIR, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_BAIR, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_BAIR, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_BAIR, 4, HG_HIT_LOCKOUT, 5);
set_hitbox_value(AT_BAIR, 4, HG_PROJECTILE_PLASMA_SAFE, true); //Clarien can't touch this.
set_hitbox_value(AT_BAIR, 4, HG_PROJECTILE_DESTROY_EFFECT, 29);

set_hitbox_value(AT_BAIR, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_BAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 5, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_BAIR, 5, HG_LIFETIME, 900);
set_hitbox_value(AT_BAIR, 5, HG_HITBOX_X, -60);
set_hitbox_value(AT_BAIR, 5, HG_HITBOX_Y, -20);
set_hitbox_value(AT_BAIR, 5, HG_WIDTH, 25);
set_hitbox_value(AT_BAIR, 5, HG_HEIGHT, 25);
set_hitbox_value(AT_BAIR, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_BAIR, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_BAIR, 5, HG_ANGLE, 40);
set_hitbox_value(AT_BAIR, 5, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_BAIR, 5, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_BAIR, 5, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_BAIR, 5, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_BAIR, 5, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_BAIR, 5, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_BAIR, 5, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(AT_BAIR, 5, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR, 5, HG_HIT_SFX, sound_get("superstar_cutter"));
set_hitbox_value(AT_BAIR, 5, HG_PROJECTILE_SPRITE, sprite_get("bair_proj"));
set_hitbox_value(AT_BAIR, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_BAIR, 5, HG_PROJECTILE_ANIM_SPEED, 0.04);
set_hitbox_value(AT_BAIR, 5, HG_PROJECTILE_HSPEED, -2.8);
set_hitbox_value(AT_BAIR, 5, HG_PROJECTILE_VSPEED, -0.7);
set_hitbox_value(AT_BAIR, 5, HG_PROJECTILE_GRAVITY, 0.02);
set_hitbox_value(AT_BAIR, 5, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_BAIR, 5, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_BAIR, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_BAIR, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_BAIR, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_BAIR, 5, HG_HIT_LOCKOUT, 5);
set_hitbox_value(AT_BAIR, 5, HG_PROJECTILE_PLASMA_SAFE, true); //Clarien can't touch this.
set_hitbox_value(AT_BAIR, 5, HG_PROJECTILE_DESTROY_EFFECT, 29);

set_hitbox_value(AT_BAIR, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_BAIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 6, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_BAIR, 6, HG_LIFETIME, 900);
set_hitbox_value(AT_BAIR, 6, HG_HITBOX_X, -60);
set_hitbox_value(AT_BAIR, 6, HG_HITBOX_Y, -30);
set_hitbox_value(AT_BAIR, 6, HG_WIDTH, 25);
set_hitbox_value(AT_BAIR, 6, HG_HEIGHT, 25);
set_hitbox_value(AT_BAIR, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_BAIR, 6, HG_DAMAGE, 1);
set_hitbox_value(AT_BAIR, 6, HG_ANGLE, 40);
set_hitbox_value(AT_BAIR, 6, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_BAIR, 6, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_BAIR, 6, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_BAIR, 6, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_BAIR, 6, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_BAIR, 6, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_BAIR, 6, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(AT_BAIR, 6, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR, 6, HG_HIT_SFX, sound_get("superstar_cutter"));
set_hitbox_value(AT_BAIR, 6, HG_PROJECTILE_SPRITE, sprite_get("bair_proj"));
set_hitbox_value(AT_BAIR, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_BAIR, 6, HG_PROJECTILE_ANIM_SPEED, 0.06);
set_hitbox_value(AT_BAIR, 6, HG_PROJECTILE_HSPEED, -3);
set_hitbox_value(AT_BAIR, 6, HG_PROJECTILE_VSPEED, -0.8);
set_hitbox_value(AT_BAIR, 6, HG_PROJECTILE_GRAVITY, 0.02);
set_hitbox_value(AT_BAIR, 6, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_BAIR, 6, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_BAIR, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_BAIR, 6, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_BAIR, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_BAIR, 6, HG_HIT_LOCKOUT, 5);
set_hitbox_value(AT_BAIR, 6, HG_PROJECTILE_PLASMA_SAFE, true); //Clarien can't touch this.
set_hitbox_value(AT_BAIR, 6, HG_PROJECTILE_DESTROY_EFFECT, 29);
