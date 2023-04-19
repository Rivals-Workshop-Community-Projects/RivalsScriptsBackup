set_attack_value(AT_EXTRA_1, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_EXTRA_1, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_EXTRA_1, AG_LANDING_LAG, 8);
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 3);
// set_attack_value(AT_EXTRA_1, AG_USES_CUSTOM_GRAVITY, 1)

make_window(AT_EXTRA_1, 1,
    AG_WINDOW_ANIM_FRAMES, 3,
    AG_WINDOW_ANIM_FRAME_START, 2,
    AG_WINDOW_LENGTH, 10,
    AG_WINDOW_HAS_SFX, 1,
    AG_WINDOW_SFX,  asset_get("sfx_burnend"),
    AG_WINDOW_SFX_FRAME,1
)
make_window(AT_EXTRA_1, 2,
    AG_WINDOW_ANIM_FRAMES, 2,
    AG_WINDOW_ANIM_FRAME_START, 5,
    AG_WINDOW_LENGTH, 10
)

set_num_hitboxes(AT_EXTRA_1, 4);

// make_hitbox(AT_EXTRA_1, 1,
//     HG_HITBOX_GROUP, -1,
//     HG_PRIORITY, 1,
//     HG_DAMAGE, 1,
//     HG_BASE_HITPAUSE,5,
//     HG_SDI_MULTIPLIER, 0.0,
//     HG_DRIFT_MULTIPLIER, 0.0,
//     HG_HEIGHT, 64,
//     HG_WIDTH, 70,
//     HG_HITBOX_X, 8,
//     HG_HITBOX_Y, -28,
//     HG_BASE_KNOCKBACK, 3,
//     HG_LIFETIME, 1,
//     HG_WINDOW, 1,
//     HG_WINDOW_CREATION_FRAME,2,
//     HG_ANGLE_FLIPPER,9
// )

// make_hitbox(AT_EXTRA_1, 2,
//     HG_PARENT_HITBOX, 1,
//     HG_HITBOX_GROUP, -1,
//     HG_PRIORITY, 1,
//     HG_HITBOX_X, 8,
//     HG_HITBOX_Y, -28,
//     HG_LIFETIME, 1,
//     HG_WINDOW, 1,
//     HG_WINDOW_CREATION_FRAME, 4
// )

// make_hitbox(AT_EXTRA_1, 3,
//     HG_PARENT_HITBOX, 1,
//     HG_HITBOX_GROUP, -1,
//     HG_PRIORITY, 1,
//     HG_HITBOX_X, 8,
//     HG_HITBOX_Y, -28,
//     HG_LIFETIME, 1,
//     HG_WINDOW, 1,
//     HG_WINDOW_CREATION_FRAME, 6
// )
make_hitbox(AT_EXTRA_1, 4,
    HG_HITBOX_GROUP, -1,
    HG_PRIORITY, 2,
    HG_DAMAGE, 4,
    HG_BASE_HITPAUSE,5,
    HG_HITPAUSE_SCALING,0.1,
    HG_HEIGHT, 60,
    HG_WIDTH, 120,
    HG_HITBOX_X, 0,
    HG_HITBOX_Y, -30,
    HG_BASE_KNOCKBACK, 10,
    HG_KNOCKBACK_SCALING, 0.01,
    HG_LIFETIME, 1,
    HG_WINDOW, 1,
    HG_WINDOW_CREATION_FRAME,7,
    HG_DRIFT_MULTIPLIER, 2, // yes, this is really high. yes, it is because this move is a command grab which fixes the recipient's position
    HG_ANGLE,45,
    HG_HIT_SFX, asset_get("sfx_blow_medium3")
)

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
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