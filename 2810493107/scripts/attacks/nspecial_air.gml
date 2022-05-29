set_attack_value(AT_NSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_AIR, AG_SPRITE, sprite_get("nspecial")); // TODO - using nair as a placeholder, swap out for real sprites
set_attack_value(AT_NSPECIAL_AIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NSPECIAL_AIR, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL_AIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL_AIR, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL_AIR, AG_USES_CUSTOM_GRAVITY, 1);

var low_gravity = 0.15;
// Windup
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_CUSTOM_GRAVITY, low_gravity);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_VSPEED, 0);

// Create
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_CUSTOM_GRAVITY, low_gravity);

// Hold
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 64);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 15);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_TYPE, 9); // Looping window
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_CUSTOM_GRAVITY, low_gravity);

// Cooldown
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

set_num_hitboxes(AT_NSPECIAL_AIR, 0);

/*
// Wind up
set_window_value(AT_NSPECIAL_3, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL_3, 1, AG_WINDOW_ANIM_FRAMES, 2);

// Detonate
set_window_value(AT_NSPECIAL_3, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL_3, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_3, 2, AG_WINDOW_ANIM_FRAME_START, 18);


set_num_hitboxes(AT_NSPECIAL_3, 3);

for (i = 0; i < 3; i++) {
    set_hitbox_value(AT_NSPECIAL_3, 1 + i, HG_HITBOX_TYPE, 2);
    set_hitbox_value(AT_NSPECIAL_3, 1 + i, HG_WINDOW, 0);
    set_hitbox_value(AT_NSPECIAL_3, 1 + i, HG_LIFETIME, 3);
    set_hitbox_value(AT_NSPECIAL_3, 1 + i, HG_HITBOX_X, 0);
    set_hitbox_value(AT_NSPECIAL_3, 1 + i, HG_HITBOX_Y, 0);
    set_hitbox_value(AT_NSPECIAL_3, 1 + i, HG_PRIORITY, 1);
    set_hitbox_value(AT_NSPECIAL_3, 1 + i, HG_ANGLE_FLIPPER, 3);
    set_hitbox_value(AT_NSPECIAL_3, 1 + i, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
    set_hitbox_value(AT_NSPECIAL_3, 1 + i, HG_PROJECTILE_MASK, -1);
}
// Small
set_hitbox_value(AT_NSPECIAL_3, 1, HG_WIDTH, 60);
set_hitbox_value(AT_NSPECIAL_3, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL_3, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL_3, 1, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL_3, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL_3, 1, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_NSPECIAL_3, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NSPECIAL_3, 1, HG_HITPAUSE_SCALING, .9);
// Medium
set_hitbox_value(AT_NSPECIAL_3, 2, HG_WIDTH, 80);
set_hitbox_value(AT_NSPECIAL_3, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_NSPECIAL_3, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_NSPECIAL_3, 2, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL_3, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL_3, 2, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_NSPECIAL_3, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL_3, 2, HG_HITPAUSE_SCALING, .9);
// Large
set_hitbox_value(AT_NSPECIAL_3, 3, HG_WIDTH, 100);
set_hitbox_value(AT_NSPECIAL_3, 3, HG_HEIGHT, 100);
set_hitbox_value(AT_NSPECIAL_3, 3, HG_DAMAGE, 11);
set_hitbox_value(AT_NSPECIAL_3, 3, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL_3, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NSPECIAL_3, 3, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_NSPECIAL_3, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_NSPECIAL_3, 3, HG_HITPAUSE_SCALING, 1.0);

*/