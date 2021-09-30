set_attack_value(AT_DSTRONG, AG_SPRITE, asset_get("empty_sprite"));
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 4);

set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 8);//10
set_window_value(AT_DSTRONG, 1, AG_BODY_CELL, 32);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DSTRONG, 2, AG_BODY_CELL, 32);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_zetter_downb"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DSTRONG, 3, AG_BODY_CELL, 33);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSTRONG, 4, AG_BODY_CELL, 4);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_DSTRONG, 1); 

//big
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 20);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 21);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -48);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 42);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 42);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 70);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 133);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("deadly"));
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);