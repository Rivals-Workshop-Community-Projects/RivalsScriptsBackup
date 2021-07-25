// Sprites
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));

// Parameters
set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_USPECIAL, AG_LANDING_LAG, 3);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

// Windows
set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, .8);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, 0.1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.3);


set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -13);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, .6);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, sound_get( "fling1" ));
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 9);


// Hitboxes
set_num_hitboxes(AT_USPECIAL, 1);

set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW_CREATION_FRAME, 1);
//set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 180);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 99999);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -45);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 48);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT,48);
set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, BOULDER_BASE_DAMAGE);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, BOULDER_BASE_KNOCKBACK);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get( "sfx_blow_heavy2" ));
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 193);



set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("boulder"));
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_GRAVITY, 0.65);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_GROUND_FRICTION, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_AIR_FRICTION, .05);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_EXTENDED_PARRY_STUN, 1)
