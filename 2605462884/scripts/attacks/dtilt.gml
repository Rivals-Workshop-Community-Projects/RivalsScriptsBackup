set_attack_value(AT_DTILT, AG_SPRITE, asset_get("empty_sprite"));
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 2);

set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DTILT, 1, AG_BODY_CELL, 18);

set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DTILT, 2, AG_BODY_CELL, 19);


set_num_hitboxes(AT_DTILT, 2); 

//item
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 28);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 28);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 50);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 80);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_SPRITE, sprite_get("item"));
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_HSPEED, 4);
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_VSPEED, -1);
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_GRAVITY, 0.8);//0.6
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);

//arm
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 35);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 36);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 24);
set_hitbox_value(AT_DTILT, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

