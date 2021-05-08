set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));
set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 3);

set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 3);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_syl_nspecial"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NAIR, 2, AG_WINDOW_VSPEED, -2);

set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 24);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);


set_num_hitboxes(AT_NAIR, 1);

//Explosion
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 2 );
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 15);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 30);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NAIR, 1, HG_SHAPE, 0 );
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 60);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 6 );
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 17 );
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_leafy_hit3"));
set_hitbox_value(AT_NAIR, 1, HG_PROJECTILE_SPRITE, sprite_get("fx_nair"));
set_hitbox_value(AT_NAIR, 1, HG_PROJECTILE_MASK, sprite_get("fx_nair_hit"));
set_hitbox_value(AT_NAIR, 1, HG_PROJECTILE_ANIM_SPEED, 0.333333);
set_hitbox_value(AT_NAIR, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1 );
set_hitbox_value(AT_NAIR, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1 );
set_hitbox_value(AT_NAIR, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1 );
set_hitbox_value(AT_NAIR, 1, HG_PROJECTILE_UNBASHABLE, 1 );
set_hitbox_value(AT_NAIR, 1, HG_PROJECTILE_PARRY_STUN, 1 );
set_hitbox_value(AT_NAIR, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1 );
set_hitbox_value(AT_NAIR, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1 );
set_hitbox_value(AT_NAIR, 1, HG_PROJECTILE_PLASMA_SAFE, 1 );
