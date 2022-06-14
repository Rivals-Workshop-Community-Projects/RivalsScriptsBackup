set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

set_window_value(AT_UTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, sound_get("Bow03"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_UTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_UTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UTILT, 3);

set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 57);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -75);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 60);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 70);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, hit_up);
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT_Y_OFFSET, -30);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, sound_get("BTL_SPEAR1"));
set_hitbox_value(AT_UTILT, 1, HG_ANGLE_FLIPPER, 0);

set_hitbox_value(AT_UTILT, 1, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_UTILT, 1, HG_HIT_LOCKOUT, 2);

set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 200);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 100);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 35);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -60);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 50);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_UTILT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 70); 
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, .1); 
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 5); 
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE_FLIPPER, 0);

set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, hit_heart);
set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT_Y_OFFSET, -30);

set_hitbox_value(AT_UTILT, 2, HG_PROJECTILE_SPRITE, sprite_get("callie_fireball")); 
set_hitbox_value(AT_UTILT, 2, HG_PROJECTILE_MASK, -1); 
set_hitbox_value(AT_UTILT, 2, HG_PROJECTILE_ANIM_SPEED, .3);

set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, sound_get("proj_hit"));

set_hitbox_value(AT_UTILT, 2, HG_PROJECTILE_HSPEED, 3.5);
set_hitbox_value(AT_UTILT, 2, HG_PROJECTILE_VSPEED, -3.25);

set_hitbox_value(AT_UTILT, 2, HG_PROJECTILE_DESTROY_EFFECT, can_fireball_destroy);

set_hitbox_value(AT_UTILT, 2, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_UTILT, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_UTILT, 2, HG_PROJECTILE_PLASMA_SAFE, 0);
set_hitbox_value(AT_UTILT, 2, HG_PROJECTILE_IS_TRANSCENDENT, 0);
set_hitbox_value(AT_UTILT, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_UTILT, 2, HG_PROJECTILE_UNBASHABLE, 0);
set_hitbox_value(AT_UTILT, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);

set_hitbox_value(AT_UTILT, 2, HG_HIT_PARTICLE_NUM, 1);

set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, 30);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -50);
set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 40);
set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 70);
set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_UTILT, 3, HG_VISUAL_EFFECT, hit_up);
set_hitbox_value(AT_UTILT, 3, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_UTILT, 3, HG_VISUAL_EFFECT_Y_OFFSET, -30);
set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, sound_get("BTL_SPEAR1"));
set_hitbox_value(AT_UTILT, 3, HG_ANGLE_FLIPPER, 0);

set_hitbox_value(AT_UTILT, 3, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_UTILT, 3, HG_HIT_LOCKOUT, 2);
