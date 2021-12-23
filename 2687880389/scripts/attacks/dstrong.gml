set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 5 + num_dstrong_spins);
set_attack_value(AT_DSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 2);
set_attack_value(AT_DSTRONG, AG_OFF_LEDGE, 0);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

// Setup
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 1);
//set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX, tire_screech_burnout_start_sound);

// Hold
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);

// Get into it
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, dstrong_accel / 2);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX, tire_screech_burnout_end_sound);

// SPIIIIIIN
var rotation_duration = 12;
for (var i = 0; i < num_dstrong_spins; i++) {
    set_window_value(AT_DSTRONG, 4 + i, AG_WINDOW_LENGTH, rotation_duration);
    set_window_value(AT_DSTRONG, 4 + i, AG_WINDOW_ANIM_FRAMES, 4);
    set_window_value(AT_DSTRONG, 4 + i, AG_WINDOW_ANIM_FRAME_START, 5);
    set_window_value(AT_DSTRONG, 4 + i, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
    set_window_value(AT_DSTRONG, 4 + i, AG_WINDOW_CUSTOM_GROUND_FRICTION, dstrong_accel / 2);
}

// Dizzy
set_window_value(AT_DSTRONG, 4 + num_dstrong_spins, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSTRONG, 4 + num_dstrong_spins, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 4 + num_dstrong_spins, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DSTRONG, 4 + num_dstrong_spins, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSTRONG, 4 + num_dstrong_spins, AG_WINDOW_CUSTOM_GROUND_FRICTION, dstrong_accel);

// Aaaand stop
set_window_value(AT_DSTRONG, 5 + num_dstrong_spins, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 5 + num_dstrong_spins, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 5 + num_dstrong_spins, AG_WINDOW_ANIM_FRAME_START, 13);


var num_dstrong_hitboxes = num_dstrong_spins * 2;
set_num_hitboxes(AT_DSTRONG, num_dstrong_hitboxes);

for (var i = 1; i <= num_dstrong_hitboxes; i++) {
    set_hitbox_value(AT_DSTRONG, i, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_DSTRONG, i, HG_HITBOX_GROUP, -1);
    set_hitbox_value(AT_DSTRONG, i, HG_WINDOW, 3 + ceil(i / 2));
    set_hitbox_value(AT_DSTRONG, i, HG_LIFETIME, rotation_duration / 2);
    if ((i % 2) == 1) {
        set_hitbox_value(AT_DSTRONG, i, HG_WINDOW_CREATION_FRAME, 0);
    } else {
        set_hitbox_value(AT_DSTRONG, i, HG_WINDOW_CREATION_FRAME, rotation_duration / 2);
    }
    set_hitbox_value(AT_DSTRONG, i, HG_HITBOX_X, 0);
    set_hitbox_value(AT_DSTRONG, i, HG_HITBOX_Y, -15);
    set_hitbox_value(AT_DSTRONG, i, HG_WIDTH, 128);
    set_hitbox_value(AT_DSTRONG, i, HG_HEIGHT, 38);
    set_hitbox_value(AT_DSTRONG, i, HG_SHAPE, 2);
    set_hitbox_value(AT_DSTRONG, i, HG_PRIORITY, 1);
}

for (var i = 1; i <= (num_dstrong_hitboxes - 1); i++) {
    set_hitbox_value(AT_DSTRONG, i, HG_DAMAGE, 2);
    set_hitbox_value(AT_DSTRONG, i, HG_ANGLE, 25);
    set_hitbox_value(AT_DSTRONG, i, HG_BASE_KNOCKBACK, 5);
    set_hitbox_value(AT_DSTRONG, i, HG_KNOCKBACK_SCALING, 0);
    set_hitbox_value(AT_DSTRONG, i, HG_BASE_HITPAUSE, 3);
    set_hitbox_value(AT_DSTRONG, i, HG_HITPAUSE_SCALING, 0.5);
    //set_hitbox_value(AT_DSTRONG, i, HG_VISUAL_EFFECT, 13);
    //set_hitbox_value(AT_DSTRONG, i, HG_VISUAL_EFFECT_X_OFFSET, 10);
    set_hitbox_value(AT_DSTRONG, i, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
    set_hitbox_value(AT_DSTRONG, i, HG_ANGLE_FLIPPER, 7);
    //set_hitbox_value(AT_DSTRONG, i, HG_HITSTUN_MULTIPLIER, 1.0);
}

// Final hit
set_hitbox_value(AT_DSTRONG, num_dstrong_hitboxes, HG_DAMAGE, 5);
set_hitbox_value(AT_DSTRONG, num_dstrong_hitboxes, HG_ANGLE, 50);
set_hitbox_value(AT_DSTRONG, num_dstrong_hitboxes, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSTRONG, num_dstrong_hitboxes, HG_KNOCKBACK_SCALING, 1.05);
set_hitbox_value(AT_DSTRONG, num_dstrong_hitboxes, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSTRONG, num_dstrong_hitboxes, HG_HITPAUSE_SCALING, 1.05);
//set_hitbox_value(AT_DSTRONG, num_dstrong_hitboxes, HG_VISUAL_EFFECT, 13);
//set_hitbox_value(AT_DSTRONG, num_dstrong_hitboxes, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, num_dstrong_hitboxes, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
//set_hitbox_value(AT_DSTRONG, num_dstrong_hitboxes, HG_ANGLE_FLIPPER, 6);
//set_hitbox_value(AT_DSTRONG, num_dstrong_hitboxes, HG_HITSTUN_MULTIPLIER, 1.0);







/*
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSTRONG,1);

set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 5);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 160);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 11);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 290);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 1.3);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 13);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_HITSTUN_MULTIPLIER, 1.0);
*/