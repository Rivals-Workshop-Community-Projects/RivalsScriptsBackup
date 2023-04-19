set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 5);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 2);

make_window(AT_NAIR, 1,
    AG_WINDOW_ANIM_FRAMES, 2,
    AG_WINDOW_LENGTH, 10,
    AG_WINDOW_HAS_SFX, true,
    AG_WINDOW_SFX_FRAME, 3,
    AG_WINDOW_SFX, asset_get("sfx_birdflap")
)
make_window(AT_NAIR, 2,
    AG_WINDOW_ANIM_FRAMES, 1,
    AG_WINDOW_ANIM_FRAME_START, 7,
    AG_WINDOW_LENGTH, 20
)


set_num_hitboxes(AT_NAIR, 2)

make_hitbox(AT_NAIR,1,
    HG_PRIORITY,3,
    HG_WINDOW,1,
    HG_HITBOX_GROUP,-1,
    HG_WINDOW_CREATION_FRAME,5,
    HG_LIFETIME, 5,
    HG_WIDTH, 80,
    HG_HEIGHT, 40,
    HG_HITBOX_X, 15,
    HG_HITBOX_Y, -20,
    HG_DAMAGE, 5,
    HG_BASE_HITPAUSE,10,
    HG_HITPAUSE_SCALING, 0.3,
    HG_EXTRA_HITPAUSE,15, // woo command grab be like
    HG_BASE_KNOCKBACK,0.01,
    HG_ANGLE_FLIPPER,9,
    HG_HIT_SFX, asset_get("sfx_blow_weak1"),
    HG_VISUAL_EFFECT, 29
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