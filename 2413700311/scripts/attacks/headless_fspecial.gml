set_attack_value(AT_FSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL_2, AG_OFF_LEDGE, 0);
set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("headless_fspecial"));
set_attack_value(AT_FSPECIAL_2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("headless_fspecial_hurt"));

//--------------------------------------------------------------
//
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 3);

//--------------------------------------------------------------
//
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

//--------------------------------------------------------------
//
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 6);

//--------------------------------------------------------------
//
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 7);

//--------------------------------------------------------------
//
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 2);

//--------------------------------------------------------------
//
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_HAS_WHIFFLAG, 2);


//--------------------------------------------------------------
set_num_hitboxes(AT_FSPECIAL_2, 2);

set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW, -1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WIDTH, 36);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE, 30);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_FINAL_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));


set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WIDTH, 64);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HEIGHT, 64);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_ANGLE, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSPECIAL_2, 2, HG_VISUAL_EFFECT, 303);

set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_IS_TRANSCENDENT, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);