make_attack(AT_UAIR,
    AG_CATEGORY, 1,
    AG_SPRITE, sprite_get("uair"),
    AG_NUM_WINDOWS, 4,
    AG_HAS_LANDING_LAG, 1,
    AG_LANDING_LAG, 6,
    AG_HURTBOX_SPRITE, sprite_get("uair_hurt")
)

make_window(AT_UAIR, 1,
    AG_WINDOW_LENGTH, 8,
    AG_WINDOW_ANIM_FRAME_START, 0,
    AG_WINDOW_ANIM_FRAMES, 2,
    AG_WINDOW_HAS_SFX, 1,
    AG_WINDOW_SFX, sfx_swipe_left,
    AG_WINDOW_SFX_FRAME, 6
)

make_window(AT_UAIR, 2,
    AG_WINDOW_LENGTH, 2,
    AG_WINDOW_ANIM_FRAME_START, 3,
    AG_WINDOW_ANIM_FRAMES, 1,
)

make_window(AT_UAIR, 3,
    AG_WINDOW_LENGTH, 10,
    AG_WINDOW_ANIM_FRAME_START, 4,
    AG_WINDOW_ANIM_FRAMES, 2
)

make_window(AT_UAIR, 4,
    AG_WINDOW_LENGTH, 12,
    AG_WINDOW_ANIM_FRAME_START, 5,
    AG_WINDOW_ANIM_FRAMES, 3,
    AG_WINDOW_HAS_WHIFFLAG, 1
)

set_num_hitboxes(AT_UAIR,2)

make_hitbox(AT_UAIR, 1,
    HG_HITBOX_TYPE, 1,
    HG_WINDOW, 2,
    HG_LIFETIME, 2,
    HG_HITBOX_X, 21,
    HG_HITBOX_Y, -54,
    HG_WIDTH, 68,
    HG_HEIGHT, 86,
    HG_SHAPE, 2,
    HG_PRIORITY, 1,
    HG_DAMAGE, 8,
    HG_ANGLE, 90,
    HG_BASE_KNOCKBACK, 9,
    HG_KNOCKBACK_SCALING, .7,
    HG_BASE_HITPAUSE, 8,
    HG_HITPAUSE_SCALING, .75,
    HG_VISUAL_EFFECT_Y_OFFSET, -16,
    HG_HIT_SFX, asset_get("sfx_blow_heavy1"),
    HG_ANGLE_FLIPPER, 6
)

make_hitbox(AT_UAIR, 2,
    HG_HITBOX_TYPE, 1,
    HG_WINDOW, 3,
    HG_LIFETIME, 10,
    HG_HITBOX_X, 21,
    HG_HITBOX_Y, -73,
    HG_WIDTH, 66,
    HG_HEIGHT, 34,
    HG_SHAPE, 2,
    HG_PRIORITY, 1,
    HG_DAMAGE, 5,
    HG_ANGLE, 90,
    HG_BASE_KNOCKBACK, 7,
    HG_KNOCKBACK_SCALING, .65,
    HG_BASE_HITPAUSE, 7,
    HG_HITPAUSE_SCALING, .4,
    HG_VISUAL_EFFECT_Y_OFFSET, -16,
    HG_HIT_SFX, asset_get("sfx_blow_medium2"),
    HG_ANGLE_FLIPPER, 6
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