make_attack(
    AT_EXTRA_2,
    AG_CATEGORY, 0,
    AG_NUM_WINDOWS, 1,
    AG_SPRITE, sprite_get("jab"),
    AG_HURTBOX_SPRITE, sprite_get("jab_hurt"),
    AG_AIR_SPRITE, sprite_get("jab"),
    AG_HURTBOX_AIR_SPRITE, sprite_get("jab_hurt")
);


make_window(
    AT_EXTRA_2, 1,
    AG_WINDOW_LENGTH, 12,
    AG_WINDOW_ANIM_FRAMES, 2,
    AG_WINDOW_ANIM_FRAME_START, 3,
    AG_WINDOW_HAS_SFX, true,
    AG_WINDOW_SFX, asset_get("sfx_land_heavy"),
    AG_WINDOW_SFX_FRAME, 1
);

set_num_hitboxes(AT_EXTRA_2, 1);

make_hitbox(
    AT_EXTRA_2, 1,
    HG_WINDOW, 1,
    HG_WINDOW_CREATION_FRAME, 1,
    HG_LIFETIME, 3,
    HG_PRIORITY, 3,
    HG_ANGLE, 70,
    HG_BASE_HITPAUSE, 5,
    HG_HITBOX_X, 0,
    HG_HITBOX_Y, -20,
    HG_HEIGHT, 40,
    HG_WIDTH, 120,
    HG_ANGLE_FLIPPER, 6,
    HG_BASE_KNOCKBACK, 7,
    HG_KNOCKBACK_SCALING, 0.01,
    HG_DRIFT_MULTIPLIER, 2, // yes, this is really high. yes, it is because this move is a command grab which fixes the recipient's position
    HG_DAMAGE, 3,
    HG_SHAPE, 1,
    HG_HIT_SFX, asset_get("sfx_blow_medium2")
);

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