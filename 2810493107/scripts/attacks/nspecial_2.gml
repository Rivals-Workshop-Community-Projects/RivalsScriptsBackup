set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial2"));
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL_2, AG_AIR_SPRITE, sprite_get("nspecial2"));
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("nspecial2_hurt"));

// Wind up
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 2);

// Detonate
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_SFX, sound_get("nspecexplosion"));

//Endlag
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 5);


set_num_hitboxes(AT_NSPECIAL_2, 3);

// Damage boxes
for (i = 1; i <= 3; i++) {
    set_hitbox_value(AT_NSPECIAL_2, i, HG_HITBOX_TYPE, 2);
    set_hitbox_value(AT_NSPECIAL_2, i, HG_WINDOW, 0);
    set_hitbox_value(AT_NSPECIAL_2, i, HG_LIFETIME, 3);
    set_hitbox_value(AT_NSPECIAL_2, i, HG_HITBOX_X, 0);
    set_hitbox_value(AT_NSPECIAL_2, i, HG_HITBOX_Y, 0);
    set_hitbox_value(AT_NSPECIAL_2, i, HG_PRIORITY, 1);
    set_hitbox_value(AT_NSPECIAL_2, i, HG_ANGLE_FLIPPER, 3);
    set_hitbox_value(AT_NSPECIAL_2, i, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
    set_hitbox_value(AT_NSPECIAL_2, i, HG_PROJECTILE_MASK, -1);
    set_hitbox_value(AT_NSPECIAL_2, i, HG_PROJECTILE_IS_TRANSCENDENT, true);
}
// Small
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 60);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITPAUSE_SCALING, .9);
// Medium
set_hitbox_value(AT_NSPECIAL_2, 2, HG_WIDTH, 80);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITPAUSE_SCALING, .9);
// Large
set_hitbox_value(AT_NSPECIAL_2, 3, HG_WIDTH, 100);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_HEIGHT, 100);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_DAMAGE, 11);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_HITPAUSE_SCALING, 1.0);

// Pull boxes
for (i = 4; i <= 6; i++) {
    set_hitbox_value(AT_NSPECIAL_2, i, HG_HITBOX_TYPE, 2);
    set_hitbox_value(AT_NSPECIAL_2, i, HG_WINDOW, 0);
    set_hitbox_value(AT_NSPECIAL_2, i, HG_LIFETIME, 6);
    set_hitbox_value(AT_NSPECIAL_2, i, HG_HITBOX_X, 0);
    set_hitbox_value(AT_NSPECIAL_2, i, HG_HITBOX_Y, 0);
    set_hitbox_value(AT_NSPECIAL_2, i, HG_PRIORITY, 1);
    set_hitbox_value(AT_NSPECIAL_2, i, HG_ANGLE, 90);
    set_hitbox_value(AT_NSPECIAL_2, i, HG_BASE_KNOCKBACK, 2);
    set_hitbox_value(AT_NSPECIAL_2, i, HG_BASE_HITPAUSE, 1);
    set_hitbox_value(AT_NSPECIAL_2, i, HG_EXTRA_HITPAUSE, 15);
    set_hitbox_value(AT_NSPECIAL_2, i, HG_HITSTUN_MULTIPLIER, 2);
    set_hitbox_value(AT_NSPECIAL_2, i, HG_DAMAGE, 1);
    set_hitbox_value(AT_NSPECIAL_2, i, HG_ANGLE_FLIPPER, 9);
    set_hitbox_value(AT_NSPECIAL_2, i, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
    set_hitbox_value(AT_NSPECIAL_2, i, HG_PROJECTILE_MASK, -1);
    set_hitbox_value(AT_NSPECIAL_2, i, HG_PROJECTILE_IS_TRANSCENDENT, true);
    set_hitbox_value(AT_NSPECIAL_2, i, HG_VISUAL_EFFECT, 1);
    set_hitbox_value(AT_NSPECIAL_2, i, HG_TECHABLE, 2);
}
// Small
set_hitbox_value(AT_NSPECIAL_2, 4, HG_WIDTH, 90);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_HEIGHT, 90);
// Medium
set_hitbox_value(AT_NSPECIAL_2, 5, HG_WIDTH, 100);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_HEIGHT, 100);
// Large
set_hitbox_value(AT_NSPECIAL_2, 6, HG_WIDTH, 135);
set_hitbox_value(AT_NSPECIAL_2, 6, HG_HEIGHT, 135);