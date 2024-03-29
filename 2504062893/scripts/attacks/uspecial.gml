set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_PARRY_STUN, 1);


// JET STARTUP
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED, 1);
// set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, .2);
// set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.5);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_clairen_dspecial_counter_success"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 1);

// TELEPORT (IF APPLICABLE)
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 5);

// JET BOOST
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED, 2);
// set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 2);
// set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -30);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.5);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_clairen_dspecial_counter_success"));
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX_FRAME, 1);

// ENDLAG/PRATFALL
set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.9);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HAS_CUSTOM_FRICTION,1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.1);

// TELELPORT AFTER (NEW!)
set_window_value(AT_USPECIAL,5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL,5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL,5, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL,5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL,5, AG_WINDOW_HSPEED, 2);
// set_window_value(AT_USPECIAL,5, AG_WINDOW_VSPEED_TYPE, 2);
// set_window_value(AT_USPECIAL,5, AG_WINDOW_VSPEED, -30);
set_window_value(AT_USPECIAL,5, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_USPECIAL,5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL,5, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.5);
set_window_value(AT_USPECIAL,5, AG_WINDOW_SFX, asset_get("sfx_clairen_dspecial_counter_success"));
set_window_value(AT_USPECIAL,5, AG_WINDOW_SFX_FRAME, 1);

set_num_hitboxes(AT_USPECIAL, 2); 

set_hitbox_value(AT_USPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 64);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 72);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 8); //6
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0.8); //.7
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 80);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_USPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_HSPEED, 23);
set_hitbox_value(AT_USPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USPECIAL, 1, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));

// extra hitbox to cover the window where you are still flying upwards
set_hitbox_value(AT_USPECIAL, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 4);
// set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -36);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 64);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 7); //6
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, 0.4); //.7
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 85);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_USPECIAL, 2, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_HSPEED, 23);
set_hitbox_value(AT_USPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USPECIAL, 2, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));