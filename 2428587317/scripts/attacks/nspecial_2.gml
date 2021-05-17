
set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 1);
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("airdash"));
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("airdash_hurt"));
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 2);

set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
//set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);

set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_SFX, sound_get( "dash"));
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_SFX_FRAME, 1);
//set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_num_hitboxes(AT_NSPECIAL_2, 1);

set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
//set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 60);
//set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 8);
//set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -45);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PRIORITY, 1);
//set_hitbox_value(AT_NSPECIAL_2, 2, HG_DAMAGE, 13);
//set_hitbox_value(AT_NSPECIAL_2, 2, HG_ANGLE, 50);
//set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_KNOCKBACK, 6);
//set_hitbox_value(AT_NSPECIAL_2, 2, HG_KNOCKBACK_SCALING, 1.1);
//set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_HITPAUSE, 12);
//set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_SPRITE, sprite_get("airparticle"));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_VSPEED, 0);
