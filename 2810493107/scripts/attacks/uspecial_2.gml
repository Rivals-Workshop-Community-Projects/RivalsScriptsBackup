set_attack_value(AT_USPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 6);
set_attack_value(AT_USPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL_2, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_USPECIAL_2, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
// Get into position
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 0); // 2
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 0); // 0
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_absa_whip_charge"));
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_VSPEED, -7);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HSPEED, 0);

// Charge up, decide where to go at the end of this window
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 2); // 2
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 6); // 2
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED, 0);

// Release
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 5); // 5
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 4); // 4
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_SFX, asset_get("sfx_forsburn_consume"));

// Hold pose
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_LENGTH, 3);

// Return to neutral, end in pratfall
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 1); // 1
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 9); // 9
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_VSPEED, -3);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_LENGTH, 3);

// Return to neutral, end in pratfall
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_ANIM_FRAMES, 1); // 3
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_ANIM_FRAME_START, 10); // 10
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_SFX, sound_get("uspecproj"));
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_VSPEED, -3);


// Aim in various directions, but the frames are very similar
for (i = 7; i <= 11; i++) {
    set_window_value(AT_USPECIAL_2, i, AG_WINDOW_LENGTH, 25);
    set_window_value(AT_USPECIAL_2, i, AG_WINDOW_ANIM_FRAMES, 9); // 5
    set_window_value(AT_USPECIAL_2, i, AG_WINDOW_CUSTOM_GRAVITY, 0);
    set_window_value(AT_USPECIAL_2, i, AG_WINDOW_HSPEED_TYPE, 1);
    set_window_value(AT_USPECIAL_2, i, AG_WINDOW_VSPEED_TYPE, 1);
    set_window_value(AT_USPECIAL_2, i, AG_WINDOW_HAS_SFX, 1);
    set_window_value(AT_USPECIAL_2, i, AG_WINDOW_SFX, sound_get("uspecfloat"));
    set_window_value(AT_USPECIAL_2, i, AG_WINDOW_GOTO, 4);
}

// Up
set_window_value(AT_USPECIAL_2, 7, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USPECIAL_2, 7, AG_WINDOW_VSPEED, -stored_power_dash_speed);
set_window_value(AT_USPECIAL_2, 7, AG_WINDOW_HSPEED, 0);

// Up and to the right
set_window_value(AT_USPECIAL_2, 8, AG_WINDOW_ANIM_FRAME_START, 45);
set_window_value(AT_USPECIAL_2, 8, AG_WINDOW_VSPEED, -stored_power_angular_dash_speed_y);
set_window_value(AT_USPECIAL_2, 8, AG_WINDOW_HSPEED, stored_power_angular_dash_speed_x);

// Right
set_window_value(AT_USPECIAL_2, 9, AG_WINDOW_ANIM_FRAME_START, 23);
set_window_value(AT_USPECIAL_2, 9, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL_2, 9, AG_WINDOW_HSPEED, stored_power_dash_speed);

// Down and to the right
set_window_value(AT_USPECIAL_2, 10, AG_WINDOW_ANIM_FRAME_START, 78);
set_window_value(AT_USPECIAL_2, 10, AG_WINDOW_VSPEED, stored_power_angular_dash_speed_y);
set_window_value(AT_USPECIAL_2, 10, AG_WINDOW_HSPEED, stored_power_angular_dash_speed_x);

// Down
set_window_value(AT_USPECIAL_2, 11, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_USPECIAL_2, 11, AG_WINDOW_VSPEED, stored_power_dash_speed);
set_window_value(AT_USPECIAL_2, 11, AG_WINDOW_HSPEED, 0);


set_num_hitboxes(AT_USPECIAL_2, 5);

