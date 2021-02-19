set_attack_value(AT_FSTRONG, AG_CATEGORY, 2);
set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_AIR_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 30);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 10);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED, 10);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, sound_get("sfx_step"));

set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 15);

set_window_value(AT_FSTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_VSPEED, -5);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HSPEED, 2);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HSPEED_TYPE, 2);


set_num_hitboxes(AT_FSTRONG, 5);

//Sweetspot 1
set_hitbox_value(AT_FSTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 39);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 38);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 24);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 15);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 36);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 13);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, 6);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sound_get("sfx_hit1"));

// Sweetspot 2
set_hitbox_value(AT_FSTRONG, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 10);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 39);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -28);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 38);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 24);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 15);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 36);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 13);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, sound_get("sfx_hit1"));

// Sourspot 1
set_hitbox_value(AT_FSTRONG, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 6);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -34);
set_hitbox_value(AT_FSTRONG, 3, HG_WIDTH, 38);
set_hitbox_value(AT_FSTRONG, 3, HG_HEIGHT, 20);
set_hitbox_value(AT_FSTRONG, 3, HG_PRIORITY, 6);
set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 11);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 65);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_FSTRONG, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSTRONG, 3, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_FSTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, 6);
set_hitbox_value(AT_FSTRONG, 3, HG_HIT_SFX, sound_get("sfx_hit1"));

// Sourspot 2
set_hitbox_value(AT_FSTRONG, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FSTRONG, 4, HG_LIFETIME, 10);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_X, 6);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_Y, -26);
set_hitbox_value(AT_FSTRONG, 4, HG_WIDTH, 38);
set_hitbox_value(AT_FSTRONG, 4, HG_HEIGHT, 20);
set_hitbox_value(AT_FSTRONG, 4, HG_PRIORITY, 6);
set_hitbox_value(AT_FSTRONG, 4, HG_DAMAGE, 11);
set_hitbox_value(AT_FSTRONG, 4, HG_ANGLE, 75);
set_hitbox_value(AT_FSTRONG, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSTRONG, 4, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_FSTRONG, 4, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSTRONG, 4, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_FSTRONG, 4, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_FSTRONG, 4, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_FSTRONG, 4, HG_HIT_SFX, sound_get("sfx_hit1"));

//Spawns a projectile to play the retract animation. Cannot be interacted with.
set_hitbox_value(AT_FSTRONG, 5, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, 5, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG, 5, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_FSTRONG, 5, HG_LIFETIME, 46);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_X, 28);
set_hitbox_value(AT_FSTRONG, 5, HG_WIDTH, 90);
set_hitbox_value(AT_FSTRONG, 5, HG_HEIGHT, 60);
set_hitbox_value(AT_FSTRONG, 5, HG_PRIORITY, 0);
set_hitbox_value(AT_FSTRONG, 5, HG_DAMAGE, 0);
set_hitbox_value(AT_FSTRONG, 5, HG_ANGLE, 0);
set_hitbox_value(AT_FSTRONG, 5, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_FSTRONG, 5, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 5, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_FSTRONG, 5, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_FSTRONG, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_PROJECTILE_SPRITE, sprite_get("fstrong_proj"));
set_hitbox_value(AT_FSTRONG, 5, HG_PROJECTILE_MASK, sprite_get("fstrong_proj"));
set_hitbox_value(AT_FSTRONG, 5, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_FSTRONG, 5, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_FSTRONG, 5, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FSTRONG, 5, HG_PROJECTILE_IS_TRANSCENDENT, true);
