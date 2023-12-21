make_attack(AT_FSPECIAL,
    AG_CATEGORY, 2,
    AG_SPRITE, sprite_get("fspecial"),
    AG_NUM_WINDOWS, 6,
    AG_AIR_SPRITE, sprite_get("fspecial"),
    AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt")
)

// Start-Up
make_window(AT_FSPECIAL, 1,
    AG_WINDOW_TYPE, 1,
    AG_WINDOW_LENGTH, 16,
    AG_WINDOW_ANIM_FRAMES, 3,
    AG_WINDOW_HAS_SFX, 1,
    AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"),
    AG_WINDOW_SFX_FRAME, 15
)

// Leap
make_window(AT_FSPECIAL, 2,
    AG_WINDOW_TYPE, 1,
    AG_WINDOW_LENGTH, 3,
    AG_WINDOW_ANIM_FRAMES, 1,
    AG_WINDOW_ANIM_FRAME_START, 3
)

// Endlag
make_window(AT_FSPECIAL, 3,
    AG_WINDOW_TYPE, 1,
    AG_WINDOW_LENGTH, 8,
    AG_WINDOW_ANIM_FRAMES, 3,
    AG_WINDOW_ANIM_FRAME_START, 4
)

// Falling
make_window(AT_FSPECIAL, 4,
    AG_WINDOW_TYPE, 9,
    AG_WINDOW_LENGTH, 600,
    AG_WINDOW_ANIM_FRAMES, 2,
    AG_WINDOW_ANIM_FRAME_START, 7
)

// Riding Wave
make_window(AT_FSPECIAL, 5,
    AG_WINDOW_TYPE, 9,
    AG_WINDOW_LENGTH, 16,
    AG_WINDOW_ANIM_FRAMES, 4,
    AG_WINDOW_ANIM_FRAME_START, 9
)

// Dismounting Wave
make_window(AT_FSPECIAL, 6,
    AG_WINDOW_TYPE, 1,
    AG_WINDOW_LENGTH, 8,
    AG_WINDOW_HSPEED, 5,
    AG_WINDOW_HSPEED_TYPE, 2,
    AG_WINDOW_VSPEED, -2,
    AG_WINDOW_VSPEED_TYPE, 2,
    AG_WINDOW_ANIM_FRAMES, 3,
    AG_WINDOW_ANIM_FRAME_START, 14
)

set_num_hitboxes(AT_FSPECIAL, 3);

// First Hit
make_hitbox(AT_FSPECIAL, 1,
    HG_HITBOX_TYPE, 1,
    HG_WINDOW, 2,
    HG_LIFETIME, 3,
    HG_HITBOX_X, 29,
    HG_HITBOX_Y, -14,
    HG_WIDTH, 75,
    HG_HEIGHT, 60,
    HG_PRIORITY, 2,
    HG_DAMAGE, 8,
    HG_ANGLE, 60,
    HG_BASE_KNOCKBACK, 7,
    HG_KNOCKBACK_SCALING, .5,
    HG_BASE_HITPAUSE, 9,
    HG_HITPAUSE_SCALING, 0.6,
    HG_HIT_SFX, asset_get("sfx_blow_medium3")
)

// Falling Hit
make_hitbox(AT_FSPECIAL, 2,
    HG_HITBOX_TYPE, 1,
    HG_WINDOW, 4,
    HG_LIFETIME, 600,
    HG_HITBOX_X, 18,
    HG_HITBOX_Y, -18,
    HG_WIDTH, 58,
    HG_HEIGHT, 37,
    HG_PRIORITY, 2,
    HG_DAMAGE, 4,
    HG_ANGLE, 60,
    HG_BASE_KNOCKBACK, 6,
    HG_KNOCKBACK_SCALING, .3,
    HG_BASE_HITPAUSE, 7,
    HG_HITPAUSE_SCALING, 0.4,
    HG_HIT_SFX, asset_get("sfx_blow_weak2")
)


#region // Riding
make_hitbox(AT_FSPECIAL, 3,
    HG_PARENT_HITBOX, 3,
    HG_HITBOX_TYPE, 2,
    HG_WINDOW, 20,
    HG_LIFETIME, 75,
    HG_HITBOX_X, 0,
    HG_HITBOX_Y, 0,
    HG_WIDTH, 65,
    HG_HEIGHT, 65,
    HG_PRIORITY, 3,
    HG_DAMAGE, 4,
    HG_ANGLE, 55,
    HG_ANGLE_FLIPPER, 5,
    HG_BASE_KNOCKBACK, 9,
    HG_KNOCKBACK_SCALING, 0.3,
    HG_BASE_HITPAUSE, 5,
    HG_HITPAUSE_SCALING, 0.1,
    HG_HITSTUN_MULTIPLIER, .75,
    HG_VISUAL_EFFECT, hfx_waves_small,
    HG_HIT_PARTICLE_NUM, 2,
    HG_SDI_MULTIPLIER, 0,
    HG_HIT_SFX, asset_get("sfx_waterhit_medium"),
    HG_PROJECTILE_SPRITE, asset_get("empty_sprite"),
    HG_PROJECTILE_MASK, -1,
    HG_PROJECTILE_IS_TRANSCENDENT, 1,
    HG_PROJECTILE_ENEMY_BEHAVIOR, 1,
    HG_PROJECTILE_UNBASHABLE, true,
    HG_PROJECTILE_PLASMA_SAFE, true,
    HG_PROJECTILE_WALL_BEHAVIOR, 1,
    HG_PROJECTILE_GROUND_BEHAVIOR, 1
)
#endregion

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define make_attack // Version 0
    // make_attack(_attack_name, (value_name, value)... )
    // Sets attack values for the given attack.
    // e.g. make_attack(AT_BAIR,
    //     AG_CATEGORY, 1,
    //     AG_SPRITE, sprite_get("bair")
    // )
    var _attack_name = argument[0]
    for(var i=1; i<=argument_count-1; i+=2) {
        set_attack_value(
            _attack_name, argument[i], argument[i+1]
        )
    }

#define make_window // Version 0
    // make_window(_attack_name, _index, (value_name, value)... )
    // Sets window values for the given window.
    // e.g.make_window(AT_BAIR, 1,
    //         AG_WINDOW_TYPE, 1,
    //         AG_WINDOW_LENGTH, 6
    //     )
    var _attack_name = argument[0];
    var _index = argument[1];
    for(var i=2; i<=argument_count-1; i+=2) {
        set_window_value(
            _attack_name, _index, argument[i], argument[i+1]
        )
    }

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