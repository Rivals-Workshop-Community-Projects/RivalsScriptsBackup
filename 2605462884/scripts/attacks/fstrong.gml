set_attack_value(AT_FSTRONG, AG_SPRITE, asset_get("empty_sprite"));
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 5);

set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 16);//2 6 10
set_window_value(AT_FSTRONG, 1, AG_BODY_CELL, 34);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSTRONG, 2, AG_BODY_CELL, 34);

set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 28);
set_window_value(AT_FSTRONG, 3, AG_BODY_CELL, 35);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSTRONG, 4, AG_BODY_CELL, 20);

set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 1);
set_window_value(AT_FSTRONG, 5, AG_BODY_CELL, 20);


set_num_hitboxes(AT_FSTRONG, 1); 

//link
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 46);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 46);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 24);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSTRONG, 1, HG_EXTRA_HITPAUSE, -3);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 193);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_PLASMA_SAFE, 1);

//big hit
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 56);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_FSTRONG, 2, HG_SHAPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 55);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 155);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_PLASMA_SAFE, 1);




