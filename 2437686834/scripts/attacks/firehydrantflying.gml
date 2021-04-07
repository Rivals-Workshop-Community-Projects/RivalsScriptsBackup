set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL_2, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_hurt"));

set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_SFX, sound_get("fireball"));

set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_LENGTH,6);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 9);

set_num_hitboxes(AT_NSPECIAL_2,1);

set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 200);
//set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_Y, -10);
//set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_Y, -10);
//set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 30);
//set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE, 14);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE, 40);
//set_hitbox_value(AT_NSPECIAL_2, 1, HG_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
//set_hitbox_value(AT_NSPECIAL_2, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_HITPAUSE, 15);

set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_SPRITE, sprite_get("FireHydrantFly"));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_MASK, sprite_get("FireHydrantMask"));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("FireHydrantMask"));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_ANIM_SPEED, 0.4);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_GRAVITY, 0.3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
