set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 0);
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));


set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);


set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 8*3);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 8);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_DSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 5);

set_num_hitboxes(AT_DSPECIAL, 0);


set_hitbox_value(AT_DSPECIAL, 11, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 11, HG_WINDOW, 10);
set_hitbox_value(AT_DSPECIAL, 11, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL, 11, HG_LIFETIME, 8);
set_hitbox_value(AT_DSPECIAL, 11, HG_HITBOX_X, 10);
set_hitbox_value(AT_DSPECIAL, 11, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSPECIAL, 11, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 11, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 11, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 11, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 11, HG_PROJECTILE_AIR_FRICTION, 0.00);
set_hitbox_value(AT_DSPECIAL, 11, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_DSPECIAL, 11, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_DSPECIAL, 11, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 11, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_DSPECIAL, 11, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 11, HG_WIDTH, 60);
set_hitbox_value(AT_DSPECIAL, 11, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL, 11, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 11, HG_DAMAGE, 4);
set_hitbox_value(AT_DSPECIAL, 11, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 11, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DSPECIAL, 11, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 11, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DSPECIAL, 11, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL, 11, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_DSPECIAL, 11, HG_EXTRA_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL, 11, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL, 11, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL, 11, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DSPECIAL, 11, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 11, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_DSPECIAL, 11, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_DSPECIAL, 11, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 11, HG_EXTENDED_PARRY_STUN, true);