// Most versions of the hitbox have the same properties
for (i = 1; i <= 5; i++) {
    set_hitbox_value(AT_USPECIAL_2, i, HG_HITBOX_TYPE, 2);
    set_hitbox_value(AT_USPECIAL_2, i, HG_WINDOW_CREATION_FRAME, get_window_value(AT_USPECIAL_2, i + 6, AG_WINDOW_LENGTH) - 1);
    set_hitbox_value(AT_USPECIAL_2, i, HG_LIFETIME, 24);
    set_hitbox_value(AT_USPECIAL_2, i, HG_PRIORITY, 1);
    set_hitbox_value(AT_USPECIAL_2, i, HG_DAMAGE, 6);
    set_hitbox_value(AT_USPECIAL_2, i, HG_ANGLE, 90);
    set_hitbox_value(AT_USPECIAL_2, i, HG_BASE_KNOCKBACK, 8);
    set_hitbox_value(AT_USPECIAL_2, i, HG_KNOCKBACK_SCALING, 0.7);
    set_hitbox_value(AT_USPECIAL_2, i, HG_BASE_HITPAUSE, 8);
    set_hitbox_value(AT_USPECIAL_2, i, HG_HITPAUSE_SCALING, 0.9);
    set_hitbox_value(AT_USPECIAL_2, i, HG_PROJECTILE_ANIM_SPEED, .3);
    set_hitbox_value(AT_USPECIAL_2, i, HG_HIT_SFX, sound_get("psyhit_medium"));
    set_hitbox_value(AT_USPECIAL_2, i, HG_PROJECTILE_PARRY_STUN, false);
}

// Aim in various directions
// Up
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW, 7);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_VSPEED, stored_power_proj_speed);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_SPRITE, sprite_get("proj_stored_power"));
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_MASK, sprite_get("proj_stored_power"));

// Up and to the right
set_hitbox_value(AT_USPECIAL_2, 2, HG_WINDOW, 8);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_USPECIAL_2, 2, HG_PROJECTILE_HSPEED, -stored_power_angular_proj_speed_x);
set_hitbox_value(AT_USPECIAL_2, 2, HG_PROJECTILE_VSPEED, stored_power_angular_proj_speed_x);
set_hitbox_value(AT_USPECIAL_2, 2, HG_PROJECTILE_SPRITE, sprite_get("proj_stored_power"));
set_hitbox_value(AT_USPECIAL_2, 2, HG_PROJECTILE_MASK, sprite_get("proj_stored_power"));

// Right
set_hitbox_value(AT_USPECIAL_2, 3, HG_WINDOW, 9);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_USPECIAL_2, 3, HG_PROJECTILE_HSPEED, -stored_power_proj_speed);
set_hitbox_value(AT_USPECIAL_2, 3, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_USPECIAL_2, 3, HG_PROJECTILE_SPRITE, sprite_get("proj_stored_power"));
set_hitbox_value(AT_USPECIAL_2, 3, HG_PROJECTILE_MASK, sprite_get("proj_stored_power"));

// Down and to the right
set_hitbox_value(AT_USPECIAL_2, 4, HG_WINDOW, 10);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_Y, -30);
set_hitbox_value(AT_USPECIAL_2, 4, HG_PROJECTILE_HSPEED, -stored_power_angular_proj_speed_x);
set_hitbox_value(AT_USPECIAL_2, 4, HG_PROJECTILE_VSPEED, -stored_power_angular_proj_speed_x);
set_hitbox_value(AT_USPECIAL_2, 4, HG_PROJECTILE_SPRITE, sprite_get("proj_stored_power"));
set_hitbox_value(AT_USPECIAL_2, 4, HG_PROJECTILE_MASK, sprite_get("proj_stored_power"));

// Down
set_hitbox_value(AT_USPECIAL_2, 5, HG_WINDOW, 11);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HITBOX_Y, -30);
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_VSPEED, -stored_power_proj_speed);
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_SPRITE, sprite_get("proj_stored_power"));
set_hitbox_value(AT_USPECIAL_2, 5, HG_PROJECTILE_MASK, sprite_get("proj_stored_power"));
