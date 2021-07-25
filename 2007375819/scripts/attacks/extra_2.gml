set_attack_value(AT_EXTRA_2, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("EXTRA_2"));
set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, sprite_get("EXTRA_2_hurt"));

set_window_value(AT_EXTRA_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAME_START, 12);

set_num_hitboxes(AT_EXTRA_2, 1);

// Blueytank's cannonball shooting right

set_hitbox_value(AT_EXTRA_2, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_2, 1, HG_LIFETIME, 60);
set_hitbox_value(AT_EXTRA_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_EXTRA_2, 1, HG_WIDTH, 26);
set_hitbox_value(AT_EXTRA_2, 1, HG_HEIGHT, 26);
set_hitbox_value(AT_EXTRA_2, 1, HG_ANGLE, 361);
set_hitbox_value(AT_EXTRA_2, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_SPRITE, sprite_get("blueytank_proj"));
set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_ANIM_SPEED, .6);
set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_HSPEED, 5);
set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_VSPEED, -6);
set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_AIR_FRICTION, .01);
set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_GROUND_FRICTION, .5);
set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITSTUN_MULTIPLIER, .7);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITPAUSE_SCALING, .3)
set_hitbox_value(AT_EXTRA_2, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_EXTRA_2, 1, HG_VISUAL_EFFECT, 153);
set_hitbox_value(AT_EXTRA_2, 1, HG_PROJECTILE_DESTROY_EFFECT, 13);
set_hitbox_value(AT_EXTRA_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

// Blueytank's cannonball shooting right

set_hitbox_value(AT_EXTRA_2, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_EXTRA_2, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_2, 2, HG_LIFETIME, 60);
set_hitbox_value(AT_EXTRA_2, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_2, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_EXTRA_2, 2, HG_WIDTH, 26);
set_hitbox_value(AT_EXTRA_2, 2, HG_HEIGHT, 26);
set_hitbox_value(AT_EXTRA_2, 2, HG_ANGLE, 361);
set_hitbox_value(AT_EXTRA_2, 2, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_EXTRA_2, 2, HG_PROJECTILE_SPRITE, sprite_get("blueytank_proj"));
set_hitbox_value(AT_EXTRA_2, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_2, 2, HG_PROJECTILE_ANIM_SPEED, .6);
set_hitbox_value(AT_EXTRA_2, 2, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_EXTRA_2, 2, HG_PROJECTILE_HSPEED, -5);
set_hitbox_value(AT_EXTRA_2, 2, HG_PROJECTILE_VSPEED, -6);
set_hitbox_value(AT_EXTRA_2, 2, HG_PROJECTILE_AIR_FRICTION, .01);
set_hitbox_value(AT_EXTRA_2, 2, HG_PROJECTILE_GROUND_FRICTION, .5);
set_hitbox_value(AT_EXTRA_2, 2, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_EXTRA_2, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_EXTRA_2, 2, HG_PROJECTILE_IS_TRANSCENDENT, false);
set_hitbox_value(AT_EXTRA_2, 2, HG_HITSTUN_MULTIPLIER, .7);
set_hitbox_value(AT_EXTRA_2, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_EXTRA_2, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_EXTRA_2, 2, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_EXTRA_2, 2, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_EXTRA_2, 2, HG_VISUAL_EFFECT, 153);
set_hitbox_value(AT_EXTRA_2, 2, HG_PROJECTILE_DESTROY_EFFECT, 13);
set_hitbox_value(AT_EXTRA_2, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));