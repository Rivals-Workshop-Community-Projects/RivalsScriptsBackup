set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 8);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

// Startup
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
//set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HSPEED, 0);
//set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.6);

//Spin
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, true);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.3);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_GOTO, 5);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0);

//Transition
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.6);

// Attack
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_hod_nspecial"));
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 0);

// Endlag
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 17);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_GOTO, 12);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, 0.6);

// Endlag (Dizzy)
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 17);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_HAS_SFX, true);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_SFX, asset_get("sfx_dizzy"));
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_SFX_FRAME, 16);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_CUSTOM_GRAVITY, 0.6);

// Dizzy
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_TYPE, 9);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_CUSTOM_GRAVITY, 0.6);

// Dizzy End
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_CUSTOM_GRAVITY, 0.6);

set_num_hitboxes(AT_DSPECIAL, 2);

#region // Multihit
make_hitbox(AT_DSPECIAL, 1,
    HG_PARENT_HITBOX, 1,
    HG_HITBOX_TYPE, 2,
    HG_WINDOW, 9,
    HG_LIFETIME, 10,
    HG_HITBOX_X, 0,
    HG_HITBOX_Y, 0,
    HG_WIDTH, 65,
    HG_HEIGHT, 65,
    HG_PRIORITY, 3,
    HG_DAMAGE, 1,
    HG_ANGLE, 75,
    HG_ANGLE_FLIPPER, 9,
    HG_BASE_KNOCKBACK, 4,
    HG_KNOCKBACK_SCALING, 0,
    HG_BASE_HITPAUSE, 2,
    HG_HITPAUSE_SCALING, 0,
    HG_EXTRA_HITPAUSE, 2,
    HG_HITSTUN_MULTIPLIER, 1.5,
    HG_VISUAL_EFFECT, hfx_waves_small,
    HG_HIT_PARTICLE_NUM, 2,
    HG_HIT_SFX, asset_get("sfx_waterhit_weak"),
    HG_PROJECTILE_SPRITE, asset_get("empty_sprite"),
    HG_PROJECTILE_MASK, -1,
    HG_PROJECTILE_IS_TRANSCENDENT, 1,
    HG_PROJECTILE_ENEMY_BEHAVIOR, 1,
    HG_PROJECTILE_UNBASHABLE, true,
    HG_PROJECTILE_PLASMA_SAFE, true,
    HG_PROJECTILE_WALL_BEHAVIOR, 1,
    HG_PROJECTILE_GROUND_BEHAVIOR, 1,
)
#endregion

#region // Final Hit
make_hitbox(AT_DSPECIAL, 2,
    HG_PARENT_HITBOX, 2,
    HG_HITBOX_TYPE, 2,
    HG_WINDOW, 9,
    HG_LIFETIME, 2,
    HG_HITBOX_X, 0,
    HG_HITBOX_Y, 0,
    HG_WIDTH, 65,
    HG_HEIGHT, 65,
    HG_PRIORITY, 3,
    HG_DAMAGE, 2,
    HG_ANGLE, 90,
    HG_ANGLE_FLIPPER, 6,
    HG_BASE_KNOCKBACK, 10,
    HG_KNOCKBACK_SCALING, 0,
    HG_BASE_HITPAUSE, 6,
    HG_HITPAUSE_SCALING, .6,
    HG_HITSTUN_MULTIPLIER, 1,
    HG_VISUAL_EFFECT, hfx_waves_small,
    HG_HIT_PARTICLE_NUM, 2,
    HG_HIT_SFX, asset_get("sfx_waterhit_heavy"),
    HG_PROJECTILE_SPRITE, asset_get("empty_sprite"),
    HG_PROJECTILE_MASK, -1,
    HG_PROJECTILE_IS_TRANSCENDENT, 1,
    HG_PROJECTILE_ENEMY_BEHAVIOR, 1,
    HG_PROJECTILE_UNBASHABLE, true,
    HG_PROJECTILE_PLASMA_SAFE, true,
    HG_PROJECTILE_WALL_BEHAVIOR, 1,
    HG_PROJECTILE_GROUND_BEHAVIOR, 1,
)
#endregion

#region// DSPECIAL 2
set_attack_value(AT_DSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get("dspecial2"));
set_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS, 6);
set_attack_value(AT_DSPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL_2, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_DSPECIAL_2, AG_AIR_SPRITE, sprite_get("dspecial2"));
set_attack_value(AT_DSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("dspecial2_hurt"));

// Startup
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
//set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HSPEED, 0);
//set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.6);

//Spin
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, true);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.3);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_GOTO, 5);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.3);

// Endlag
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_LENGTH, 17);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_GOTO, 12);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.6);

// Endlag (Dizzy)
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_LENGTH, 17);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_HAS_SFX, true);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_SFX, asset_get("sfx_dizzy"));
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_SFX_FRAME, 16);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.6);

// Dizzy
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_TYPE, 9);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_CUSTOM_GRAVITY, 0.6);

// Dizzy End
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_CUSTOM_GRAVITY, 0.6);

set_num_hitboxes(AT_DSPECIAL_2, 2);

