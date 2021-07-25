set_attack_value(AT_DSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DSPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL_2, AG_AIR_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

set_attack_value(AT_DSPECIAL_2, AG_MUNO_ATTACK_EXCLUDE, 1);

// startup
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_absa_concentrate"));
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_SFX, sound_get("toolgun_fire1"));
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_SFX_FRAME, 19);

// attack
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 7);


// endlag

set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 3);

set_num_hitboxes(AT_DSPECIAL_2, 2);

set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_Y, -58);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WIDTH, 920);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HEIGHT, 620);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PRIORITY, -1); 
set_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE, 25); // i don't want to have to come back and nerf the damage, so
set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE, 40);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 1.3);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_SFX, sound_get("button15"));
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_SPRITE, sprite_get("absa_moment"));
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_MASK, sprite_get("absa_moment"));
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_ANIM_SPEED, .25);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_DOES_NOT_REFLECT, false);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_DESTROY_EFFECT, 13);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_PARRY_STUN, 1);


set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_X, 992);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_Y, -36);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WIDTH, 1920);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HEIGHT, 20);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PRIORITY, 5); 
set_hitbox_value(AT_DSPECIAL_2, 2, HG_DAMAGE, 1); // i don't want to have to come back and nerf the damage, so
set_hitbox_value(AT_DSPECIAL_2, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HIT_SFX, sound_get("button15"));
set_hitbox_value(AT_DSPECIAL_2, 2, HG_EXTENDED_PARRY_STUN, 1);
//set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_GROUND_FRICTION, 0.7);
//set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("oldboot_collision"));
//set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_LOCKOUT, 1);




