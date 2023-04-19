set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 3);


make_window(AT_DAIR, 1,
    AG_WINDOW_LENGTH, 5,
    AG_WINDOW_ANIM_FRAMES, 1,
    AG_WINDOW_ANIM_FRAME_START, 0,
    AG_WINDOW_CUSTOM_AIR_FRICTION, 0.2,
    AG_WINDOW_HAS_CUSTOM_FRICTION, 1,
    AG_WINDOW_HAS_SFX, 1,
    AG_WINDOW_SFX_FRAME, 4,
    AG_WINDOW_SFX, asset_get("sfx_swipe_medium1")
)

make_window(AT_DAIR, 2,
    AG_WINDOW_LENGTH, 3,
    AG_WINDOW_ANIM_FRAMES, 1,
    AG_WINDOW_ANIM_FRAME_START, 1,
    //AG_WINDOW_VSPEED, 6,
    //AG_WINDOW_VSPEED_TYPE, 2,
    AG_WINDOW_CUSTOM_AIR_FRICTION, 0.4,
    AG_WINDOW_HAS_CUSTOM_FRICTION, 1
)

make_window(AT_DAIR, 3,
    AG_WINDOW_LENGTH, 6,
    AG_WINDOW_ANIM_FRAMES, 2,
    AG_WINDOW_ANIM_FRAME_START, 2,
    AG_WINDOW_HAS_WHIFFLAG, 1
)


set_num_hitboxes(AT_DAIR, 1);

make_hitbox(AT_DAIR, 1,
    HG_HITBOX_GROUP, 1,
    HG_PRIORITY, 6,
    HG_DAMAGE, 6,
    HG_ANGLE, 361,
    HG_HIT_SFX, asset_get("sfx_blow_medium2"),
    HG_HITBOX_X, -12,
    HG_HITBOX_Y, -8,
    HG_WIDTH, 32,
    HG_HEIGHT, 100,
    HG_BASE_HITPAUSE, 10,
    HG_HITPAUSE_SCALING, 0.1,
    HG_BASE_KNOCKBACK, 6,
    HG_KNOCKBACK_SCALING, 0.6,
    HG_WINDOW, 2,
    HG_WINDOW_CREATION_FRAME, 0,
    HG_DRIFT_MULTIPLIER, 1.5,
    HG_LIFETIME, 3
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