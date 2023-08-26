set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("jump"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 5);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("shelly_hurtbox"));
set_attack_value(AT_NAIR, AG_MUNO_ATTACK_MISC_ADD, "Can be cancelled into Jab and NAIR by holding attack when landing.");

//startup
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);

//fire
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);

//cancel window
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);

//endlag
set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1); //NOTE: if you make it a multi-hit NAIR, remove whifflag, since Rivals multi-step NAIRs do not have whifflag. single-hits like sandbert, elli, etc DO have whifflag

//walkturn (but shoot)
set_window_value(AT_NAIR, 5, AG_MUNO_WINDOW_EXCLUDE, 1);
set_window_value(AT_NAIR, 5, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);

set_num_hitboxes(AT_NAIR, 1);

set_hitbox_value(AT_NAIR, 1, HG_MUNO_HITBOX_NAME, "Laser (Normal)");
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 15);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 55);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 85);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, pshooter_hfx);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, sound_get("pshooter_hit_1"));
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NAIR, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_NAIR, 1, HG_SDI_MULTIPLIER, 2.0);
set_hitbox_value(AT_NAIR, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_NAIR, 1, HG_HIT_PARTICLE_NUM, 2);

set_hitbox_value(AT_NAIR, 1, HG_PROJECTILE_SPRITE, sprite_get("pshooter_proj_h"));
set_hitbox_value(AT_NAIR, 1, HG_PROJECTILE_MASK, sprite_get("pshooter_mask"));
set_hitbox_value(AT_NAIR, 1, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("pshooter_mask"));
set_hitbox_value(AT_NAIR, 1, HG_PROJECTILE_ANIM_SPEED, 0.7);
set_hitbox_value(AT_NAIR, 1, HG_PROJECTILE_HSPEED, 10);
set_hitbox_value(AT_NAIR, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NAIR, 1, HG_PROJECTILE_DESTROY_EFFECT, pshooter_destroy);
set_hitbox_value(AT_NAIR, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_NAIR, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NAIR, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NAIR, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);

//not a real hitbox, just there for munophone framedata
set_hitbox_value(AT_NAIR, 2, HG_MUNO_HITBOX_NAME, "Laser
(Third Hit)");
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 15);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NAIR, 2, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_NAIR, 2, HG_SDI_MULTIPLIER, 2.0);
set_hitbox_value(AT_NAIR, 2, HG_FORCE_FLINCH, 0);