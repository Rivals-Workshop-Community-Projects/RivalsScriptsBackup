set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial_air"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("uspecial_hurt_air"));
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

// Start
set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY,.5);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX,1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX,sound_get("monarch_bigblink1"));

// Invis
set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY,0);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX,1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX_FRAME,8);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX,sound_get("monarch_bigblink2"));

// Appear
set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY,1.2);
// set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION,1);
// set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION,1.0);
// set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION,1.0);


set_num_hitboxes(AT_USPECIAL, 0);

set_hitbox_value(AT_USPECIAL, 1, HG_PARENT_HITBOX,1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 90);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, 1.2);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, 16);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.7);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_HSPEED, 10);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_VSPEED, -10);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_GRAVITY, 0.45);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_AIR_FRICTION, 0.08);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_USPECIAL, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, -1);

// set_hitbox_value(AT_USPECIAL, 1, HG_PARENT_HITBOX,1);
// set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 2);
// set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 3);
// set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 0);
// set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 600);
// set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 40);
// set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 40);
// set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -40);
// set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 3);
// set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 10);
// set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, 1.0);
// set_hitbox_value(AT_USPECIAL, 1, HG_HITSTUN_MULTIPLIER, 5);
// set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 2);
// set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
// set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 2);
// set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 90);
// set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 1);
// set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, 16);
// set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj"));
// set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("nspecial_proj"));
// set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.7);
// set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_HSPEED, 10);
// set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_VSPEED, -10);
// set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_GRAVITY, 0.45);
// set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_AIR_FRICTION, 0.08);
// set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
// set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
// set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
// set_hitbox_value(AT_USPECIAL, 1, HG_TECHABLE, 1);
// set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, -1);