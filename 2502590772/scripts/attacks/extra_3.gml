//extra_3.gml
//infinite attack that the master player uses to remain invisible.
//this is the only attack we load for the master player.


set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_3, AG_SPRITE, asset_get("empty_sprite")); //invisible
set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, asset_get("empty_sprite"));
set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 1);

//startup
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 9); //infinite loop
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_INVINCIBILITY, 1); //fully invincible


//this hitbox is used to grant the 'solo alts' immunity to each other under team rules.
set_num_hitboxes(AT_EXTRA_3, 1);

set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 20);
set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 4);
set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 4);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 9);
set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 90);

set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_LOCKOUT, 2000000000);

set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 1); //none

