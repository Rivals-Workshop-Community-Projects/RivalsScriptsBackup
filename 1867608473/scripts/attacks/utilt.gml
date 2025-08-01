make_attack(AT_UTILT,
    AG_SPRITE, sprite_get("utilt"),
    AG_NUM_WINDOWS, 5,
    AG_HURTBOX_SPRITE, sprite_get("utilt_hurt")
)

// Start-up
make_window(AT_UTILT, 1,
    AG_WINDOW_LENGTH, 6,
    AG_WINDOW_ANIM_FRAME_START, 0,
    AG_WINDOW_ANIM_FRAMES, 2,
    AG_WINDOW_HAS_SFX, 1,
    AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"),
    AG_WINDOW_SFX_FRAME, 3
)

// Active 1
make_window(AT_UTILT, 2,
    AG_WINDOW_LENGTH, 2,
    AG_WINDOW_ANIM_FRAME_START, 2,
    AG_WINDOW_ANIM_FRAMES, 1,
)

// Transition
make_window(AT_UTILT, 3,
    AG_WINDOW_LENGTH, 2,
    AG_WINDOW_ANIM_FRAME_START, 3,
    AG_WINDOW_ANIM_FRAMES, 2,
    AG_WINDOW_HAS_SFX, 1,
    AG_WINDOW_SFX, asset_get("sfx_swipe_weak1")
)

// Active 2
make_window(AT_UTILT, 4,
    AG_WINDOW_LENGTH, 2,
    AG_WINDOW_ANIM_FRAME_START, 5,
    AG_WINDOW_ANIM_FRAMES, 1
)

// Endlag
make_window(AT_UTILT, 5,
    AG_WINDOW_LENGTH, 12,
    AG_WINDOW_ANIM_FRAME_START, 6,
    AG_WINDOW_ANIM_FRAMES, 7,
    AG_WINDOW_HAS_WHIFFLAG, 1
)

set_num_hitboxes(AT_UTILT,2)

make_hitbox(AT_UTILT, 1,
    HG_HITBOX_TYPE, 1,
    HG_WINDOW, 2,
    HG_LIFETIME, 2,
    HG_HITBOX_X, 30,
    HG_HITBOX_Y, -51,
    HG_WIDTH, 51,
    HG_HEIGHT, 94,
    HG_SHAPE, 2,
    HG_PRIORITY, 2,
    HG_DAMAGE, 4,
    HG_ANGLE, 90,
    HG_ANGLE_FLIPPER, 4,
    HG_BASE_KNOCKBACK, 2,
    HG_KNOCKBACK_SCALING, .01,
    HG_BASE_HITPAUSE, 6,
    HG_HIT_SFX, asset_get("sfx_blow_weak1"),
    HG_HITSTUN_MULTIPLIER, 1.2,
    HG_SDI_MULTIPLIER, .5,
    HG_HITBOX_GROUP, 1
)

make_hitbox(AT_UTILT, 2,
    HG_HITBOX_TYPE, 1,
    HG_WINDOW, 4,
    HG_LIFETIME, 2,
    HG_HITBOX_X, 30,
    HG_HITBOX_Y, -62,
    HG_WIDTH, 55,
    HG_HEIGHT, 82,
    HG_SHAPE, 2,
    HG_PRIORITY, 2,
    HG_DAMAGE, 4,
    HG_ANGLE, 85,
    HG_BASE_KNOCKBACK, 8,
    HG_KNOCKBACK_SCALING, .5,
    HG_BASE_HITPAUSE, 7,
    HG_HITPAUSE_SCALING, .35,
    HG_HIT_SFX, asset_get("sfx_blow_medium3"),
    HG_HITBOX_GROUP, 2
)

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