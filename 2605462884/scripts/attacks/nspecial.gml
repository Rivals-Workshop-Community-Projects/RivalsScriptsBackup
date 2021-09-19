set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, asset_get("empty_sprite"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);


set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL, 1, AG_BODY_CELL, 27);
/*set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 3);*/

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 2, AG_BODY_CELL, 28);

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL, 3, AG_BODY_CELL, 27);

set_num_hitboxes(AT_NSPECIAL, 1); 

set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 46);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 46);
set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 192);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_PLASMA_SAFE, 1);