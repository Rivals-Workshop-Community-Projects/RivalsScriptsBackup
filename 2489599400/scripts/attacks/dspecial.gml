set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial2"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial2_hurt"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_shovel_dig"));

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_SFX, sound_get("sfx-tape-2"));
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);


set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 6);


set_num_hitboxes(AT_DSPECIAL, 1);


set_hitbox_value(AT_DSPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 60);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -38);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 35);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 35);
set_hitbox_value(AT_DSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_EXTRA_HITPAUSE, 25);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, .05);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DSPECIAL, 1, HG_FINAL_BASE_KNOCKBACK , 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("dspecial_proj"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .5);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_HSPEED, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_VSPEED, -2);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_GRAVITY, .45);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_GROUND_FRICTION, .1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_AIR_FRICTION, .05);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 301);