#region // 1 Stack
make_hitbox(AT_DSPECIAL_2, 1,
    HG_PARENT_HITBOX, 1,
    HG_HITBOX_TYPE, 2,
    HG_WINDOW, 7,
    HG_LIFETIME, 5,
    HG_HITBOX_X, 0,
    HG_HITBOX_Y, 0,
    HG_WIDTH, 65,
    HG_HEIGHT, 65,
    HG_PRIORITY, 3,
    HG_DAMAGE, 1,
    HG_ANGLE, 90,
    HG_ANGLE_FLIPPER, 7,
    HG_EFFECT, 9,
    HG_BASE_KNOCKBACK, 6,
    HG_KNOCKBACK_SCALING, 0.3,
    HG_BASE_HITPAUSE, 2,
    HG_HITPAUSE_SCALING, 0,
    HG_EXTRA_HITPAUSE, 4,
    HG_HITSTUN_MULTIPLIER, 1,
    HG_HIT_SFX, asset_get("sfx_waterhit_weak"),
    HG_VISUAL_EFFECT, vfx_riptide_ni,
    HG_HIT_PARTICLE_NUM, 2,
    HG_PROJECTILE_SPRITE, asset_get("empty_sprite"),
    HG_PROJECTILE_MASK, -1,
    HG_PROJECTILE_IS_TRANSCENDENT, 1,
    HG_PROJECTILE_ENEMY_BEHAVIOR, 1,
    HG_PROJECTILE_UNBASHABLE, true,
    HG_PROJECTILE_PLASMA_SAFE, true,
    HG_PROJECTILE_WALL_BEHAVIOR, 1,
    HG_PROJECTILE_GROUND_BEHAVIOR, 1,
    HG_EXTENDED_PARRY_STUN, true
)
#endregion

#region // 2 Stack
make_hitbox(AT_DSPECIAL_2, 2,
    HG_PARENT_HITBOX, 2,
    HG_HITBOX_TYPE, 2,
    HG_WINDOW, 7,
    HG_LIFETIME, 5,
    HG_HITBOX_X, 0,
    HG_HITBOX_Y, 0,
    HG_WIDTH, 65,
    HG_HEIGHT, 65,
    HG_PRIORITY, 3,
    HG_DAMAGE, 1,
    HG_ANGLE, 45,
    HG_ANGLE_FLIPPER, 2,
    HG_EFFECT, 9,
    HG_BASE_KNOCKBACK, 6,
    HG_KNOCKBACK_SCALING, 0.3,
    HG_BASE_HITPAUSE, 2,
    HG_HITPAUSE_SCALING, 0,
    HG_EXTRA_HITPAUSE, 4,
    HG_HITSTUN_MULTIPLIER, .75,
    HG_VISUAL_EFFECT, vfx_riptide_ichi,
    HG_HIT_PARTICLE_NUM, 2,
    HG_HIT_SFX, asset_get("sfx_waterhit_weak"),
    HG_PROJECTILE_SPRITE, asset_get("empty_sprite"),
    HG_PROJECTILE_MASK, -1,
    HG_PROJECTILE_IS_TRANSCENDENT, 1,
    HG_PROJECTILE_ENEMY_BEHAVIOR, 1,
    HG_PROJECTILE_UNBASHABLE, true,
    HG_PROJECTILE_PLASMA_SAFE, true,
    HG_PROJECTILE_WALL_BEHAVIOR, 1,
    HG_PROJECTILE_GROUND_BEHAVIOR, 1,
    HG_EXTENDED_PARRY_STUN, true
)
#endregion

#region // Stacks Full
make_hitbox(AT_DSPECIAL_2, 3,
    HG_PARENT_HITBOX, 3,
    HG_HITBOX_TYPE, 2,
    HG_WINDOW, 7,
    HG_LIFETIME, 5,
    HG_HITBOX_X, 0,
    HG_HITBOX_Y, 0,
    HG_WIDTH, 65,
    HG_HEIGHT, 65,
    HG_PRIORITY, 3,
    HG_DAMAGE, 1,
    HG_ANGLE, 90,
    HG_ANGLE_FLIPPER, 2,
    HG_BASE_KNOCKBACK, 6,
    HG_KNOCKBACK_SCALING, 0.3,
    HG_BASE_HITPAUSE, 4,
    HG_HITPAUSE_SCALING, 0,
    HG_EXTRA_HITPAUSE, 2,
    HG_HITSTUN_MULTIPLIER, 1,
    HG_TECHABLE, 1,
    HG_VISUAL_EFFECT, vfx_riptide_ichi,
    HG_HIT_PARTICLE_NUM, 2,
    HG_HIT_SFX, asset_get("sfx_waterhit_weak"),
    HG_PROJECTILE_SPRITE, asset_get("empty_sprite"),
    HG_PROJECTILE_MASK, -1,
    HG_PROJECTILE_IS_TRANSCENDENT, 1,
    HG_PROJECTILE_ENEMY_BEHAVIOR, 1,
    HG_PROJECTILE_UNBASHABLE, true,
    HG_PROJECTILE_PLASMA_SAFE, true,
    HG_PROJECTILE_WALL_BEHAVIOR, 1,
    HG_PROJECTILE_GROUND_BEHAVIOR, 1,
    HG_EXTENDED_PARRY_STUN, true
)
#endregion

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define make_hitbox // Version 0
    // make_hitbox(_attack_name, _index, (value_name, value)... )
    // Sets hitbox values for the given hitbox.
    // e.g. make_hitbox(AT_BAIR, 1,
    //         HG_PARENT_HITBOX, 1,
    //         HG_HITBOX_TYPE, 1
    //     );
    var _attack_name = argument[0];
    var _index = argument[1];
    for(var i=2; i<=argument_count-1; i+=2) {
        set_hitbox_value(
            _attack_name, _index, argument[i], argument[i+1]
        )
    }
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion