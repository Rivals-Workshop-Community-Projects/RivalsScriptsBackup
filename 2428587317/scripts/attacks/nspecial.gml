set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 1);

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
//set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 1);
//set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 9);
//set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);
//set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_num_hitboxes(AT_NSPECIAL,2);

set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 47);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 66);
set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
//set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 6);
//set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 10);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, .25);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 1);
//set_hitbox_value(AT_NSPECIAL_2, 2, HG_DAMAGE, 13);
//set_hitbox_value(AT_NSPECIAL_2, 2, HG_ANGLE, 50);
//set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_KNOCKBACK, 6);
//set_hitbox_value(AT_NSPECIAL_2, 2, HG_KNOCKBACK_SCALING, 1.1);
//set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_HITPAUSE, 12);
//set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get( "0g" ));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_VSPEED, 0);